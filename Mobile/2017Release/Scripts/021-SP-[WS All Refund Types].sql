/****** Object:  StoredProcedure [dbo].[WS All Refund Types]    Script Date: 5/1/2018 10:41:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROC [dbo].[WS All Refund Types]
AS
BEGIN

	SELECT DISTINCT [Field Value]
	FROM [Data Prompt Values]
	WHERE Prompt = 'Type of Expenditure'
	ORDER BY [Field Value]

END