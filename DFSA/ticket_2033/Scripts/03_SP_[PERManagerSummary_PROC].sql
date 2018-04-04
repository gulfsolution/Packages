/****** Object:  StoredProcedure [dbo].[PERManagerSummary_PROC]    Script Date: 3/13/2018 12:50:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER Proc [dbo].[PERManagerSummary_PROC]   
@Name NVarchar(50),  
@User nvarchar(50)   
  
AS   
  
SET NOCOUNT ON  
  
DECLARE @Employee int  
DECLARE @Grade nvarchar(50)  
  
SELECT @Employee = [Employee]  
FROM [DEV PORTAL Users]  
WHERE [Login Name] = @User  
  
SELECT @Grade = [Grade]  
FROM [CO_SRC_Search_View]  
WHERE [Employee] = @Employee  
  
IF EXISTS(Select * From [PER HRA PERSONAL] Where ISNULL([Extended Permissions],'No') = 'YES'  And Employee = @Employee)
BEGIN  

DELETE FROM [EmployeeHierarchy]
WHERE [User] = @User

EXEC [Create Org Structure Proc] @Employee ,1 ,@User

 Select  
 A.[Employee] as 'ID',  
 [Name],  
 [Department],  
 [Cost Centre],  
 [Job Title]  
 , [Title] as [Title]  
 , convert(nvarchar(11),[Date of Birth],113) as 'Date of Birth'  
 , [Work Telephone Number] as [Work Tel]  
 , [Mobile Phone Number] as [Mobile]  
 , [E-Mail Address] as [EMail]  
 , [Fax Number] as [Fax]   
, B.[Engagement Date] as Engage
   
 FROM [PER HRA Personal] A  
   
 INNER JOIN [CO_SRC_SEARCH_VIEW] B  
 ON A.[Employee] = B.[Employee]  
    
 WHERE  B.[Employee] in (Select Employee From EmployeeHierarchy Where [User] = @User)  
 AND A.[Employment Status] is null 
 
END  
ELSE  
BEGIN  
 Select  
 A.[Employee] as 'ID',  
 [Name],  
 [Department],  
 [Cost Centre],  
 [Job Title]  
 , [Title] as [Title]  
 , convert(nvarchar(11),[Date of Birth],113) as 'Date of Birth'  
 , [Work Telephone Number] as [Work Tel]  
 , [Mobile Phone Number] as [Mobile]  
 , [E-Mail Address] as [EMail]  
 , [Fax Number] as [Fax]   
, B.[Engagement Date] as Engage
   
 FROM [PER HRA Personal] A  
   
 INNER JOIN [CO_SRC_SEARCH_VIEW] B  
 ON A.[Employee] = B.[Employee]  
    
 WHERE  B.[Employee] = @Employee  
  
END  