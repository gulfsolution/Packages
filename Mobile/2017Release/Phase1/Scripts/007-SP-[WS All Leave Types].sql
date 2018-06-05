/****** Object:  StoredProcedure [dbo].[WS All Leave Types]    Script Date: 4/30/2018 6:10:52 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

--DROP PROCEDURE [dbo].[WS All Leave Types]
--GO

CREATE PROC [dbo].[WS All Leave Types]
AS
BEGIN

	SELECT DISTINCT [Field Value]
	FROM [Data Prompt Values]
	WHERE Prompt = 'Absence Reason'
	ORDER BY [Field Value]

END

GO

