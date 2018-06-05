/****** Object:  StoredProcedure [dbo].[WS Employee Payslip Intervals]    Script Date: 4/30/2018 6:14:37 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

--DROP PROC  [WS Employee Payslip Intervals]
--Go

CREATE PROC [dbo].[WS Employee Payslip Intervals]
@User nvarchar(50)
AS  
BEGIN  
  
	DECLARE @Employee int

	SELECT @Employee = [Employee]
	FROM [DEV PORTAL Users]
	WHERE [LOGIN name] = @User

	IF @Employee IS NULL
	BEGIN
		RAISERROR('User does not exist.',16,1)
		RETURN
	END

	SELECT A.[Interval], DATENAME(MONTH, B.[Start Date]) + ' ' + CAST(DATEPART(YEAR, B.[Start Date]) AS nvarchar(4)) [IntervalName]
	FROM [PER REM Payroll Calc] A
	INNER JOIN [CO HRA Intervals] B
	ON A.Interval = B.Interval
	WHERE A.Employee = @Employee
	AND A.[Calc Status] = 'RELEASED'
	AND A.[Run Group] = 'DEFAULT'
	ORDER BY A.Interval DESC
	
END
  
GO

