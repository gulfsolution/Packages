/****** Object:  StoredProcedure [dbo].[WS Buzzer Employee UnRead Proc]    Script Date: 4/30/2018 6:41:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[WS Buzzer Employee UnRead Proc]
@User nvarchar(50)
AS
BEGIN
Declare @Employee int

Select @Employee = [Employee] From [DEV PORTAL Users] Where [Login Name] = @User

Select count(*)
From [dbo].[PER REM Employee Notifications] 
Where 
(Employee = @Employee Or [Applied to All] = 'Yes') 
And active <> 'No' 
And GETDATE() between [Start Date] and [End Date] 
And ID Not in (Select NotificationId From [Employee Read Notification] Where Employee = @Employee) 


END