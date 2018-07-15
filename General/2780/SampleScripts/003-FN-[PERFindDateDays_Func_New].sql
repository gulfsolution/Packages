
DROP Function [dbo].[PERFindDateDays_Func_New]
GO
/****** Object:  UserDefinedFunction [dbo].[PERFindDateDays_Func_New]    Script Date: 5/13/2018 7:11:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--Select dbo.PERFindDateDays_Func  ('15-Nov-2005', '30-Nov-2005','NoWeekEnd')
CREATE Function [dbo].[PERFindDateDays_Func_New] 
(
@StartDate DateTime, 
@EndDate datetime, 
@Calendar nvarchar(50),
@Interval int,
@Absence nvarchar(100),
@Entity int,
@RT int 
)
RETURNS Int
AS
BEGIN

Declare @DaysCount Int,
@Date datetime,
@DayType nvarchar(50),
@TotalDays int,
@Finish int

SET @DaysCount = 0
SET @TotalDays = 0
set @Finish = 0

select @Totaldays = count([Date])
FROM [GP SRC Calendar Detail]
WHERE [date] >= @StartDate
AND [Date] <= @Enddate
AND [Day Type] = 'Normal'
AND [Calendar] = (Select [Use Calendar Detail] 
				From [CO LVE Absence Transaction Rules] 
				Where Entity = @Entity 
				and [Absence Transaction] = @Absence 
				And [Leave Scheme] = (Select [Leave Scheme] 
									From [CO SRC Job Table] 
									Where Employee = @RT 
									And Interval = @Interval))


--print @TotalDays
Return(@TotalDays)

END
