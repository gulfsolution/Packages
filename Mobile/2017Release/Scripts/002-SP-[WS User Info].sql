/****** Object:  StoredProcedure [dbo].[WS User Info]    Script Date: 9/25/2017 4:13:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--DROP PROCEDURE [WS User Info]
--GO

CREATE PROCEDURE [dbo].[WS User Info]
	@LoginName nvarchar(100)
AS
BEGIN

	SELECT P.Guid as [Guid], P.Entity as [Company]
	FROM [DEV PORTAL Users] U
	INNER JOIN [PER HRA Personal] P
	ON U.Employee = P.Employee
	WHERE U.[Login Name] = @LoginName

END

