/****** Object:  StoredProcedure [dbo].[WS Manager Leave Approve Reject]    Script Date: 5/1/2018 12:54:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[WS Manager Leave Approve Reject]
@ID Int,
--All Fields Required for Update
@User nvarchar(50),
@Type nvarchar(50),
@Status nvarchar(50)
as
Begin

	CREATE TABLE #LeaveApprove
	(
		LeaveRequestNo int
	)

	INSERT INTO #LeaveApprove
		exec [dbo].[PER_LVE_Absence_Request_LM Approve Proc] @ID, @User, @Type, @Status

	DECLARE @LeaveRequestNo int

	SELECT TOP 1 @LeaveRequestNo = LeaveRequestNo
	FROM #LeaveApprove

	INSERT INTO #LeaveApprove
	EXEC [DEV PORTAL WF HISTORY SCREEN PROC] @User,'LEAVE',@LeaveRequestNo,'PER LVE Absence Request','Request Number','10'

	SELECT @LeaveRequestNo

END
