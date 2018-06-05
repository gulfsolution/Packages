/****** Object:  StoredProcedure [dbo].[WS Employee IsManager]    Script Date: 5/1/2018 11:50:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[WS Employee IsManager]
@User nvarchar(50)
AS
BEGIN
Declare @Employee int

Select @Employee = [Employee] From [DEV PORTAL Users] Where [Login Name] = @User

Select count(*) From [CO_SRC_SEARCH_VIEW] Where [Report To] = @Employee


END