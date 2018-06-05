/****** Object:  UserDefinedFunction [dbo].[WS Employee Submitted Name]    Script Date: 4/30/2018 6:07:46 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO




CREATE Function [dbo].[WS Employee Submitted Name]  
(  
	@requestNumber nvarchar(50),
	@user nvarchar(50),
	@Type nvarchar(50)  
)  
RETURNS nvarchar(500)  
AS  
BEGIN  

DECLARE @Return nvarchar(500) 
Declare @VerifiedUser nvarchar(50)

If @Type = 'LEAVE'
	Select @VerifiedUser = [Verified User] From [PER LVE Absence Request] Where [Request Number] = @requestNumber
ELSE IF @Type = 'DOCUMENT'
   Select @VerifiedUser = [Verified User] From [PER HRA Local Distributor] Where Distributor = @requestNumber
ELSE IF @Type = 'REFUND'
    Select @VerifiedUser = [Verified User] From [PER REM Petty Cash] Where [Petty Cash Voucher] = @requestNumber

IF @VerifiedUser =  @user 
   Select @Return  = [Given Name] From [PER HRA PERSONAL] Where Employee = (Select top 1 Employee From [DEV PORTAL USERS] Where [Login Name] = @VerifiedUser)
ELSE
 BEGIN
    Select @Return  = [Given Name] From [PER HRA PERSONAL] Where Employee = (Select top 1 Employee From [DEV PORTAL USERS] Where [Login Name] = @VerifiedUser)
 END

RETURN(@Return)
END  


GO

