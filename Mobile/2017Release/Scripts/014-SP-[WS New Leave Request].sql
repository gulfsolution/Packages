/****** Object:  StoredProcedure [dbo].[WS New Leave Request]    Script Date: 4/30/2018 6:48:10 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

--DROP PROCEDURE [dbo].[WS New Leave Request]
--GO


CREATE PROC [dbo].[WS New Leave Request]
@User nvarchar(50),
@LeaveType nvarchar(50),
@StartDate Date,
@EndDate Date,
@ApprovedTicket bit,
@Carrier nvarchar(250),
@PNR nvarchar(250),
@Route nvarchar(250),
@ReasonForLeave nvarchar(1000),
@ApprovedExitVisa bit,
@SubstituteEmployee nvarchar(250),
@LeaveContact nvarchar(255)
as
Begin

	DECLARE @Employee int 

	SELECT @Employee = employee
	FROM [DEV PORTAL Users]
	WHERE [Login Name] = @User

	IF @Employee IS NULL
	BEGIN
		RAISERROR ('User does not exist.',16,1)
		RETURN
	END

	DECLARE @empCount int, @altEmpId int  

	SELECT	@empCount = count(Employee),
			@altEmpId = MAX(Employee)
			from [CO_SRC_Search_VIEW]
			where [Full Name] like '%'+ @SubstituteEmployee  +'%'

	--IF (ISNULL(@empCount, 0)) < 1 
	--BEGIN
	--	RAISERROR ('Could not find a Substitute Employee matching the provided information.',16,1)
	--	RETURN
	--END
	--ELSE IF (ISNULL(@empCount, 0))>1
	--BEGIN
	--	RAISERROR ('Provide more specific details to filter the Substitute Employee.', 16, 1)
	--	RETURN
	--END 

	DECLARE @ApprovedTicketYN nvarchar(3)
	DECLARE @ApprovedExitVisaYN nvarchar(3)

	SET @ApprovedTicketYN = CASE WHEN @ApprovedTicket = 1 THEN 'Yes' ELSE 'No' END
	SET @ApprovedExitVisaYN = CASE WHEN @ApprovedExitVisa = 1 THEN 'Yes' ELSE 'No' END

	CREATE TABLE #LeaveRequestTemp
	(
		LeaveRequestNo int
	)

	INSERT INTO #LeaveRequestTemp
		exec [PER_LVE_Absence_Request_emp Update Proc] Null, @Employee, @LeaveType, @StartDate, @EndDate, Null, 'No', @ReasonForLeave, 'REQUESTED', 'No', @LeaveContact, @altEmpId, /*NULL, @Carrier, @Route, @PNR, */@ApprovedTicketYN/*, @ApprovedExitVisaYN*/, 'FORM', 1, 'DEV_SAVE', NULL, @User

	DECLARE @LeaveRequestNo int

	SELECT TOP 1 @LeaveRequestNo = LeaveRequestNo
	FROM #LeaveRequestTemp

	INSERT INTO #LeaveRequestTemp
	EXEC [DEV PORTAL WF HISTORY SCREEN PROC] @User,'LEAVE',@LeaveRequestNo,'PER_LVE_Absence_Request_LM','Request Number','0'

	SELECT @LeaveRequestNo

END

GO

