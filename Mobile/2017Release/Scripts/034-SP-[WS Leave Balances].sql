/****** Object:  StoredProcedure [dbo].[WS Leave Balances]    Script Date: 6/4/2018 3:13:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER Proc [dbo].[WS Leave Balances] 
@user nvarchar(50)
AS
Declare @Employee int 
DECLARE @SqlQry VARCHAR(MAX)
DECLARE @ComLeave VARCHAR(200)

Select @Employee = Employee From [DEV PORTAL Users] Where [Login Name] = @user

SELECT @COMLEAVE = [Leave Type] FROM [CO LVE Leave Type] WHERE [Leave Element] = 'Compassionate Leave'  

SET @SqlQry = 'Select Top 1 [ANNUAL LEAVE (Bal CFwd)] As [Annual Leave],[SICK LEAVE (Bal CFwd)] As [Sick Leave], 
			   [' + @COMLEAVE + ' (Bal CFwd)] As [Compassionate Leave],
			   Interval From [PER REM Payroll Calc] A Where Employee = ' + CAST(@Employee as varchar(200)) 
		        + ' AND [Calc Status] = ''RELEASED''  
  
			 ORDER BY [Interval] DESC'

PRINT @SqlQry
EXEC (@SqlQry)