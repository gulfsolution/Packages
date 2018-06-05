/****** Object:  StoredProcedure [dbo].[WS Buzzer Employee Proc]    Script Date: 4/30/2018 6:22:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/** Getting Data by employee for Buzzer notification **/
CREATE Proc [dbo].[WS Buzzer Employee Proc]
@User nvarchar(50)
AS
BEGIN
Declare @Employee int

Select @Employee = [Employee] From [DEV PORTAL Users] Where [Login Name] = @User

Select [ID]
      ,[Employee]
      ,[Type]
      ,[Detail]
      ,CONVERT(nvarchar(12), IsNull([Info Date],'') , 13) As [Info Date]
      ,CONVERT(nvarchar(12), [Start Date] , 13) As [Start Date]
      ,CONVERT(nvarchar(12), [End Date] , 13) As [End Date]
      ,[Active]
      ,[Applied to All]
      ,CONVERT(nvarchar(12), [Verified Date] , 13) As [Verified Date]
      ,[Verified Status]
      ,[Verified User]
      ,CONVERT(nvarchar(12), [Verified Created], 13) As [Verified Created]
	  ,[Read]=(CASE  WHEN Exists (Select * From [Employee Read Notification] Where notificationId = EN.Id And Employee = @Employee ) THEN 1 ELSE 0 END)
From [dbo].[PER REM Employee Notifications] As EN
Where 
(Employee = @Employee Or [Applied to All] = 'Yes') 
And active <> 'No' 
And GETDATE() between [Start Date] and [End Date]

END
