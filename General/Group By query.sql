	-- DESKTOP-CRID1KP\SQLSERVER2014\HRLIVE
	
	DECLARE @AccountNumber nvarchar(50) = Null,
	@Interval int = 2017032231,
	@Entity int = 10000,
	@InterfaceRun nvarchar(100) = 'STANDARD'
	

	DECLARE @End datetime

	select @End = [End Date]
	FROM [CO HRA Intervals]
	WHERE [Interval] = @Interval

	SELECT [Account Number],
	[Object],
	[Department],
	SUBSTRING(A.[Cost Centre], 1, CHARINDEX('-',A.[Cost Centre]) - 1) As [Cost Centre Number] ,
	SUBSTRING(A.[Cost Centre], CHARINDEX('-',A.[Cost Centre]) + 1, LEN(A.[Cost Centre])) As [Cost Centre],
	CASE WHEN [Account Description] = 'Income Tax' THEN '' ELSE [Account Description] END As [Account Description],
	CASE WHEN [Object] = 'DEDUCTIONS' AND [Account Description] = 'Income Tax' THEN [Account Description] ELSE '' END As [Income Tax],
	--CASE WHEN [Object] = 'EXPENSE RECOVERY' THEN [Reference] END As [Reference],
	SUM(IsNull(Debit,0)) As [Debit],
	SUM(IsNull(Credit,0)) As [Credit],
	--CASE WHEN Debit = 0 THEN MIN(Credit) WHEN Credit = 0 THEN MIN(Debit) END As [Minimum],
	--CASE WHEN Debit = 0 THEN MAX(Credit) WHEN Credit = 0 THEN MAX(Debit) END As [Maximum],
	COUNT(*) As [Count]
	--IsNull(Debit,0) As [Debit],
	--IsNull(Credit,0) As [Credit]

	FROM
	[PER REM GL Interface History] A
	INNER JOIN
	[CO_SRC_SEARCH_VIEW_INTERVAL]  (@End) B
	ON A.[Employee] = B.[Employee]

	--WHERE
	--(1=(CASE WHEN @AccountNumber IS NULL THEN 1 ELSE 0 END)) OR [Account Number] = @AccountNumber
	--AND
	-- A.Interval = @Interval
	--AND A.[Interface Run] = @InterfaceRun
	--AND A.Entity = @Entity

	GROUP BY
	[Account Number],
	[Object],
	[Department],
	[Cost Centre Number],
	A.[Cost Centre],
	[Account Description]--,
	--[Reference]
	--[Reference]
	--Debit,
	--Credit

	ORDER BY [Account Number] ASC

	--sp_columns 'CO_SRC_SEARCH_VIEW_INTERVAL'

	-- SELECT * FROM [PER REM GL Interface History]

	-- SELECT TOP 50 Employee As [Name], Reference As [Description] FROM [PER HRA PERSONAL]

	-- SELECT * FROM [PER HRA Personal]

	-- SELECT TOP 100 ROW_NUMBER() OVER(PARTITION BY Employee ORDER BY Employee ASC),Employee, Status, [Net Pay], [Total Deductions], [Total Earnings], [Days Service (Group)], [Months Service (Group)], [Years Service (Group)] FROM [PER REM Payroll Calc]