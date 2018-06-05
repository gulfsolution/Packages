/****** Object:  StoredProcedure [dbo].[WS New Document Request]    Script Date: 4/30/2018 7:13:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROC [dbo].[WS New Document Request]
@Employee int,@TypeOfApplication nvarchar(50),@Comments nvarchar(500),@BankName nvarchar(50),@Purpose nvarchar(50),
@ReqNo nvarchar(255),
@BANo nvarchar(255),
@Statement nvarchar(255),
@Lang nvarchar(255),
@Company_ID NVARCHAR(255),
@User nvarchar(50)
as

Declare @EmployeeNumber nvarchar(50)
Declare @Company nvarchar(100)
Declare @Department nvarchar(100)
Declare @CurrentDate nvarchar(12)

Select @EmployeeNumber = Number,
	   @Company = Company,
	   @Department = Department		 
	   From [CO_SRC_SEARCH_VIEW] Where Employee = @Employee

Select @CurrentDate = Convert(nvarchar(12),getdate(),13)

CREATE TABLE #DocumentRequestTemp
(
	DocumentRequestNo int
)

	INSERT INTO #DocumentRequestTemp
		EXEC [dbo].[PER_HRA_Local_Distributor_SS Update Proc] NULL,@Employee,@CurrentDate,@TypeOfApplication,Null,@Comments,@BankName,@Purpose,Null,N'REQUESTED',Null,@Company_ID,Form,Null,N'DEV_SAVE',Null,@User

	DECLARE @DocumentRequestNo int

	SELECT TOP 1 @DocumentRequestNo = DocumentRequestNo
	FROM #DocumentRequestTemp

	INSERT INTO #DocumentRequestTemp
	EXEC [DEV PORTAL WF HISTORY SCREEN PROC] @User,'HC Document',@DocumentRequestNo,'PER HRA Local Distributor','Distributor','0'

	SELECT @DocumentRequestNo



