-- Script Name: Design Policy_Detail Menu
-- Script Nature : Menu Data Script - HR_DEV
-- Develop By: Saad Shah
-- Date Recreated: 29 nov 2014
-- Modify By: 
-- Modify Date: 

-- Reports->Payroll Reports->Annexure (Arrears)

DECLARE @Menu int
DECLARE @MenuDetail int
DECLARE @MenuSequence int
DECLARE @MenuHeader int

DECLARE @MainMenuName nvarchar(50)
DECLARE @HeaderName nvarchar(50)
DECLARE @ScreenDetailName nvarchar(50)
DECLARE @ScreenName nvarchar(50)

SET @MainMenuName = 'HR Admin'
SET @HeaderName = 'Process'
SET @ScreenDetailName = 'Employee Buzzer'
SET @ScreenName = 'PER_REM_Employee_Notifications_Search'							-- Screen name which is used in the link...

SELECT @Menu = [MENU] FROM dbo.[DEV PORTAL Menu Main] where [Description] = @MainMenuName

SELECT @MenuHeader = [Menu Header] FROM dbo.[DEV PORTAL Menu Item Header] WHERE [Description] = @HeaderName AND MENU = @Menu

SELECT top 1 @MenuSequence = [Sequence] FROM dbo.[DEV PORTAL Menu Item Detail] WHERE [Menu Header] = @MenuHeader ORDER BY [Menu Detail] DESC

SET @MenuSequence = @MenuSequence + 10

SET NOCOUNT ON

DELETE FROM [DEV PORTAL Menu Item Detail]
WHERE [Menu Detail Name] = @ScreenDetailName AND [Menu Header] = @MenuHeader


DEClare @ID INT

INSERT INTO [DEV PORTAL Menu Item Detail] ([Menu Detail Name],[Menu Header],[Description]                 ,[Sequence]   ,[HTTP]                                                          ,[Help]                       ,[Manager Only])
VALUES (@ScreenDetailName                                    ,@MenuHeader  ,@ScreenDetailName             ,@MenuSequence,N'../DEVForms/DEV%20PORTAL%20Screen.aspx?Screen=' + @ScreenName ,@ScreenDetailName,Null)

SET @ID = SCOPE_IDENTITY()


DELETE FROM [DEV PORTAL Menu Security Detail]
WHERE [Menu Detail]=@ID

INSERT INTO [DEV PORTAL Menu Security Detail] ([Group],[Menu Detail],[GPPortal Group])
VALUES (0                                             ,@ID          ,N'GULF HR Company HR')

INSERT INTO [DEV PORTAL Menu Security Detail] ([Group],[Menu Detail],[GPPortal Group])
VALUES (1                                             ,@ID          ,N'GULF HR CEO')

GO

