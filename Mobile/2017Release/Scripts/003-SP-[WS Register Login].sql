/****** Object:  StoredProcedure [dbo].[WS Register Login]    Script Date: 9/25/2017 4:15:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[WS Register Login]
	@LoginName nvarchar(100),
	@DeviceType nvarchar(100),
	@DeviceToken nvarchar(500)
AS
BEGIN

	IF NOT Exists(SELECT * FROM [DEV PORTAL Users] WHERE [Login Name] = @LoginName)
	BEGIN
		RAISERROR('User does not exist.', 16, 1)
		RETURN
	END

	IF @DeviceType IS NULL OR @DeviceToken IS NULL
		RETURN

	UPDATE [DEV PORTAL Users]
	SET [Device Type] = @DeviceType,
		[Device Token] = @DeviceToken,
		[Last App Login] = GETDATE()
	WHERE [Login Name] = @LoginName

	Select convert(nvarchar(50),[Employee]) From [PER HRA Personal] Where Employee = (Select Employee From [DEV PORTAL Users] WHERE [Login Name] = @LoginName)

END

