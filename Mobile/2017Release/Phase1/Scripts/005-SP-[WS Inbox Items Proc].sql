/****** Object:  StoredProcedure [dbo].[WS Inbox Items Proc]    Script Date: 4/30/2018 5:49:43 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO





CREATE Proc [dbo].[WS Inbox Items Proc]
@User nvarchar(50),
@Type nvarchar(50)
AS

Declare @Employee int

Select @Employee = [Employee] From [DEV PORTAL Users] Where [Login Name] = @User


If @Type = 'LEAVE'

BEGIN
PRINT 'Calling LEAVE'

 Select Top 5
 Convert(nvarchar(100), A.[Request Number])  As Id, 
 'LEAVE' As [Type],
 dbo.[WS Employee Submitted Name] (A.[Request Number],@User,@Type) As [RequestedBy],
 A.[Absence Transaction] + ' ( ' + CONVERT(nvarchar(12), A.[Start Date] , 13) + ' - ' +  CONVERT(nvarchar(12), A.[End Date] , 13) + ' ) ' As [Description],
 (Select [Name Only] From [CO_SRC_Search_VIEW] Where Employee = B.[Report To]) As AwaitingApproval,
 A.Status As [Status],
 CONVERT(nvarchar(12), A.[Verified Date] , 13) As [RequestDate],
 '' As Comments,
 0 As CanAction,
 '' As MsgId
 From [PER LVE Absence Request] A 
 Inner Join [CO_SRC_Search_VIEW] B
 On A.Employee = B.Employee
 Where A.Employee = @Employee
 Order By A.[Verified Created] desc
END

ELSE IF @Type = 'DOCUMENT'

BEGIN

PRINT 'Calling DOCUMENT'

Select Top 5
 Convert(nvarchar(100), A.[Distributor])  As Id, 
 'DOCUMENT' As [Type],
 dbo.[WS Employee Submitted Name] (A.[Distributor],@User,@Type) As [RequestedBy],
 [Type Of Application] As [Description],
 (Select [Name Only] From [CO_SRC_Search_VIEW] Where Employee = B.[Report To]) As AwaitingApproval,
 A.Status As [Status],
 CONVERT(nvarchar(12), A.[Verified Date] , 13) As [RequestDate],
 Comments As Comments,
 0 As CanAction,
 '' As MsgId
 From [PER HRA Local Distributor] A
 Inner Join [CO_SRC_Search_VIEW] B
 On A.Employee = B.Employee
 Where A.Employee = @Employee
 Order By A.[Verified Created] desc

END

ELSE IF @Type = 'REFUND'

BEGIN

PRINT 'Calling REFUND'

Select Top 5
 Convert(nvarchar(100), A.[Petty Cash Voucher])  As Id, 
 'REFUND' As [Type],
 dbo.[WS Employee Submitted Name] (A.[Petty Cash Voucher],@User,@Type) As [RequestedBy],
 A.[Type of Expenditure] As [Description],
 (Select [Name Only] From [CO_SRC_Search_VIEW] Where Employee = B.[Report To]) As AwaitingApproval,
 A.Status As [Status],
 CONVERT(nvarchar(12), A.[Verified Date] , 13) As [RequestDate],
 A.[Description] As Comments,
 0 As CanAction,
 '' As MsgId
 From [PER REM Petty Cash] A
 Inner Join [CO_SRC_Search_VIEW] B
 On A.Employee = B.Employee
 Where A.Employee = @Employee
 Order By A.[Verified Created] desc

END


GO

