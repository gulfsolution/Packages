/****** Object:  StoredProcedure [dbo].[GetRefundEmployee]    Script Date: 5/16/2018 11:10:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROC [dbo].[GetRefundEmployee]
 @RefundRequestId int
AS

 DECLARE @VID NVARCHAR(500)   
        
 Select Employee,[Voucher Code] From [PER REM Petty Cash] Where [Petty Cash Voucher] = @RefundRequestId