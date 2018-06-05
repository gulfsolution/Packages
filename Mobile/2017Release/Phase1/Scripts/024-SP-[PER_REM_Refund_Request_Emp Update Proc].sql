/****** Object:  StoredProcedure [dbo].[PER_REM_Refund_Request_Emp Update Proc]    Script Date: 5/1/2018 11:30:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER Proc [dbo].[PER_REM_Refund_Request_Emp Update Proc]
@ID Int,
--All Fields Required for Update
@Employee int,
--------------------------------
--System Provided Values
@ScreenType nvarchar(15)  = 'FORM',--EDITGRID or FORM
@Rows Int = 1,
@CommandName nvarchar(50), --Command Selected from the Front End
@DEV_ID Int  = NULL, --Current Session Variable Value
@User nvarchar(50)  = NULL

AS

Set @Status = ISNULL(@Status,'CREATED');


IF ISNUMERIC(@NoOfExpenses) = 0 AND @NoOfExpenses IS NOT NULL 
BEGIN
RAISERROR ('Number of expenses should be a numeric value.',16,1)
RETURN
END


IF @CommandName = 'DEV_SAVE' OR @CommandName = 'DEV_ADD'
BEGIN
IF EXISTS(
SELECT [Petty Cash Voucher] FROM [PER REM Petty Cash] A
WHERE [Petty Cash Voucher] = @DEV_ID)

BEGIN --Update
UPDATE [PER REM Petty Cash]
SET 
[Employee] = @Employee,
[Trans Date] = @TDate,
[Verified Date] = convert(nvarchar(11),GetDate(),113),
[Verified User] = @User
WHERE [Petty Cash Voucher] = @DEV_ID
END 
ELSE -- Insert
BEGIN
INSERT INTO
[PER REM Petty Cash]
(
[Employee],
[Trans Date],
[Verified User]

)
VALUES
(
@Employee,
@TDate,
@User

)

SELECT @DEV_ID = SCOPE_IDENTITY()

END

SELECT @DEV_ID as [DEV_ID]
EXEC [PER REM Petty Cash AUDIT PROC] @DEV_ID
RETURN
END