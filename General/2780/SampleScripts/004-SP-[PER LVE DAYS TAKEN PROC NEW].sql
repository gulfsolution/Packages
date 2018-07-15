/****** Object:  StoredProcedure [dbo].[PER LVE DAYS TAKEN PROC NEW]    Script Date: 5/13/2018 7:09:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--[PER LVE DAYS TAKEN PROC NEW] 643,2006102230,'ANNUAL LEAVE','Teacher & Manage','LEAVE 01'
ALTER Proc [dbo].[PER LVE DAYS TAKEN PROC NEW]
@RT int,
@Period int,
@Absence nvarchar(100),
@LeaveScheme nvarchar(50),
@LeaveType nvarchar(50),
@Status nvarchar(50) = null

AS

SET NOCOUNT ON
--Finding the Related Intervals And Absence Schedules
DECLARE	@Entity Int
DECLARE @LeaveCalc numeric(18,2)
DECLARE @LeaveTemp numeric(18,2)

DECLARE @Unpaid nvarchar(100)

SELECT @Entity = [Entity]
FROM [PER HRA Personal]
WHERE [Employee] = @RT

SELECT @Unpaid = [Use Calendar Detail]
FROM [CO LVE Absence Transaction Rules]
where [entity] = @Entity
and [Absence Transaction] = 'Unpaid Leave'

-- print '**Unpaid**'
-- print @unpaid

Print 'Taken Proc'
Print @LeaveScheme
Print @Period
Print @Absence
Print @LeaveType
Print @Entity
PRINT 'Status value'
Print @Status

--Finding the leave elements and Find calendar Detail for each.
SELECT distinct
IDENTITY(Int,1,1) as [ID],
C.[Leave Type], 
A.Element, 
B.Criteria,
B.[Use Calendar Detail], 
0 as Active
INTO #LeaveElements
FROM [CO LVE Leave Schemes] A
INNER JOIN [CO LVE Absence Transaction Rules] B
ON A.[Element] = B.[Absence Transaction]
INNER JOIN [CO LVE Leave Type] C
ON C.[Leave Element] = B.[Absence Transaction]

INNER JOIN [CO LVE Leave Schemes Master] D
ON A.[Leave Scheme Master] = D.[Leave Scheme Master]
AND C.Company = D.Entity

WHERE A.[Leave Scheme] = @LeaveScheme
AND C.[Leave Element] = @Absence
AND B.Entity = @Entity
AND C.Company = @Entity
ORDER BY C.[Leave Type], A.Element

--select * from #leaveElements

DECLARE LeaveElementsCursor CURSOR READ_ONLY FOR 
SELECT  [ID],[Leave Type], Element,
	Criteria, [Use Calendar Detail]
	FROM #LeaveElements

DECLARE @LVE_ID Int, @LVE_LeaveType nvarchar(50), 
	@LVE_Element nvarchar(50), @LVE_Criteria nvarchar(255),
	@LVE_CalendarDetail nvarchar(50), @Validate int

OPEN LeaveElementsCursor
FETCH NEXT FROM LeaveElementsCursor INTO 
	@LVE_ID, @LVE_LeaveType, @LVE_Element, @LVE_Criteria, @LVE_CalendarDetail

WHILE (@@Fetch_Status <> -1)
BEGIN
	--Exec @Validate = [LVE Validate Criteria Proc New] @RT, @Period,  @LVE_Criteria
	PRINT 'Leave validate...'
	PRINT @LVE_Criteria
	Exec @Validate = [LVE Validate Criteria Proc] @RT, @LVE_Criteria
	PRINT @Validate
	IF @Validate = 1
	BEGIN
		UPDATE #LeaveElements SET Active = 1 WHERE [ID] = @LVE_ID
		BREAK
	END
	FETCH NEXT FROM LeaveElementsCursor INTO @LVE_ID, @LVE_LeaveType, @LVE_Element, @LVE_Criteria, @LVE_CalendarDetail
END

CLOSE LeaveElementsCursor
DEALLOCATE LeaveElementsCursor
-------------------------------------------------------------
DECLARE @BackCalc float, @TotalCalc float
DECLARE @CalculatedDays int, @RealNumberofDays int

--select * from #leaveElements

--Update #leaveElements
--Set Active = 0
----Where Criteria = '[Leave Scheme] = ''Staff'''

--Update #leaveElements
--Set Active = 1
--Where Criteria = '[Leave Scheme] = ''Staff'''

--select * from #leaveElements

IF @Status is null
BEGIN
	IF @Period is not null
	BEGIN
		DELETE A FROM [PER LVE BACKDATE TRANS] A
		WHERE A.[Calc Period] = @Period
		AND A.[Absence Transaction] = @Absence
		AND A.Employee = @RT
	
		SELECT 
		A.Interval,
		A.[Request Number],
		SUM(isNull(A.Value,0)) as Taken,
		SUM(isNull(A.[Unpaid Value],0)) as UnpaidTaken	
		INTO #CalculatedTaken
		FROM 
		[PER LVE BACKDATE TRANS] A
		WHERE 
	--	A.[Calc Period] <= @Period
		A.[Interval] <= @Period
		AND A.[Absence Transaction] = @Absence
		AND A.Employee = @RT	
		--AND A.[Calc Period] > 2017102231	
		GROUP BY A.Interval, A.[Request Number]
		
	  
		--SELECT dbo.PERFindDateDays_Func('12/27/2005','12/31/2005','MONTHLY')
		SELECT 
		B.Interval,
		C.[Request Number],
		CASE WHEN C.[Start Date] < B.[Start Date] THEN B.[Start Date] ELSE C.[Start Date] END as [Start Date],
		CASE WHEN C.[End Date] > B.[End Date] THEN B.[End Date] ELSE C.[End Date] END as [End date],
		[Half Days] as [Half days],
		Convert(float,SUM(IsNull(dbo.PERFindDateDays_Func_New
					(
					CASE WHEN C.[Start Date] < B.[Start Date] THEN B.[Start Date] ELSE C.[Start Date] END,
					CASE WHEN C.[End Date] > B.[End Date] THEN B.[End Date] ELSE C.[End Date] END,
					IsNull(D.[Use Calendar Detail],'NOWEEKEND'),B.Interval,@Absence,@Entity,@RT),0))) /
			CASE WHEN C.[Half Days] = 'Yes' THEN 2 ELSE 1 END as Taken,
		0 as unpaidtaken
		INTO #RealTaken
		FROM [CO HRA Intervals] B
		
		INNER JOIN [PER LVE Absence Schedule] C
		ON 
		(
		C.[Start Date] Between B.[Start Date] AND B.[End Date]
		OR C.[End Date] Between B.[Start Date] AND B.[End Date]
		OR (C.[Start Date] < B.[Start Date] AND C.[End Date] > B.[End Date])
		)
		LEFT JOIN #LeaveElements D
		ON C.[Absence Code] = D.[Element]
		AND D.Active = 1		
		WHERE
		C.Employee = @RT
		AND C.[Absence Code] = @Absence
		AND B.[Type] = 'Normal'
		AND B.Interval <= @Period
	
		GROUP BY B.Interval,C.[Request Number],C.[Half Days], CASE WHEN C.[Start Date] < B.[Start Date] THEN B.[Start Date] ELSE C.[Start Date] END,
		CASE WHEN C.[End Date] > B.[End Date] THEN B.[End Date] ELSE C.[End Date] END

		--Select * From #RealTaken

		update #realtaken
		set [unpaidtaken] = Convert(float,IsNull(dbo.PERFindDateDays_Func
					(
					[Start Date],
					[End Date],
					@Unpaid),0))/ CASE WHEN [Half Days] = 'Yes' THEN 2 ELSE 1 END 
		
--drop table #realtaken2
--select * from #realtaken
--select * from #CalculatedTaken

		Select [Interval], sum([taken]) as [taken], sum([unpaidtaken]) as [unpaidtaken], [Request number]
		into #RealTaken3
		from #realtaken
		group by [interval], [request number]

		-- waqas start
	--	DEClare @REALTaken int,
	--	@CalTaken int
	--select @REALTaken = Taken From #RealTaken3 
	--select @CalTaken = Taken From #CalculatedTaken
	--Print convert(nvarchar(50),@REALTaken)+ ' Real'
	--Print convert(nvarchar(50),@CalTaken)+ ' Calc'
	-- waqas End
		INSERT INTO [PER LVE Backdate Trans]
		([Employee], [Interval], [Calc Period], [Absence Transaction], [Value], [unpaid value], [Request Number])
	
		SELECT
		@RT,
		A.Interval,
		@Period,
		@Absence,
		IsNull(A.Taken,0) - IsNull(B.Taken,0),
		IsNull(A.UnpaidTaken,0) - IsNull(B.UnpaidTaken,0),
		A.[Request number]		
		FROM #RealTaken3 A
		LEFT JOIN #CalculatedTaken B
		ON A.Interval = B.Interval
		AND A.[Request Number] = B.[Request Number]
		WHERE IsNull(A.Taken,0) - IsNull(B.Taken,0) <> 0
		 --This work for 1816 start
		 --and A.[Interval] > 2017102231
		 --This work for 1816 End
		 --This work for 2258 start
		--and A.[Interval] > Case When @RT not in(912,851) Then 2017102231 else 0 End
		--and A.[Interval] > 2018032231
		--and A.[Interval] > 2017112230
		 ----This work for 2258 end
	
		--Add code when whole month has been removed from leave transactions
		--Basie 16 April 2007
		INSERT INTO [PER LVE Backdate Trans]
		([Employee], [Interval], [Calc Period], [Absence Transaction], [Value], [unpaid value], [Request Number])
	
		SELECT
		@RT,
		A.Interval,
		@Period,
		@Absence,
		IsNull(B.Taken,0)- IsNull(A.Taken,0) ,
		IsNull(B.UnpaidTaken,0)- IsNull(A.UnpaidTaken,0) ,
		A.[Request number]		
		FROM #CalculatedTaken A
		LEFT JOIN #RealTaken B
		ON A.Interval = B.Interval
		AND A.[Request Number] = B.[Request Number]
		WHERE IsNull(A.Taken,0) - IsNull(B.Taken,0) <> 0
		AND NOT EXISTS(select [request number] FROM [PER LVE Backdate Trans] WHERE [PER LVE Backdate Trans].[Interval] = A.[Interval] 
		and [PER LVE Backdate Trans].[Calc period] = @Period
		and [PER LVE Backdate Trans].[Request Number] = A.[Request Number])
		--This work for 1816 start
		 --and A.[Interval] > 2017102231
		 --This work for 1816 End
		 --This work for 2258 start
		--and A.[Interval] > Case When @RT not in(912,851) Then 2017102231 else 0 End
		--and A.[Interval] > 2018032231
		--and A.[Interval] > 2017112230
		 ----This work for 2258 end
	
	END
	
	SELECT a.[request number],
	[Number of Days],
	sum([value]) as [value],
	sum([unpaid value]) as [unpaid value],
	a.[Employee]
	INTO #LeaveRejected
	from [PER LVE BackDate Trans] A
	INNER JOIN [PER LVE Absence Request] B
	ON A.[Request Number] = B.[request Number]
	where [status] = 'Rejected by HR'
	AND a.[Employee] = @RT
	AND a.[Absence Transaction] = @Absence
	group by a.[request number], [Number of days], a.[Employee]
	HAVING sum([value]) <> 0
	
	INSERT INTO [PER LVE Backdate Trans]
	([Employee], [Interval], [Calc Period], [Absence Transaction], [Value], [unpaid value], [Request Number])
	SELECT [employee], @Period, @Period, @Absence, -[Value],  - [unpaid value], [Request Number]
	FROM #LeaveRejected
	
	
	
	DELETE FROM [PER LVE BackDate Summary]
	WHERE [Employee] = @RT
	AND [Period ID] = @Period
	AND [Absence Transaction] = @Absence
	
	SELECT @BackCalc = sum([Value])
	FROM [PER LVE Backdate Trans]
	WHERE [Employee] = @RT
	AND IsNull([Interval],0) < @Period
	AND [Calc Period] = @Period
	AND [Absence Transaction] = @Absence
	--This work for 1816 start
		 --and A.[Interval] > 2017102231
		 --This work for 1816 End
		 --This work for 2258 start
		--and [Interval] > Case When @RT not in(912,851) Then 2017102231 else 0 End
		--and [Interval] > 2018032231
		--and [Interval] > 2017112230
		 ----This work for 2258 end
	
	SELECT @TotalCalc = sum([Value])
	FROM [PER LVE Backdate Trans]
	WHERE [Employee] = @RT
	AND [Interval] = @Period
	AND [Calc Period] = @Period
	AND [Absence Transaction] = @Absence
	
	IF isnull(@BackCalc,0)<>0 OR isnull(@TotalCalc,0)<>0
	
		INSERT INTO [PER LVE BackDate Summary]
		(
		[Employee],
		[Period ID],
		[Absence Transaction],
		[Before],
		[Current])
		VALUES
		(
		@RT,
		@Period,
		@Absence,
		isnull(@BackCalc,0),
		IsNull(@TotalCalc,0)
		)
END
ELSE
BEGIN
	IF @Period is not null
	BEGIN
		DELETE A FROM [PER LVE BACKDATE TRANS CALC] A
		WHERE A.[Calc Period] = @Period
		AND A.[Absence Transaction] = @Absence
		AND A.Employee = @RT
	

		
		SELECT 
		A.Interval,
		A.[Request Number],
		SUM(isNull(A.Value,0)) as Taken
		INTO #CalculatedTaken2
		FROM 
		[PER LVE BACKDATE TRANS CALC] A
		WHERE 
	--	A.[Calc Period] <= @Period
		A.[Interval] <= @Period
		AND A.[Absence Transaction] = @Absence
		AND A.Employee = @RT		
		GROUP BY A.Interval, A.[Request Number]
	
		--SELECT dbo.PERFindDateDays_Func('12/27/2005','12/31/2005','MONTHLY')
		SELECT 
		B.Interval,
		C.[Request Number],
		--Convert(float,SUM(IsNull(dbo.PERFindDateDays_Func
		--			(
		--			CASE WHEN C.[Start Date] < B.[Start Date] THEN B.[Start Date] ELSE C.[Start Date] END,
		--			CASE WHEN C.[End Date] > B.[End Date] THEN B.[End Date] ELSE C.[End Date] END,
		--			IsNull(D.[Use Calendar Detail],'NOWEEKEND')),0))) /
		--	CASE WHEN C.[Half Days] = 'Yes' THEN 2 ELSE 1 END as Taken
		Convert(float,SUM(IsNull(dbo.PERFindDateDays_Func_New
					(
					CASE WHEN C.[Start Date] < B.[Start Date] THEN B.[Start Date] ELSE C.[Start Date] END,
					CASE WHEN C.[End Date] > B.[End Date] THEN B.[End Date] ELSE C.[End Date] END,
					IsNull(D.[Use Calendar Detail],'NOWEEKEND'),B.Interval,@Absence,@Entity,@RT),0))) /
			CASE WHEN C.[Half Days] = 'Yes' THEN 2 ELSE 1 END as Taken
		INTO #RealTaken2
		FROM [CO HRA Intervals] B
		
		INNER JOIN [PER LVE Absence Schedule] C
		ON 
		(
		C.[Start Date] Between B.[Start Date] AND B.[End Date]
		OR C.[End Date] Between B.[Start Date] AND B.[End Date]
		OR (C.[Start Date] < B.[Start Date] AND C.[End Date] > B.[End Date])
		)
		LEFT JOIN #LeaveElements D
		ON C.[Absence Code] = D.[Element]
		AND D.Active = 1		
		WHERE
		C.Employee = @RT
		AND C.[Absence Code] = @Absence
		AND B.[Type] = 'Normal'
		AND B.Interval <= @Period
	
		GROUP BY B.Interval,C.[Request Number],C.[Half Days]
		
		
		INSERT INTO [PER LVE BACKDATE TRANS CALC]
		([Employee], [Interval], [Calc Period], [Absence Transaction], [Value], [Request Number])
	
		SELECT
		@RT,
		A.Interval,
		@Period,
		@Absence,
		IsNull(A.Taken,0) - IsNull(B.Taken,0),
		A.[Request number]		
		FROM #RealTaken2 A
		LEFT JOIN #CalculatedTaken2 B
		ON A.Interval = B.Interval
		AND A.[Request Number] = B.[Request Number]
		WHERE IsNull(A.Taken,0) - IsNull(B.Taken,0) <> 0
	--This work for 1816 start
		 --and A.[Interval] > 2017102231
		 --This work for 1816 End
		 --This work for 2258 start
		--and A.[Interval] > Case When @RT not in(912,851) Then 2017102231 else 0 End
		--and A.[Interval] > 2018032231
		--and A.[Interval] > 2017112230
		 ----This work for 2258 end
		--Add code when whole month has been removed from leave transactions
		--Basie 16 April 2007
		INSERT INTO [PER LVE BACKDATE TRANS CALC]
		([Employee], [Interval], [Calc Period], [Absence Transaction], [Value], [Request Number])
	
		SELECT
		@RT,
		A.Interval,
		@Period,
		@Absence,
		IsNull(B.Taken,0)- IsNull(A.Taken,0) ,
		A.[Request number]		
		FROM #CalculatedTaken2 A
		LEFT JOIN #RealTaken2 B
		ON A.Interval = B.Interval
		AND A.[Request Number] = B.[Request Number]
		WHERE IsNull(A.Taken,0) - IsNull(B.Taken,0) <> 0
		AND NOT EXISTS(select [request number] FROM [PER LVE BACKDATE TRANS CALC] WHERE [PER LVE BACKDATE TRANS CALC].[Interval] = A.[Interval] 
		and [PER LVE BACKDATE TRANS CALC].[Calc period] = @Period
		and [PER LVE BACKDATE TRANS CALC].[Request Number] = A.[Request Number])
	   --This work for 1816 start
		 --and A.[Interval] > 2017102231
		 --This work for 1816 End
		 --This work for 2258 start
		--and A.[Interval] > Case When @RT not in(912,851) Then 2017102231 else 0 End
		--and A.[Interval] > 2018032231
		--and A.[Interval] > 2017112230
		 ----This work for 2258 end
	END
	
	SELECT a.[request number],
	[Number of Days],
	sum([value]) as [value],
	a.[Employee]
	INTO #LeaveRejected2
	from [PER LVE BACKDATE TRANS CALC] A
	INNER JOIN [PER LVE Absence Request] B
	ON A.[Request Number] = B.[request Number]
	where [status] = 'Rejected by HR'
	AND a.[Employee] = @RT
	AND a.[Absence Transaction] = @Absence
	group by a.[request number], [Number of days], a.[Employee]
	HAVING sum([value]) <> 0
	
	INSERT INTO [PER LVE BACKDATE TRANS CALC]
	([Employee], [Interval], [Calc Period], [Absence Transaction], [Value], [Request Number])
	SELECT [employee], @Period, @Period, @Absence, -[Value], [Request Number]
	FROM #LeaveRejected2
	
	
	DELETE FROM [PER LVE BackDate Summary Calc]
	WHERE [Employee] = @RT
	AND [Period ID] = @Period
	AND [Absence Transaction] = @Absence
	
	SELECT @BackCalc = sum([Value])
	FROM [PER LVE BACKDATE TRANS CALC]
	WHERE [Employee] = @RT
	AND IsNull([Interval],0) < @Period
	AND [Calc Period] = @Period
	AND [Absence Transaction] = @Absence
	--This work for 1816 start
		 --and A.[Interval] > 2017102231
		 --This work for 1816 End
		 --This work for 2258 start
		--and [Interval] > Case When @RT not in(912,851) Then 2017102231 else 0 End
		--and [Interval] > 2018032231
		--and [Interval] > 2017112230
		 ----This work for 2258 end
	
	SELECT @TotalCalc = sum([Value])
	FROM [PER LVE BACKDATE TRANS CALC]
	WHERE [Employee] = @RT
	AND [Interval] = @Period
	AND [Calc Period] = @Period
	AND [Absence Transaction] = @Absence
	
	IF isnull(@BackCalc,0)<>0 OR isnull(@TotalCalc,0)<>0
	
		INSERT INTO [PER LVE BackDate Summary Calc]
		(
		[Employee],
		[Period ID],
		[Absence Transaction],
		[Before],
		[Current])
		VALUES
		(
		@RT,
		@Period,
		@Absence,
		isnull(@BackCalc,0),
		IsNull(@TotalCalc,0)
		)
END



--GO
--EXEC [PER LVE DAYS TAKEN PROC NEW] 878,2018012231,'ANNUAL LEAVE','Morocco','LEAVE 01'