/****** Object:  StoredProcedure [dbo].[WS Buzzer Employee Read Update Proc]    Script Date: 5/3/2018 11:45:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[WS Buzzer Employee Read Update Proc]
@Id int,
@Employee int
AS
BEGIN

If Not Exists(Select * From [Employee Read Notification] Where NotificationId = @Id And Employee = @Employee)
BEGIN
INSERT INTO [dbo].[Employee Read Notification]
           ([NotificationId]
           ,[Employee])
     VALUES
           (@Id,@Employee)

SELECT 1
END
SELECT 0

END