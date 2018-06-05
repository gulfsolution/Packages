/****** Object:  StoredProcedure [dbo].[PER_LVE_Absence_Request_emp Update Proc]    Script Date: 4/30/2018 6:51:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



ALTER Proc [dbo].[PER_LVE_Absence_Request_emp Update Proc]
@ID Int,
--All Fields Required for Update
@Employee int,
@AbsenceTransaction nvarchar(50),
@StartDate datetime,
@EndDate datetime,
@NumberofDays float,
@HalfDays nvarchar(5),
@Comments nvarchar(50),
@Status nvarchar(50),
@IsSalaryAdvance nvarchar(3),
@ContactDuringLeave nvarchar(255),
@AlternativeManager int,
@IsTicket nvarchar(5),
--------------------------------
--System Provided Values
@ScreenType nvarchar(15)  = 'FORM',--EDITGRID or FORM
@Rows Int = 1,
@CommandName nvarchar(50), --Command Selected from the Front End
@DEV_ID Int  = NULL, --Current Session Variable Value
@User nvarchar(50)  = NULL

AS

DECLARE
@Return nvarchar(50),
@Number int,
@requestNumber int,
@New int

IF @Enddate < @Startdate
BEGIN
	RAISERROR ('The End Date may not be less than the Start Date. Cannot save this record.',16,1)
	RETURN
END


IF @ID is null
	SET @RequestNumber  = 10000000
ELSE 
	SET @RequestNumber  = @ID

SET @RETURN = null

SELECT [Interval]
INTO #LeaveIntervals
FROM [CO HRA Intervals]
WHERE ((@StartDate <= [Start Date]
AND @StartDate <= [End date])
OR (@EndDate <= [End date]
AND @EndDate >= [Start Date])
OR (@StartDate <= [Start Date]
AND @EndDate >= [End Date])) 

SELECT @New = A.[Employee]
FROM [PER REM Payroll Calc] A
INNER JOIN #LeaveIntervals B
ON a.[interval] = B.[Interval]
INNER JOIN [PER LVE Backdate Trans] C
ON a.[employee] = C.[Employee]
WHERE A.[Employee] = @Employee
AND c.[Request Number] = @RequestNumber
AND [Run Group] = 'DEFAULT'
AND [Calc Status] = 'Released'

IF @@ROWCOUNT > 0
BEGIN
	RAISERROR ( 'Payroll calculation period already exists',16,1)
	RETURN
END

IF @RequestNumber = 10000000
	SELECT @Number = [Request Number] FROM [PER LVE Absence Request]
	WHERE ((@Startdate >= [Start Date]
	AND @StartDate <= [End date])

	OR  (@Enddate >= [Start Date]
	AND @EndDate <= [End date])

	OR (@Startdate <= [Start date]
	AND @Enddate >= [End Date]))
	AND [Employee] = @Employee
	AND not [Status] like '%rejected%'
ELSE
	SELECT @Number = [Request Number] FROM [PER LVE Absence Request]
	WHERE ((@Startdate >= [Start Date]
	AND @StartDate <= [End date])

	OR  (@Enddate >= [Start Date]
	AND @EndDate <= [End date])

	OR (@Startdate <= [Start date]
	AND @Enddate >= [End Date]))

	AND [Employee] = @Employee
	AND NOT [Request Number] = @RequestNumber
	AND not [Status] like '%rejected%'
--print @Number

IF @number is  not null
Begin
	RAISERROR ('There is a date overlap on this application. Cannot save this record',16,1)
	RETURN
End

IF @AlternativeManager is null and
	EXISTS(Select DISTINCT Employee
	From [PER SRC Position Master] 
	Where [Report To] = @Employee And Convert(Char(10),GetDate(),111) Between Convert(char(10),[Start Date],111) And Convert(char(10),[End Date],111))
Begin
	RAISERROR ('Please select the alternative manager while absence',16,1)
	RETURN
End

IF @CommandName = 'DEV_SAVE' OR @CommandName = 'DEV_ADD'
BEGIN
IF EXISTS(
SELECT [Request Number] FROM [PER LVE Absence Request] A
WHERE [Request Number] = @ID)

BEGIN --Update
UPDATE [PER LVE Absence Request]
SET 
[Employee] = @Employee,
[Absence Transaction] = @AbsenceTransaction,
[Start Date] = @StartDate,
[End Date] = @EndDate,
[Number of Days] = @NumberofDays,
[Half Days] = @HalfDays,
[Comments] = @Comments,
[Status] = @Status,
[Is Salary Advance] = @IsSalaryAdvance,
[Contact During Leave] = @ContactDuringLeave,
[Alternative Manager] = @AlternativeManager,
[Is Ticket] = @IsTicket,
[Verified Date] = GetDate(),
[Verified User] = @User
WHERE [Request Number] = @ID
END 
ELSE -- Insert
BEGIN

-------------------------------------------------------------
DECLARE @EMPGRADE VARCHAR(255)
DECLARE @LVEENTITLEMENT INT
DECLARE @CRITERIA NVARCHAR(255)
DECLARE @GENDER NVARCHAR(255)
declare @ab nvarchar(255)
DECLARE @RELIGION NVARCHAR(25)

DECLARE @ProbationRule nvarchar(50)
DECLARE @GenderRule nvarchar(50)
DECLARE @ReligionRule nvarchar(50)

DECLARE @MaritalStatus NVARCHAR(255)
declare @probationdate datetime
declare @EngagementDate datetime
declare @LVEENTITLEMENTTemp int
declare @LeaveBalanceNew int
declare @minimum int 
declare @maximum int
declare @Balance numeric(18,2)
declare @entity int

SELECT @probationdate = [probation date] , @EngagementDate = [Engagement Date] from [PER HRA Personal Employment]
where employee = @Employee

declare @lvesch nvarchar(50)
SELECT @GENDER = [Gender],@lvesch = [Leave Scheme]
FROM [CO_SRC_Search_VIEW] WHERE EMPLOYEE = @Employee

SELECT @MaritalStatus = [Marital Status],@RELIGION=[Religion] FROM [PER HRA PERSONAL] WHERE EMPLOYEE = @Employee

SELECT @LVEENTITLEMENT = S.[Leave Entitlement],@CRITERIA = R.[Criteria], @ProbationRule = R.[Probation], @GenderRule = R.[Gender], @ReligionRule = R.[Religion]
FROM [CO LVE Leave Schemes] S
INNER JOIN [CO LVE Absence Transaction Rules] R
ON S.Element = R.[Absence Transaction]
WHERE [Leave Scheme] = @lvesch
AND [Element] = @AbsenceTransaction

set @LVEENTITLEMENTTemp = @LVEENTITLEMENT
	

declare @CompanyRes int
declare @LeaveNo nvarchar(255)
select @CompanyRes = [Company Resource] from [co_src_search_view] where employee = @EMPLOYEE
select @LeaveNo = [Leave Type] from [CO LVE Leave Type]where [Leave Element] = @AbsenceTransaction and [Company]=@CompanyRes

--The below code checks for leave balance.
SELECT @Entity = [Entity] FROM [PER HRA Personal] WHERE [Employee] = @Employee

SELECT
@Minimum = A.Minimum,
@Maximum = A.Maximum

FROM [CO LVE Leave Schemes] A

INNER JOIN [CO LVE Leave Type] B
ON A.Element = B.[Leave Element]

INNER JOIN [CO LVE Leave Schemes Master] C
ON A.[Leave Scheme Master] = C.[Leave Scheme Master] AND B.Company = C.Entity

WHERE
A.[Leave Scheme] = @lvesch
AND B.[Leave Element] = @AbsenceTransaction
AND B.Company = @Entity

SELECT TOP 1
@Balance =
CASE
WHEN @AbsenceTransaction = 'Annual Leave' THEN [Annual Leave (Bal Cfwd)]
WHEN @AbsenceTransaction = 'Sick Leave' THEN [Sick Leave (Bal Cfwd)]

END

FROM [PER REM Payroll Calc] A

WHERE [Employee] = @Employee AND [Calc Status] = 'RELEASED'

ORDER BY A.[Interval] DESC	

IF @Balance < @Minimum
BEGIN
RAISERROR('You require more balance for this Absence Transaction',16,1)
RETURN
END
---------------------------------------------------------------------------
IF(@StartDate < @EngagementDate)
BEGIN
		RAISERROR ('Employee can''t apply for leave before their joining date. Please verify your data and try again.',16,1)
		RETURN
END

IF(@ProbationRule = 'No')
BEGIN
	IF(@StartDate <= @probationdate)
	BEGIN
		RAISERROR ('Employee can''t apply for this leave during probation period. Please verify your data and try again.',16,1)
		RETURN
	END
END

IF(@AbsenceTransaction <> 'Annual Leave' and @IsSalaryAdvance = 'Yes')
begin
		RAISERROR ('Leave Salary advance option is only applicable for annual leave only.',16,1)
		RETURN
end

IF(UPPER(@ReligionRule) <> UPPER(@RELIGION))
BEGIN
	RAISERROR ('This leave is not available for your religion. Please verify your data and try again.',16,1)
	RETURN
END

--IF(@ReligionRule = 'Haj Leave' AND @RELIGION <> 'Muslim')
--BEGIN
--	RAISERROR ('Haj Leave is granted to Muslim employees for the purpose of performing Haj. Employees can apply for Haj Leave once during employment period. Please verify your data and try again.',16,1)
--	RETURN
--END

IF(@GenderRule = 'Female' AND @Gender <> 'Female')
BEGIN
	RAISERROR ('This leave is only granted to female employee. Please verify your data and try again.',16,1)
	RETURN
END

IF(@GenderRule = 'Male' AND @GENDER <> 'Male')
BEGIN
	RAISERROR ('This leave is only granted to male employee. Please verify your data and try again.',16,1)
	RETURN
END

--IF @AlternativeManager = @Employee
--BEGIN
--RAISERROR('You cannot select yourself as the Alternate Manager.',16,1)
--RETURN
--END


INSERT  INTO 
[PER LVE Absence Request]
(
[Employee],
[Absence Transaction],
[Start Date],
[End Date],
[Number of Days],
[Half Days],
[Comments],
[Status],
[Is Salary Advance],
[Contact During Leave],
[Alternative Manager],
[Is Ticket],
[Verified User]
)
VALUES
(
@Employee,
@AbsenceTransaction,
@StartDate,
@EndDate,
@NumberofDays,
@HalfDays,
@Comments,
@Status,
@IsSalaryAdvance,
@ContactDuringLeave,
@AlternativeManager,
@IsTicket,
@User
)

SELECT @DEV_ID = SCOPE_IDENTITY()

END

SELECT @DEV_ID as [DEV_ID]

--Procedures after Update

exec [PER LVE Calendar Detail Update] @DEV_ID, @Employee
--exec [PER WF Update Process] 'Leave',@DEV_ID,@User
EXEC [PER LVE Absence Request AUDIT PROC] @DEV_ID
--exec UpdateAudiProc '[PER LVE Absence Request]','[Request Number]',@DEV_ID,@User
--Procedures after Update  Over
RETURN
END




