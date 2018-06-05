/****** Object:  StoredProcedure [dbo].[WS All Document Types]    Script Date: 4/30/2018 7:16:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[WS All Document Types]
AS
BEGIN

	SELECT DISTINCT [Field Value]
	FROM [Data Prompt Values]
	WHERE Prompt = 'Application Type Prompt' and [Field Value] in ('Salary Certificate','Letter of Employment','Other')
	ORDER BY [Field Value]

END
