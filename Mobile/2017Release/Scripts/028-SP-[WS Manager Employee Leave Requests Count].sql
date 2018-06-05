/****** Object:  StoredProcedure [dbo].[WS Manager Employee Leave Requests Count]    Script Date: 5/1/2018 1:17:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[WS Manager Employee Leave Requests Count]
@User nvarchar(50)
AS
BEGIN
Declare @Employee int

Select @Employee = [Employee] From [DEV PORTAL Users] Where [Login Name] = @User

Select count(*) From [dbo].[PER LVE Absence Request] Where Employee in (Select Employee From [CO_SRC_SEARCH_VIEW] Where [Report To] = @Employee) And [Status] = 'REQUESTED'


END