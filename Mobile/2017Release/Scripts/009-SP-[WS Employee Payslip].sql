/****** Object:  StoredProcedure [dbo].[WS Employee Payslip]    Script Date: 4/30/2018 6:17:35 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

--DROP PROC  [WS Employee Payslip]
--GO

CREATE PROC [dbo].[WS Employee Payslip]
@User nvarchar(50),
@Interval int
AS  
BEGIN  
  
	DECLARE @Employee int

	SELECT @Employee = [Employee]
	FROM [DEV PORTAL Users]
	WHERE [LOGIN name] = @User

	IF @Employee IS NULL
	BEGIN
		RAISERROR('User does not exist.', 16, 1)
		RETURN
	END

	DECLARE @Payroll int
	
	SELECT @Payroll = [Payroll Calc]
	FROM [PER REM Payroll Calc] A
	WHERE A.Employee = @Employee
	AND A.[Calc Status] = 'RELEASED'
	AND A.[Run Group] = 'DEFAULT'
	AND A.[Interval] = @Interval

	IF @Payroll IS NULL
	BEGIN
		RAISERROR('No Default Payroll record exists for this interval. The payslip may have not yet been released.', 16, 2)
		RETURN
	END

	EXEC [SingleEmpPayslip] @Payroll
   
END
  
GO

