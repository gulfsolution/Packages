/****** Object:  StoredProcedure [dbo].[WS Manager Leave Approval Employee List]    Script Date: 5/1/2018 2:16:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[WS Manager Leave Approval Employee List]
@User nvarchar(50)
AS

Declare @Employee int

Select @Employee = [Employee] From [DEV PORTAL Users] Where [Login Name] = @User

SELECT   
A.[Request Number] as [ReqId],  
B.[Number], 
B.[Name Only] as 'Employee', 
A.[Absence Transaction] AS 'Leave Type',
CONVERT(nvarchar(12), A.[Verified Date] , 13) As [RequestDate],
A.[Status]  
  
FROM  [PER LVE Absence Request] A  
  INNER JOIN [CO_SRC_SEARCH_VIEW] B ON A.[Employee] = B.[Employee]  
WHERE A.[Status] = 'REQUESTED'  
  AND B.[Report To] = @Employee