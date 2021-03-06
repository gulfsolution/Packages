 
/****** Object:  StoredProcedure [dbo].[LEAVE DETAIL REPORT]    Script Date: 7/12/2018 2:43:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[LEAVE DETAIL REPORT]      
@Employee int,      
@StartFromDate datetime = null ,      
@Select nvarchar(10) ='Yes',      
@LeaveType nvarchar(50) = 'LEAVE 01'      
AS      
      
DECLARE @LastReleased int      
DECLARE @AfterReleased int      
DECLARE @Engage datetime      
      
SELECT @Engage = [Engagement Date]      
FROM [PER HRA Personal Employment]      
WHERE [Employee] = @Employee      
      
SELECT @LastReleased = max([Interval])      
FROM [PER REM Payroll Calc]      
WHERE [Employee] = @Employee       
And [Calc Status] = 'RELEASED'      
and [run group] = 'DEFAULT'      
      
--for DFSA      
SELECT @AfterReleased = min([Interval])      
FROM [PER REM Payroll Calc]      
WHERE [Employee] = @Employee       
And [Calc Status] = 'CALCULATED'      
AND [Interval] > @LastReleased      
and [run group] = 'DEFAULT'      
      
If @AfterReleased is null       
begin      
 select top 1 @AfterReleased = interval from [CO HRA Intervals]      
 where Interval > @LastReleased       
End      
      
--for others      
--SELECT @AfterReleased = @LastReleased      
      
Delete From [PER REM Payroll Calc Temp]      
Where  Employee = @Employee  

Delete From [CO SRC Job Table Temp]      
Where  Employee = @Employee     
      
Delete From [PER REM Leave Detailed Report]      
Where [Employee] = @Employee      
      
SET NOCOUNT ON      
      
DELETE FROM [PER LVE BackDate Summary Calc]      
Where [Employee] = @Employee      
      
DELETE FROM [PER LVE BACKDATE TRANS CALC]      
Where [Employee] = @Employee      
      
INSERT INTO [PER LVE BackDate Summary Calc]      
([Employee], [Absence Transaction], [Period ID], [Before], [Current])      
SELECT a.[Employee], [Absence Transaction], [Period ID], [Before], [Current]       
FROM [PER LVE BackDate Summary] A      
INNER JOIN [PER REM Payroll Calc] B      
ON A.[Employee] = B.[Employee]      
AND A.[Period ID] = B.[Interval]      
WHERE a.[Employee] = @Employee      
AND  ([Period ID] <= @LastReleased OR [Interval] = @AfterReleased)      
AND B.[Run Group] = 'DEFAULT'      
      
INSERT INTO [PER LVE Backdate Trans Calc]([Employee], [Absence Transaction], [Interval], [Calc Period], [Value], [Request Number])      
SELECT a.[Employee], [Absence Transaction], a.[Interval], [Calc Period], [Value], a.[Request Number]       
FROM [PER LVE BACKDATE TRANS] A      
INNER JOIN [PER REM Payroll Calc] B      
ON A.[Employee] = B.[Employee]      
AND A.[Calc Period] = B.[Interval]      
WHERE a.[Employee] = @Employee      
AND  ([Calc Period] <= @LastReleased OR [Calc Period] = @AfterReleased)      
AND B.[Run Group] = 'DEFAULT'      
      
IF @Lastreleased is null      
BEGIN      
  Select @LastReleased = [Interval]      
  From [CO HRA Intervals] B      
  Where   @Engage Between B.[Start Date] And b.[End Date]      
      
  SELECT  @LastReleased = max([Interval])      
  From [CO HRA Intervals] B      
  Where   [Interval] < @Lastreleased      
END      
      
      
Delete From [PER REM Payroll Calc Temp]      
Where  Employee = @Employee      
      
Delete From [PER REM Leave Detailed Report]      
Where [Employee] = @Employee      
      
      
SET NOCOUNT ON      
Declare @Sql nvarchar(4000)      
Declare @LeaveField nvarchar(50)      
      
Set  @LeaveField = Case When @LeaveType = 'LEAVE 01' Then 'Annual Leave' When @LeaveType = 'LEAVE 02' Then 'Sick Leave' Else @LeaveType End      
      
Set @Sql = 'Insert Into [PER REM Payroll Calc Temp]       
            (Employee,[Interval],[Calc Status],Status,[Run Group],[' + @LeaveField + ' (Liability)],[' + @LeaveField + ' (Bal BFwd)],[' + @LeaveField + ' (Bal CFwd)],[' + @LeaveField + ' (Taken)],[' + @LeaveField + ' (Entitle)],[' + @LeaveField + ' (Taken backdate)],[' + @LeaveField + ' (Encashed)],[' + @LeaveField + ' (Encashed days)],[' + @LeaveField + ' (Adj)])      
Select  Employee,[Interval],[Calc Status],Status,[Run Group],[' + @LeaveField + ' (Liability)],[' + @LeaveField + ' (Bal BFwd)],[' + @LeaveField + ' (Bal CFwd)],[' + @LeaveField + ' (Taken)],[' + @LeaveField + ' (Entitle)],[' + @LeaveField + ' (Taken backdate)],[' + @LeaveField + ' (Encashed)],[' + @LeaveField + ' (Encashed days)],[' + @LeaveField + ' (Adj)]          
From  [PER REM Payroll Calc]      
Where Employee = ' + Convert(nvarchar(20),@Employee) + ' And ([Interval] <= ' + Convert(nvarchar(20),@LastReleased) + ' OR [Interval] = ' + Convert(nvarchar(20),@AfterReleased) + ')      
 and [run group] = ''DEFAULT'''      
print @Sql      
EXEC(@Sql)      
      
      
-- Insert Into [PER REM Payroll Calc Temp]       
-- (Employee,[Interval],[Calc Status],Status,[Run Group],[Annual Leave (Liability)],[Annual Leave (Bal BFwd)],[Annual Leave (Bal CFwd)],[Annual Leave (Taken)],[Annual Leave (Entitle)],[Annual Leave (Taken backdate)],[Annual Leave (Encashed)],[Annual Leave  
--(Encashed days)],[Annual Leave (Adj)])      
-- Select  Employee,[Interval],[Calc Status],Status,[Run Group],[Annual Leave (Liability)],[Annual Leave (Bal BFwd)],[Annual Leave (Bal CFwd)],[Annual Leave (Taken)],[Annual Leave (Entitle)],[Annual Leave (Taken backdate)],[Annual Leave (Encashed)],[Annua
  
--l Leave (Encashed days)],[Annual Leave (Adj)]          
-- From  [PER REM Payroll Calc]      
-- Where Employee = @Employee And ([Interval] <= @LastReleased OR [Interval] = @AfterReleased)      
-- and [run group] = 'DEFAULT'      
      
Declare @Month    as tinyint      
Declare @Year    as smallint      
Declare @Date     as nvarchar(11)      
Declare @Interval as int      
      
Set @Month = 1      
Set @Year = Year(GetDate()) - 1      
      
While @Month <= 12      
Begin      
 --Set @Date = Convert(nvarchar(10),@Month) + '/01/' + Convert(nvarchar(10),@Year)      
 Set @Date = '01/' + Case When @Month = 1  Then 'JAN'       
     When @Month = 2  Then 'FEB'      
     When @Month = 3  Then 'MAR'      
     When @Month = 4  Then 'APR'      
     When @Month = 5  Then 'MAY'      
     When @Month = 6  Then 'JUN'      
     When @Month = 7  Then 'JUL'      
     When @Month = 8  Then 'AUG'      
     When @Month = 9  Then 'SEP'      
     When @Month = 10 Then 'OCT'      
     When @Month = 11 Then 'NOV'      
     When @Month = 12 Then 'DEC' End      
    + '/' + Convert(nvarchar(10),@Year)      
      
 Set @Date = Convert(char(11),Convert(Datetime,@Date),113)      
      
 Set @Sql = 'Insert Into [PER REM Leave Detailed Report] ([Employee]     ,[Month]            ,[Opening Balance]                ,[Monthly Entitlement]           ,[Days Taken]                                                                              ,[Days Prev Taken]                               ,[Adjusted]                 ,[Closing Balance]               ,[Type]                              ,[Leave])       
    Select  ' + Convert(nvarchar(20),@Employee) + ' ,N''' + @Date + ''' ,[' + @LeaveField + ' (Bal BFWD)] ,[' + @LeaveField + ' (Entitle)] ,IsNull([' + @LeaveField + ' (Taken)],0) + IsNull([' + @LeaveField + ' (Encashed days)],0) ,IsNull([' + @LeaveField + ' (Taken backdate)],0),[' + @LeaveField + ' (Adj)],[' + @LeaveField + ' (Bal CFWD)],      
    CASE WHEN [Calc Status] = ''RELEASED'' THEN ''<Font Color=Green>'' + [Calc Status] + ''</font>'' else ''<Font Color=Red>'' + [Calc Status] + ''</font>'' END , [Notes]      
    From [PER REM Payroll Calc] A Inner Join [CO HRA Intervals] B ON A.Interval = B.Interval      
    Where  Employee = ' + Convert(nvarchar(20),@Employee) + ' And [run group] = ''DEFAULT'' and Convert(Datetime,N''' + @Date + ''') Between B.[Start Date] And b.[End Date] And A.[Interval] <= ' + Convert(nvarchar(20),@LastReleased)      
          
 print @Sql      
 --select * from [PER REM Leave Detailed Report]      
      
 EXEC(@Sql)      
       
      
--  Insert Into [PER REM Leave Detailed Report] ([Employee],[Month]  ,[Opening Balance]         ,[Monthly Entitlement]    ,[Days Taken]                                                           ,[Days Prev Taken]                        ,[Adjusted]        
  
--,[Closing Balance]        ,[Type]                              ,[Leave])       
--  Select  @Employee ,Convert(Char(11),@Date,113)                   ,[Annual Leave (Bal BFWD)] ,[Annual Leave (Entitle)] ,IsNull([Annual Leave (Taken)],0) + IsNull([Annual Leave (Encashed days)],0) ,IsNull([Annual Leave (Taken backdate)],0),[Annual Leave
  
  
 --(Adj)],[Annual Leave (Bal CFWD)],      
--  CASE WHEN [Calc Status] = 'RELEASED' THEN '<Font Color=Green>' + [Calc Status] + '</font>' else '<Font Color=Red>' + [Calc Status] + '</font>' END ,      
--  [Notes]      
--  From [PER REM Payroll Calc] A Inner Join [CO HRA Intervals] B ON A.Interval = B.Interval      
--  Where  Employee = @Employee And [run group] = 'DEFAULT' and Convert(Datetime,@Date) Between B.[Start Date] And b.[End Date] And A.[Interval] <= @LastReleased      
      
 --DFSA Changes to show adjustment in first month after last released month      
 Set @Sql = 'Insert Into [PER REM Leave Detailed Report] ([Employee],[Month]                                 ,[Opening Balance]                ,[Monthly Entitlement]           ,[Days Taken]                                                                  
  
  
    
            ,[Days Prev Taken]                               ,[Adjusted]                 ,[Closing Balance]               ,[Type]                              ,[Leave])       
   Select ' + Convert(nvarchar(20),@Employee) + '     ,''' + Convert(Char(11),@Date,113) +'''  ,[' + @LeaveField + ' (Bal BFWD)] ,[' + @LeaveField + ' (Entitle)] ,IsNull([' + @LeaveField + ' (Taken)],0) + IsNull([' + @LeaveField + ' (Encashed days)],0) ,IsNull([' + @LeaveField + ' (Taken backdate)],0),[' + @LeaveField + ' (Adj)],[' + @LeaveField + ' (Bal CFWD)],      
   CASE WHEN [Calc Status] = ''RELEASED'' THEN ''<Font Color=Green>'' + [Calc Status] + ''</font>'' else ''<Font Color=Red>'' + [Calc Status] + ''</font>'' END ,      
   [Notes]      
   From [PER REM Payroll Calc] A       
   INNER JOIN [CO HRA Intervals] B ON A.Interval = B.Interval      
   Where  Employee = ' + Convert(nvarchar(20),@Employee) + '       
   AND [run group] = ''DEFAULT''       
   AND Convert(Datetime,N''' + @Date + ''') Between B.[Start Date] And b.[End Date]       
   AND A.[Interval] = ' + Convert(nvarchar(20),@AfterReleased) + '      
   AND [Calc Status] = ''CALCULATED''      
   ORDER BY A.[Interval] ASC'      
      
       
 EXEC(@Sql)      
      
--  Insert Into [PER REM Leave Detailed Report] ([Employee],[Month]  ,[Opening Balance]         ,[Monthly Entitlement]    ,[Days Taken]                                                           ,[Days Prev Taken]                        ,[Adjusted]        
  
  
 --,[Closing Balance]        ,[Type]                              ,[Leave])       
--  Select @Employee ,Convert(Char(11),@Date,113)                   ,[Annual Leave (Bal BFWD)] ,[Annual Leave (Entitle)] ,IsNull([Annual Leave (Taken)],0) + IsNull([Annual Leave (Encashed days)],0) ,IsNull([Annual Leave (Taken backdate)],0),[Annual Leave 
  
  
--(Adj)],[Annual Leave (Bal CFWD)],      
--  CASE WHEN [Calc Status] = 'RELEASED' THEN '<Font Color=Green>' + [Calc Status] + '</font>' else '<Font Color=Red>' + [Calc Status] + '</font>' END ,      
--  [Notes]      
--  From [PER REM Payroll Calc] A       
--  INNER JOIN [CO HRA Intervals] B ON A.Interval = B.Interval      
--  Where  Employee = @Employee       
--  AND [run group] = 'DEFAULT'       
--  AND Convert(Datetime,@Date) Between B.[Start Date] And b.[End Date]       
--  AND A.[Interval] = @AfterReleased      
--  AND [Calc Status] = 'CALCULATED'      
--  ORDER BY A.[Interval] ASC      
       
      
 IF not exists (select employee from [PER REM Leave Detailed Report] where Employee = @Employee and [Month] = @Date and [Type] like '%CALCULATED%' )      
 Begin      
  print 'begin the loop'      
  Select @Interval = [Interval]      
  From [CO HRA Intervals] B      
  Where Convert(Datetime,@Date) Between B.[Start Date] And b.[End Date]      
        
 DECLARE @LveSch nvarchar(100)
 DECLARE @Entity int 
 
 SELECT @LveSch = [LEave Scheme], @Entity = [Company Resource] FROM [CO_SRC_Search_VIEW] WHERE [Employee] = @Employee        
      
  IF @Interval > @LastReleased --and @Interval > @AfterReleased      
  BEGIN         
   if not exists (select employee from [PER REM Payroll Calc Temp] where [Employee] = @Employee and Interval = @Interval and [Run Group] = 'DEFAULT')   
   Begin
    INSERT INTO [PER REM Payroll Calc Temp] ([Employee],[Interval],[Run Group])      
    Values  (@Employee ,@Interval ,'DEFAULT')  
	
	INSERT INTO [dbo].[CO SRC Job Table Temp] ([Employee], [Interval], [Company Resource], [Leave Scheme])  
	VALUES (@Employee, @Interval, @Entity, @LveSch)  
   End      
      
   EXEC [PER LVE ReCalc Payroll] @Employee ,@Interval ,'DEFAULT' ,@LeaveType ,'Projected'      
         
          
   Set @Sql = 'Insert Into [PER REM Leave Detailed Report] ([Employee] ,[Month]   ,[Opening Balance]                ,[Monthly Entitlement]  ,[Days Taken]    ,[Days Prev Taken]     ,[Adjusted] ,[Closing Balance]  ,[Type]  ,[Leave])       
     Select  ' + Convert(nvarchar(20),@Employee) + '     ,N''' + @Date + ''',[' + @LeaveField + ' (Bal BFWD)] ,[' + @LeaveField + ' (Entitle)] ,IsNull([' + @LeaveField + ' (Taken)],0) + IsNull([' + @LeaveField + ' (Encashed days)],0) ,IsNull([' + @LeaveField + ' (Taken backdate)],0),[' + @LeaveField + ' (Adj)],[' + @LeaveField + ' (Bal CFWD)],''Projected'' ,N''''       
     From [PER REM Payroll Calc Temp] A Inner Join [CO HRA Intervals] B ON A.Interval = B.Interval      
     Where  Employee = ' + Convert(nvarchar(20),@Employee) + ' And Convert(Datetime,N''' + @Date + ''') Between B.[Start Date] And b.[End Date]'      
   
   print '================='       
   print @Sql       
   --select * from [PER REM Leave Detailed Report]      
   --where  [Employee] = @Employee      
  EXEC(@Sql)      
         
      
--    Insert Into [PER REM Leave Detailed Report] ([Employee] ,[Month],[Opening Balance]         ,[Monthly Entitlement]    ,[Days Taken]                                                           ,[Days Prev Taken]                        ,[Adjusted]       ,[Closing Balance]        ,[Type]      ,[Leave])       
--    Select  @Employee                   ,Convert(Char(11),@Date,113),[Annual Leave (Bal BFWD)] ,[Annual Leave (Entitle)] ,IsNull([Annual Leave (Taken)],0) + IsNull([Annual Leave (Encashed days)],0) ,IsNull([Annual Leave (Taken backdate)],0),[Annual Leave (Adj)],[Annual Leave (Bal CFWD)],'Projected' ,N'' --dbo.[Get_Employee_Leave_Desc](@Employee ,@Interval)      
--    From [PER REM Payroll Calc Temp] A Inner Join [CO HRA Intervals] B ON A.Interval = B.Interval      
--    Where  Employee = @Employee And Convert(Datetime,@Date) Between B.[Start Date] And b.[End Date]      
  END      
 END      
      
 Set @Month = @Month + 1      
 IF @Month = 13 And @Year < Year(GetDate())       
 Begin      
  Set @Year = @Year + 1      
  Set @Month = 1      
 End      
End      
      
-- Delete From [PER REM Leave Detailed Report]      
-- Where  [Employee] = @Employee And [Type] = 'Projected'       
-- And Convert(Datetime,[Month]) <= (Select Min([Engagement Date]) From [PER HRA Personal Employment] Where Employee = @Employee)      
      
      
      
IF @StartFromDate is not null      
 Delete From [PER REM Leave Detailed Report]      
 Where  [Employee] = @Employee And Convert(Datetime,[Month]) < @StartFromDate      
       
  DECLARE @company nvarchar(20)    
SELECT @Company = B.[Entity] FROM [CO_SRC_Search_VIEW]  A    
INNER JOIN [dbo]. [Company Entity View] B    
ON A.COMPANY = B.[Name] AND A.Employee = @Employee    
      
IF @Select = 'Yes'       
 Select Employee As [DEV_ID] ,Case when Month(Convert(Datetime,[Month])) = 12 Then '<b>' Else '' End + SubString(Convert(Char(11),Convert(Datetime,[Month]),113),4,8) + Case when Month(Convert(Datetime,[Month])) = 12 Then '</b>' Else '' End As [Month],    
  
  
 dbo.getcompanyprecision(@Company,[Opening Balance]) AS [Opening Balance] ,    
 dbo.getcompanyprecision(@Company,[Adjusted])AS [Adjusted],      
 dbo.getcompanyprecision(@Company,[Monthly Entitlement]) as  [Monthly Entitlement],    
 dbo.getcompanyprecision(@Company,[Days Taken]) as [Days Taken] ,    
 dbo.getcompanyprecision(@Company,[Days Prev Taken]) as [Days Prev Taken],      
 Case when Month(Convert(Datetime,[Month])) = 12 Then '<b>' Else '' End + Convert(nvarchar(11),dbo.getcompanyprecision(@Company,[Closing Balance])) + Case when Month(Convert(Datetime,[Month])) = 12 Then '</b>' Else '' End as [Closing Balance],      
 [Type]   ,[Leave] as [Notes]      
 From [PER REM Leave Detailed Report]       
 Where [Employee] = @Employee      
 Order By Convert(Datetime,[Month])      
  