/****** Object:  StoredProcedure [dbo].[Create Org Structure Proc]    Script Date: 3/13/2018 1:19:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 ALTER Procedure [dbo].[Create Org Structure Proc]   
@Employee int,  
@Level   TinyInt,  
@User nvarchar(50)  
  
AS  
  
IF (@Level <= 6)  
BEGIN 
  
 DECLARE @Sql as nvarchar(4000)  
 Set @Sql = 'INSERT INTO [CO SRC Hierachy Report] ( [Employee' + Cast(@Level As nvarchar(1)) + '],[Position' + Cast(@Level As nvarchar(1)) + '], [Start' + Cast(@Level As nvarchar(1)) + '],[User]) ' +  
  ' SELECT [Reference],[Job Title], a.[Start Date], ''' + @User + ''' FROM [PER SRC Position Master] A INNER JOIN [CO SRC Org Structure] B ON a.[Structure] = B.[Structure] INNER JOIN [PER HRA Personal] C ON A.[Employee] = C.[Employee] ' +  
  ' WHERE (Convert(char(10),GetDate(),111) Between Convert(char(10),a.[Start Date],111) AND Convert(char(10),A.[End date],111)) AND A.[Employee] = ' + Cast(@Employee As nvarchar(100))  
 EXEC (@Sql)  
 
 IF NOT @Employee IS NULL 
   INSERT INTO EmployeeHierarchy (Employee,[User]) Values (@Employee,@User);
   
 IF (@Level < 6)  
 BEGIN  
  DECLARE @SubCnt as Int  
  Select @SubCnt = IsNull(Count(*),0) From [PER SRC Position Master] Where [Report To] = @Employee   
  IF (@SubCnt > 0)  
  BEGIN  
   DECLARE @SubEmployee As int  
   Set @Level = @Level + 1  
   DECLARE SubEmployees CURSOR LOCAL FOR  
   Select DISTINCT Employee From [PER SRC Position Master] Where [Report To] = @Employee And Convert(Char(10),GetDate(),111) Between Convert(char(10),[Start Date],111) And Convert(char(10),[End Date],111)  
   OPEN SubEmployees  
   FETCH NEXT FROM SubEmployees INTO @SubEmployee  
   WHILE @@Fetch_Status = 0  
   BEGIN  
    EXEC [Create Org Structure Proc] @SubEmployee ,@Level ,@User  
    FETCH NEXT FROM SubEmployees INTO @SubEmployee  
   END  
   CLOSE SubEmployees  
   DEALLOCATE SubEmployees    
  END  
 END  
END  
  