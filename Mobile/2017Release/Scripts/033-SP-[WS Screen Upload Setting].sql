/****** Object:  StoredProcedure [dbo].[WS User Info]    Script Date: 5/9/2018 3:50:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--DROP PROCEDURE [WS User Info]
--GO

CREATE PROCEDURE [dbo].[WS Screen Upload Setting]
	@ScreenName nvarchar(100)
AS
BEGIN

	Select [Folder Name] 
	From 
	[DEV PORTAL Screen Upload Settings] 
	Where [Screen Name] = @ScreenName

END