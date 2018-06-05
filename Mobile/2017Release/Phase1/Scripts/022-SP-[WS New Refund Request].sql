/****** Object:  StoredProcedure [dbo].[WS New Refund Request]    Script Date: 5/1/2018 11:00:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[WS New Refund Request]
@Employee int,@TypeofExpenditure nvarchar(50),@NoOfExpenses int,@Description nvarchar(250),@Value numeric(18,2),
@TDate date,
@User nvarchar(50)
as

Begin

Declare @CurrentDate nvarchar(12)
Select @CurrentDate = Convert(nvarchar(12),getdate(),13)

CREATE TABLE #RefundRequestTemp
(
	RefundRequestNo int
)
INSERT INTO #RefundRequestTemp
		EXEC [dbo].[PER_REM_Refund_Request_Emp Update Proc] Null,@Employee,@CurrentDate,@CurrentDate,@TypeofExpenditure,@NoOfExpenses,@Description,Null,'REQUESTED',@Value,Null,Null,Null,Null,Null,@TDate,Form,Null,N'DEV_SAVE',Null,@User


DECLARE @RefundRequestNo int
DECLARE @VID NVARCHAR(500)          
SET @VID = CONVERT(NVARCHAR(11),GETDATE(),112) + '-'+REPLACE(CONVERT(NVARCHAR(11),GETDATE(),108), ':', '') 


SELECT TOP 1 @RefundRequestNo = RefundRequestNo
	FROM #RefundRequestTemp

Update [PER REM Petty Cash]
Set [Voucher Code] = @VID
Where [Petty Cash Voucher] = @RefundRequestNo

INSERT INTO #RefundRequestTemp
EXEC [DEV PORTAL WF HISTORY SCREEN PROC] @User,'Refund Request',@RefundRequestNo,'PER REM Petty Cash','Petty Cash Voucher','0'

SELECT @RefundRequestNo

End