/****** Object:  StoredProcedure [dbo].[WS Employee Approval Details]    Script Date: 6/5/2018 12:28:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER Proc [dbo].[WS Employee Approval Details]
@ID Int
AS 
DECLARE @LeaveType nvarchar(50)  
DECLARE @AbsenceType nvarchar(50)  
DECLARE @LeaveBal numeric(35,2)  
DECLARE @IntervalEndDate dateTime 

SELECT @AbsenceType = [Absence Transaction] FROM [PER LVE Absence Request] WHERE [Request Number] = @ID  
SELECT @LeaveType = [Leave Type] FROM [CO LVE Leave Type] WHERE [Leave Element] = @AbsenceType  


SELECT TOP 1  
@LeaveBal = IsNull(CASE WHEN @LeaveType='LEAVE 01' THEN [ANNUAL LEAVE (Bal CFwd)]  
   WHEN @LeaveType='LEAVE 02' THEN [SICK LEAVE (Bal CFwd)]  
       WHEN @LeaveType='LEAVE 03' THEN [LEAVE 03 (Bal CFwd)]  
       WHEN @LeaveType='LEAVE 04' THEN [LEAVE 04 (Bal CFwd)]  
       WHEN @LeaveType='LEAVE 05' THEN [LEAVE 05 (Bal CFwd)]  
       WHEN @LeaveType='LEAVE 06' THEN [LEAVE 06 (Bal CFwd)]   
   WHEN @LeaveType='LEAVE 07' THEN [LEAVE 07 (Bal CFwd)] END,0),@IntervalEndDate = b.[End date]
  
  
FROM [PER REM Payroll Calc] A  
INNER JOIN [CO HRA Intervals] B  
ON a.[Interval] = b.[Interval]  
INNER JOIN [PER LVE Absence Request] C   
ON A.[Employee] = C.[Employee]  
  
WHERE C.[Request Number] = @ID  
AND [Calc Status] = 'RELEASED'  
  
ORDER BY B.[Interval] DESC  

SELECT 
A.[Employee],
B.[Name],
A.[Absence Transaction] + ' ( ' + CONVERT(nvarchar(12), A.[Start Date] , 13) + ' - ' +  CONVERT(nvarchar(12), A.[End Date] , 13) + ' ) ' As [Description],
[Number of Days],
[Half Days],
[Comments],
@leavebal As [Leave Balance],
A.[Request Number] As ReqId,
DATENAME(month,@IntervalEndDate) as [Interval Month],
year(@IntervalEndDate) as [Interval Year]

FROM [PER LVE Absence Request] A
INNER JOIN [CO_SRC_SEARCH_VIEW] B ON A.[Employee] = B.[Employee]

WHERE A.[Request Number] = @ID