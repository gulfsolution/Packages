/****** Object:  StoredProcedure [dbo].[WS PERSONAL PROFILE PROC]    Script Date: 4/30/2018 5:44:13 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE Proc [dbo].[WS PERSONAL PROFILE PROC] 
@user nvarchar(50)
AS
Declare @Employee int 

Select @Employee = Employee From [DEV PORTAL Users] Where [Login Name] = @user

Select Top 1
    A.[Employee],
	[Name Only] As Name,
	A.Number,
	Company,
	Department,
	[Job Title],
	CONVERT(nvarchar, [Engagement Date], 101) As [Engagement Date],
	[Nationality],
	(Select Name From [CO_SRC_Search_VIEW] Where Employee = A.[Report To]) Manager,
	 B.[Login Name],
	 EV.[Visa Number]	
    ,CONVERT(nvarchar, EV.[Start Date], 101) AS [Visa Start Date]
    ,CONVERT(nvarchar, EV.[End Date], 101) AS [Visa End Date]
	,EP.[Number] AS [Passport Number] 
	,CONVERT(nvarchar, EP.[Date of Issue], 101) AS [Passport Date Issue]
    ,CONVERT(nvarchar, EP.[Date of expiry], 101) AS [Passport Expiry Date]
	,(Select top 1 [Annual Leave (Bal CFwd)] From [PER REM Payroll Calc] PC Where Employee = @Employee and (PC.[Calc Status] = 'CALCULATED' Or PC.[Calc Status] = 'RELEASED') Order By PC.[Interval] desc)  As [Annual Leave] 
	,(Select top 1 [Sick Leave (Bal CFwd)] From [PER REM Payroll Calc] PC Where Employee = @Employee and (PC.[Calc Status] = 'CALCULATED' Or PC.[Calc Status] = 'RELEASED') Order By PC.[Interval] desc)   As [Sick Leave]
From [CO_SRC_Search_VIEW] A
INNER JOIN [DEV PORTAL Users] B
On A.Employee = B.Employee
LEFT JOIN [PER HRA Visa] EV
ON A.Employee = EV.Employee
LEFT JOIN [PER HRA Passport] EP
ON A.Employee = EP.Employee
LEFT JOIN [dbo].[PER REM Payroll Calc] PC
ON A.Employee = PC.Employee
Where A.Employee = @Employee

GO

