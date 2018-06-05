-- Script Name: PER REM Employee Notifications_Screen
-- Screen Name or Table : PER_REM_Employee_Notifications | [PER REM Employee Notifications]
-- Sp Source Name: [Script New Screen Proc]
-- Develop By: Zeeshan Khalid
-- Date Created: 12 Dec 2017
-- Modify By:
-- Modify Date:
 
--  Session Variable aleady Exists    --
----------------------------------------
----------------------------------------
--   Screen the Session Variable      --
----------------------------------------
 

SET NOCOUNT ON

DELETE FROM [DEV PORTAL Session Variables]
WHERE Name = 'PER_REM_Employee_Notifications'
GO

INSERT INTO [DEV PORTAL Session Variables] ([Name])
VALUES (N'PER_REM_Employee_Notifications')
GO

----------------------------------------
--   	    Screen Header            --
----------------------------------------
 

SET NOCOUNT ON

DELETE FROM [DEV PORTAL Screen Header]
WHERE [Screen Name] = 'PER_REM_Employee_Notifications_Search'
GO

INSERT INTO [DEV PORTAL Screen Header] ([Screen Name],[Heading]         ,[MaxColumns],[SessionVariable]                ,[ListScreen]                            ,[Create Header],[Buttons Per Line],[Other],[Hide Header],[Multi User Lock],[Header Options],[Show Item Header],[Igonre Save Empty Column Sequences],[Logo Cell],[Search Enabled],[Security Off],[Active],[Process Redirect Message],[Workflow History],[CssClass])
VALUES (N'PER_REM_Employee_Notifications_Search'     ,N'Employee Buzzer',6           ,N'PER_REM_Employee_Notifications',N'PER_REM_Employee_Notifications_Search',N'No'          ,10                ,Null   ,N'Yes'       ,N'No'            ,Null            ,N'No'             ,Null                                ,N'default' ,N'Yes'          ,N'No'         ,1       ,Null                      ,N'No'             ,Null)
GO


SET NOCOUNT ON

DELETE FROM [DEV PORTAL Screen Header]
WHERE [Screen Name] = 'PER_REM_Employee_Notifications'
GO

INSERT INTO [DEV PORTAL Screen Header] ([Screen Name],[Heading]         ,[MaxColumns],[SessionVariable]                ,[ListScreen]                     ,[Create Header],[Buttons Per Line],[Other],[Hide Header],[Multi User Lock],[Header Options]                                                          ,[Show Item Header],[Igonre Save Empty Column Sequences],[Logo Cell],[Search Enabled],[Security Off],[Active],[Process Redirect Message],[Workflow History],[CssClass])
VALUES (N'PER_REM_Employee_Notifications'            ,N'Employee Buzzer',6           ,N'PER_REM_Employee_Notifications',N'PER_REM_Employee_Notifications',N'No'          ,10                ,Null   ,N'No'        ,N'No'            ,N'HideNumberOfRows|HideButtonSaveandAdd|HideButtonDelete|HideButtonSubmit',N'Yes'            ,Null                                ,N'default' ,N'No'           ,N'No'         ,1       ,Null                      ,N'No'             ,Null)
GO

----------------------------------------
--   	    Screen List              --
----------------------------------------
 

SET NOCOUNT ON

DELETE FROM [DEV PORTAL Screen List]
WHERE [Query Name] = 'PER_REM_Employee_Notifications_Search'
GO

INSERT INTO [DEV PORTAL Screen List] ([Query Name],[Query]                                             ,[Update Query]                                      ,[Delete Query],[SessionVariable]                ,[Options],[EditPage],[sampleQuery],[EditScreen],[EditFields],[Security Off],[Page Size],[Export to Excel],[Screen Title])
VALUES (N'PER_REM_Employee_Notifications_Search'  ,N'[PER_REM_Employee_Notifications_Search List Proc]',N'[PER_REM_Employee_Notifications_Search List Proc]',Null          ,N'PER_REM_Employee_Notifications',Null     ,Null      ,Null         ,Null        ,Null        ,N'No'         ,20         ,N'Yes'           ,Null)
GO


SET NOCOUNT ON

DELETE FROM [DEV PORTAL Screen List]
WHERE [Query Name] = 'PER_REM_Employee_Notifications_SearchResults'
GO

INSERT INTO [DEV PORTAL Screen List] ([Query Name]     ,[Query]                                                          ,[Update Query]                                              ,[Delete Query]                                                         ,[SessionVariable]                ,[Options],[EditPage],[sampleQuery],[EditScreen],[EditFields],[Security Off],[Page Size],[Export to Excel],[Screen Title])
VALUES (N'PER_REM_Employee_Notifications_SearchResults',N'[PER_REM_Employee_Notifications_SearchResult List Proc] [[10]]',N'[PER_REM_Employee_Notifications_SearchResult Update Proc]',N'[PER_REM_Employee_Notifications_SearchResult Delete Proc] [[DEV_ID]]',N'PER_REM_Employee_Notifications',N'HideDelete'     ,Null      ,Null         ,Null        ,Null        ,N'No'         ,20         ,N'Yes'           ,Null)
GO


SET NOCOUNT ON

DELETE FROM [DEV PORTAL Screen List]
WHERE [Query Name] = 'PER_REM_Employee_Notifications'
GO

INSERT INTO [DEV PORTAL Screen List] ([Query Name],[Query]                                                                                              ,[Update Query]                                                                                                                                                        ,[Delete Query]                                                                    ,[SessionVariable]                ,[Options],[EditPage],[sampleQuery],[EditScreen],[EditFields],[Security Off],[Page Size],[Export to Excel],[Screen Title])
VALUES (N'PER_REM_Employee_Notifications'         ,N'[PER_REM_Employee_Notifications List Proc] [[PER_REM_Employee_Notifications]],[[DEV_SYSTEMFIELDS]]',N'[PER_REM_Employee_Notifications Update Proc] [[PER_REM_Employee_Notifications]],[[20]],[[30]],[[40]],[[50]],[[60]],[[70]],[[80]],[[90]],[[DEV_SYSTEMFIELDS]]',N'[PER_REM_Employee_Notifications Delete Proc] [[PER_REM_Employee_Notifications]]',N'PER_REM_Employee_Notifications',Null     ,Null      ,Null         ,Null        ,Null        ,N'No'         ,20         ,N'Yes'           ,Null)
GO

----------------------------------------
--      Screen Search Details         --
----------------------------------------
 

SET NOCOUNT ON

DELETE FROM [DEV PORTAL Screen Detail]
WHERE [Screen Name] = 'PER_REM_Employee_Notifications_Search'
GO

INSERT INTO [DEV PORTAL Screen Detail] ([Screen Name],[Table Name]                       ,[Field Name],[Sequence],[Default Value],[Display Option],[Readonly],[cssclass],[maxlength],[Row],[Column],[EditGrid Row],[EditGrid Column],[Label Row],[Label Column],[EditGrid Label Row],[EditGrid Label Column],[Column Span],[RepeatColumns],[RepeatDirection],[Hidden],[OnChange],[Name_if_Button],[Mandatory],[Prompt]                  ,[Criteria],[Description],[HasChildControls],[Type]            ,[Other],[Query_Name],[Sub Screen Name],[Sub Screen Type],[Size],[CommandName],[CommandParameter],[ReturnData],[Help],[Modal],[MultiSelect],[Height],[HideWhenNew],[HideWhenValue],[GraphicButton],[Row Span],[Encrypt])
VALUES (N'PER_REM_Employee_Notifications_Search'     ,N'[PER REM Employee Notifications]',N'Employee' ,10        ,Null           ,Null            ,N'No'     ,Null      ,0          ,1    ,2       ,0             ,0                ,1          ,1             ,0                   ,0                      ,1            ,1              ,N'1'             ,N'No'   ,Null      ,Null            ,N'No'      ,N'Company Employee No'    ,Null      ,N'Employee'  ,N'No'             ,N'AutoCompleteBox',Null   ,Null        ,Null             ,Null             ,200   ,Null         ,Null              ,N'Yes'      ,Null  ,N'No'  ,N'No'        ,200     ,N'No'        ,Null           ,N'No'          ,1         ,N'No')
GO

INSERT INTO [DEV PORTAL Screen Detail] ([Screen Name],[Table Name]                       ,[Field Name] ,[Sequence],[Default Value],[Display Option],[Readonly],[cssclass],[maxlength],[Row],[Column],[EditGrid Row],[EditGrid Column],[Label Row],[Label Column],[EditGrid Label Row],[EditGrid Label Column],[Column Span],[RepeatColumns],[RepeatDirection],[Hidden],[OnChange]     ,[Name_if_Button],[Mandatory],[Prompt],[Criteria],[Description]           ,[HasChildControls],[Type]    ,[Other],[Query_Name],[Sub Screen Name],[Sub Screen Type],[Size],[CommandName]  ,[CommandParameter],[ReturnData],[Help],[Modal],[MultiSelect],[Height],[HideWhenNew],[HideWhenValue],[GraphicButton],[Row Span],[Encrypt])
VALUES (N'PER_REM_Employee_Notifications_Search'     ,N'[PER REM Employee Notifications]',N'2'         ,20        ,Null           ,Null            ,N'No'     ,Null      ,0          ,1    ,2       ,0             ,0                ,1          ,1             ,0                   ,0                      ,1            ,1              ,N'1'             ,N'No'   ,N'REBINDSEARCH',Null            ,N'No'      ,Null    ,Null      ,N'Go'                   ,N'No'             ,N'button' ,Null   ,Null        ,Null             ,Null             ,100   ,N'REBINDSEARCH',Null              ,N'Yes'      ,Null  ,N'No'  ,N'No'        ,200     ,N'No'        ,Null           ,N'No'          ,1         ,N'No')
GO

INSERT INTO [DEV PORTAL Screen Detail] ([Screen Name],[Table Name]                       ,[Field Name] ,[Sequence],[Default Value],[Display Option],[Readonly],[cssclass],[maxlength],[Row],[Column],[EditGrid Row],[EditGrid Column],[Label Row],[Label Column],[EditGrid Label Row],[EditGrid Label Column],[Column Span],[RepeatColumns],[RepeatDirection],[Hidden],[OnChange]     ,[Name_if_Button],[Mandatory],[Prompt],[Criteria],[Description]           ,[HasChildControls],[Type]     ,[Other],[Query_Name]                                   ,[Sub Screen Name],[Sub Screen Type],[Size],[CommandName]  ,[CommandParameter],[ReturnData],[Help],[Modal],[MultiSelect],[Height],[HideWhenNew],[HideWhenValue],[GraphicButton],[Row Span],[Encrypt])
VALUES (N'PER_REM_Employee_Notifications_Search'     ,N'[PER REM Employee Notifications]',N'4'         ,40        ,Null           ,Null            ,N'No'     ,Null      ,0          ,2    ,1       ,0             ,0                ,1          ,1             ,0                   ,0                      ,3            ,1              ,N'1'             ,N'No'   ,Null           ,Null            ,N'No'      ,Null    ,Null      ,N'Go'                   ,N'No'             ,N'radgrid',Null   ,N'PER_REM_Employee_Notifications_SearchResults',Null             ,Null             ,100  ,Null           ,Null              ,N'Yes'      ,Null  ,N'No'  ,N'No'        ,200     ,N'No'        ,Null           ,N'No'          ,1         ,N'No')
GO

INSERT INTO [DEV PORTAL Screen Detail] ([Screen Name],[Table Name]                       ,[Field Name] ,[Sequence],[Default Value],[Display Option],[Readonly],[cssclass],[maxlength],[Row],[Column],[EditGrid Row],[EditGrid Column],[Label Row],[Label Column],[EditGrid Label Row],[EditGrid Label Column],[Column Span],[RepeatColumns],[RepeatDirection],[Hidden],[OnChange]     ,[Name_if_Button],[Mandatory],[Prompt],[Criteria],[Description]           ,[HasChildControls],[Type]     ,[Other],[Query_Name]                                   ,[Sub Screen Name],[Sub Screen Type],[Size],[CommandName]  ,[CommandParameter],[ReturnData],[Help],[Modal],[MultiSelect],[Height],[HideWhenNew],[HideWhenValue],[GraphicButton],[Row Span],[Encrypt])
VALUES (N'PER_REM_Employee_Notifications_Search'     ,N'[PER REM Employee Notifications]',N'5'         ,50        ,Null           ,Null            ,N'No'     ,Null      ,0          ,1    ,2       ,0             ,0                ,1          ,1             ,0                   ,0                      ,1            ,1              ,N'1'             ,N'No'   ,N'NEWRECORD'   ,Null            ,N'No'      ,Null    ,Null      ,N'New'                  ,N'No'             ,N'button'  ,Null   ,Null                                           ,Null             ,Null             ,100   ,N'NEWRECORD'   ,Null              ,N'Yes'      ,Null  ,N'No'  ,N'No'        ,200     ,N'No'        ,Null           ,N'No'          ,1         ,N'No')
GO

----------------------------------------
--   	    Screen Details           --
----------------------------------------
 

SET NOCOUNT ON

DELETE FROM [DEV PORTAL Screen Detail]
WHERE [Screen Name] = 'PER_REM_Employee_Notifications'
GO

INSERT INTO [DEV PORTAL Screen Detail] ([Screen Name],[Table Name]                       ,[Field Name],[Sequence],[Default Value],[Display Option],[Readonly],[cssclass],[maxlength],[Row],[Column],[EditGrid Row],[EditGrid Column],[Label Row],[Label Column],[EditGrid Label Row],[EditGrid Label Column],[Column Span],[RepeatColumns],[RepeatDirection],[Hidden],[OnChange],[Name_if_Button],[Mandatory],[Prompt],[Criteria],[Description],[HasChildControls],[Type]    ,[Other],[Query_Name],[Sub Screen Name],[Sub Screen Type],[Size],[CommandName],[CommandParameter],[ReturnData],[Help],[Modal],[MultiSelect],[Height],[HideWhenNew],[HideWhenValue],[GraphicButton],[Row Span],[Encrypt])
VALUES (N'PER_REM_Employee_Notifications'            ,N'[PER REM Employee Notifications]',N'ID'       ,10        ,Null           ,Null            ,N'No'     ,Null      ,0          ,1    ,2       ,0             ,0                ,1          ,1             ,0                   ,0                      ,0            ,1              ,N'1'             ,N'Yes'  ,Null      ,Null            ,N'No'      ,Null    ,Null      ,N'ID'        ,N'No'             ,N'textbox',Null   ,Null        ,Null             ,Null             ,400   ,Null         ,Null              ,N'Yes'      ,N'ID' ,N'No'  ,N'No'        ,200     ,N'No'        ,Null           ,N'No'          ,1         ,N'No')
GO

INSERT INTO [DEV PORTAL Screen Detail] ([Screen Name],[Table Name]                       ,[Field Name],[Sequence],[Default Value],[Display Option],[Readonly],[cssclass],[maxlength],[Row],[Column],[EditGrid Row],[EditGrid Column],[Label Row],[Label Column],[EditGrid Label Row],[EditGrid Label Column],[Column Span],[RepeatColumns],[RepeatDirection],[Hidden],[OnChange],[Name_if_Button],[Mandatory],[Prompt]              ,[Criteria],[Description],[HasChildControls],[Type]            ,[Other],[Query_Name],[Sub Screen Name],[Sub Screen Type],[Size],[CommandName],[CommandParameter],[ReturnData],[Help]     ,[Modal],[MultiSelect],[Height],[HideWhenNew],[HideWhenValue],[GraphicButton],[Row Span],[Encrypt])
VALUES (N'PER_REM_Employee_Notifications'            ,N'[PER REM Employee Notifications]',N'Employee' ,20        ,Null           ,Null            ,N'No'     ,Null      ,0          ,2    ,2       ,0             ,0                ,2          ,1             ,0                   ,0                      ,0            ,1              ,N'1'             ,N'No'   ,Null      ,Null            ,N'No'      ,N'Company Employee No',Null      ,N'Employee'  ,N'No'             ,N'AutoCompleteBox',Null   ,Null        ,Null             ,Null             ,400   ,Null         ,Null              ,N'Yes'      ,N'Employee',N'No'  ,N'No'        ,200     ,N'No'        ,Null           ,N'No'          ,1         ,N'No')
GO

INSERT INTO [DEV PORTAL Screen Detail] ([Screen Name],[Table Name]                       ,[Field Name],[Sequence],[Default Value],[Display Option],[Readonly],[cssclass],[maxlength],[Row],[Column],[EditGrid Row],[EditGrid Column],[Label Row],[Label Column],[EditGrid Label Row],[EditGrid Label Column],[Column Span],[RepeatColumns],[RepeatDirection],[Hidden],[OnChange],[Name_if_Button],[Mandatory],[Prompt]                          ,[Criteria],[Description],[HasChildControls],[Type]    ,[Other],[Query_Name],[Sub Screen Name],[Sub Screen Type],[Size],[CommandName],[CommandParameter],[ReturnData],[Help]     ,[Modal],[MultiSelect],[Height],[HideWhenNew],[HideWhenValue],[GraphicButton],[Row Span],[Encrypt])
VALUES (N'PER_REM_Employee_Notifications'            ,N'[PER REM Employee Notifications]',N'Type'     ,30        ,Null           ,Null            ,N'No'     ,Null      ,50         ,3    ,2       ,0             ,0                ,3          ,1             ,0                   ,0                      ,0            ,1              ,N'1'             ,N'No'   ,Null      ,Null            ,N'Yes'     ,Null                              ,Null      ,N'Type'      ,N'No'             ,N'textbox',Null   ,Null        ,Null             ,Null             ,400   ,Null         ,Null              ,N'Yes'      ,N'Type'    ,N'No'  ,N'No'        ,200     ,N'No'        ,Null           ,N'No'          ,1         ,N'No')
GO

INSERT INTO [DEV PORTAL Screen Detail] ([Screen Name],[Table Name]                       ,[Field Name],[Sequence],[Default Value],[Display Option],[Readonly],[cssclass],[maxlength],[Row],[Column],[EditGrid Row],[EditGrid Column],[Label Row],[Label Column],[EditGrid Label Row],[EditGrid Label Column],[Column Span],[RepeatColumns],[RepeatDirection],[Hidden],[OnChange],[Name_if_Button],[Mandatory],[Prompt],[Criteria],[Description],[HasChildControls],[Type]         ,[Other],[Query_Name],[Sub Screen Name],[Sub Screen Type],[Size],[CommandName],[CommandParameter],[ReturnData],[Help]     ,[Modal],[MultiSelect],[Height],[HideWhenNew],[HideWhenValue],[GraphicButton],[Row Span],[Encrypt])
VALUES (N'PER_REM_Employee_Notifications'            ,N'[PER REM Employee Notifications]',N'Detail'   ,40        ,Null           ,Null            ,N'No'     ,Null      ,350        ,4    ,2       ,0             ,0                ,4          ,1             ,0                   ,0                      ,0            ,1              ,N'1'             ,N'No'   ,Null      ,Null            ,N'No'      ,Null    ,Null      ,N'Detail'    ,N'No'             ,N'largetextbox',Null   ,Null        ,Null             ,Null             ,400   ,Null         ,Null              ,N'Yes'      ,N'Detail'  ,N'No'  ,N'No'        ,200     ,N'No'        ,Null           ,N'No'          ,1         ,N'No')
GO

INSERT INTO [DEV PORTAL Screen Detail] ([Screen Name],[Table Name]                       ,[Field Name],[Sequence],[Default Value],[Display Option],[Readonly],[cssclass],[maxlength],[Row],[Column],[EditGrid Row],[EditGrid Column],[Label Row],[Label Column],[EditGrid Label Row],[EditGrid Label Column],[Column Span],[RepeatColumns],[RepeatDirection],[Hidden],[OnChange],[Name_if_Button],[Mandatory],[Prompt],[Criteria],[Description]       ,[HasChildControls],[Type]         ,[Other],[Query_Name],[Sub Screen Name],[Sub Screen Type],[Size],[CommandName],[CommandParameter],[ReturnData],[Help]      ,[Modal],[MultiSelect],[Height],[HideWhenNew],[HideWhenValue],[GraphicButton],[Row Span],[Encrypt])
VALUES (N'PER_REM_Employee_Notifications'            ,N'[PER REM Employee Notifications]',N'Info Date',50        ,Null           ,Null            ,N'No'     ,Null      ,0          ,5    ,2       ,0             ,0                ,5          ,1             ,0                   ,0                      ,0            ,1              ,N'1'             ,N'No'   ,Null      ,Null            ,N'No'      ,Null    ,Null      ,N'Information Date' ,N'No'             ,N'date'        ,Null   ,Null        ,Null             ,Null             ,400   ,Null         ,Null              ,N'Yes'      ,N'Info Date',N'No'  ,N'No'        ,200     ,N'No'        ,Null           ,N'No'          ,1         ,N'No')
GO

INSERT INTO [DEV PORTAL Screen Detail] ([Screen Name],[Table Name]                       ,[Field Name] ,[Sequence],[Default Value],[Display Option],[Readonly],[cssclass],[maxlength],[Row],[Column],[EditGrid Row],[EditGrid Column],[Label Row],[Label Column],[EditGrid Label Row],[EditGrid Label Column],[Column Span],[RepeatColumns],[RepeatDirection],[Hidden],[OnChange],[Name_if_Button],[Mandatory],[Prompt],[Criteria],[Description],[HasChildControls],[Type]         ,[Other],[Query_Name],[Sub Screen Name],[Sub Screen Type],[Size],[CommandName],[CommandParameter],[ReturnData],[Help]       ,[Modal],[MultiSelect],[Height],[HideWhenNew],[HideWhenValue],[GraphicButton],[Row Span],[Encrypt])
VALUES (N'PER_REM_Employee_Notifications'            ,N'[PER REM Employee Notifications]',N'Start Date',60        ,Null           ,Null            ,N'No'     ,Null      ,0          ,6    ,2       ,0             ,0                ,6          ,1             ,0                   ,0                      ,0            ,1              ,N'1'             ,N'No'   ,Null      ,Null            ,N'No'      ,Null    ,Null      ,N'Start Date',N'No'             ,N'date'        ,Null   ,Null        ,Null             ,Null             ,400   ,Null         ,Null              ,N'Yes'      ,N'Start Date',N'No'  ,N'No'        ,200     ,N'No'        ,Null           ,N'No'          ,1         ,N'No')
GO

INSERT INTO [DEV PORTAL Screen Detail] ([Screen Name],[Table Name]                       ,[Field Name] ,[Sequence],[Default Value],[Display Option],[Readonly],[cssclass],[maxlength],[Row],[Column],[EditGrid Row],[EditGrid Column],[Label Row],[Label Column],[EditGrid Label Row],[EditGrid Label Column],[Column Span],[RepeatColumns],[RepeatDirection],[Hidden],[OnChange],[Name_if_Button],[Mandatory],[Prompt],[Criteria],[Description],[HasChildControls],[Type]         ,[Other],[Query_Name],[Sub Screen Name],[Sub Screen Type],[Size],[CommandName],[CommandParameter],[ReturnData],[Help]       ,[Modal],[MultiSelect],[Height],[HideWhenNew],[HideWhenValue],[GraphicButton],[Row Span],[Encrypt])
VALUES (N'PER_REM_Employee_Notifications'            ,N'[PER REM Employee Notifications]',N'End Date'  ,70        ,Null           ,Null            ,N'No'     ,Null      ,0          ,7    ,2       ,0             ,0                ,7          ,1             ,0                   ,0                      ,0            ,1              ,N'1'             ,N'No'   ,Null      ,Null            ,N'No'      ,Null    ,Null      ,N'End Date'  ,N'No'             ,N'date'        ,Null   ,Null        ,Null             ,Null             ,400   ,Null         ,Null              ,N'Yes'      ,N'End Date'  ,N'No'  ,N'No'        ,200     ,N'No'        ,Null           ,N'No'          ,1         ,N'No')
GO

INSERT INTO [DEV PORTAL Screen Detail] ([Screen Name],[Table Name]                       ,[Field Name] ,[Sequence],[Default Value],[Display Option],[Readonly],[cssclass],[maxlength],[Row],[Column],[EditGrid Row],[EditGrid Column],[Label Row],[Label Column],[EditGrid Label Row],[EditGrid Label Column],[Column Span],[RepeatColumns],[RepeatDirection],[Hidden],[OnChange],[Name_if_Button],[Mandatory],[Prompt],[Criteria],[Description],[HasChildControls],[Type]            ,[Other],[Query_Name],[Sub Screen Name],[Sub Screen Type],[Size],[CommandName],[CommandParameter],[ReturnData],[Help]       ,[Modal],[MultiSelect],[Height],[HideWhenNew],[HideWhenValue],[GraphicButton],[Row Span],[Encrypt])
VALUES (N'PER_REM_Employee_Notifications'            ,N'[PER REM Employee Notifications]',N'Active'    ,80        ,Null           ,Null            ,N'No'     ,Null      ,5          ,8    ,2       ,0             ,0                ,8          ,1             ,0                   ,0                      ,0            ,1              ,N'1'             ,N'No'   ,Null      ,Null            ,N'Yes'     ,N'YesNo',Null      ,N'Active'    ,N'No'             ,N'AutoCompleteBox',Null   ,Null        ,Null             ,Null             ,400   ,Null         ,Null              ,N'Yes'      ,N'Active'    ,N'No'  ,N'No'        ,200     ,N'No'        ,Null           ,N'No'          ,1         ,N'No')
GO

INSERT INTO [DEV PORTAL Screen Detail] ([Screen Name],[Table Name]                       ,[Field Name]     ,[Sequence],[Default Value],[Display Option],[Readonly],[cssclass],[maxlength],[Row],[Column],[EditGrid Row],[EditGrid Column],[Label Row],[Label Column],[EditGrid Label Row],[EditGrid Label Column],[Column Span],[RepeatColumns],[RepeatDirection],[Hidden],[OnChange],[Name_if_Button],[Mandatory],[Prompt],[Criteria],[Description]    ,[HasChildControls],[Type]            ,[Other],[Query_Name],[Sub Screen Name],[Sub Screen Type],[Size],[CommandName],[CommandParameter],[ReturnData],[Help]           ,[Modal],[MultiSelect],[Height],[HideWhenNew],[HideWhenValue],[GraphicButton],[Row Span],[Encrypt])
VALUES (N'PER_REM_Employee_Notifications'            ,N'[PER REM Employee Notifications]',N'Applied to All',90        ,Null           ,Null            ,N'No'     ,Null      ,5          ,9    ,2       ,0             ,0                ,9          ,1             ,0                   ,0                      ,0            ,1              ,N'1'             ,N'No'   ,Null      ,Null            ,N'Yes'     ,N'YesNo',Null      ,N'Applied to All',N'No'             ,N'AutoCompleteBox',Null   ,Null        ,Null             ,Null             ,400   ,Null         ,Null              ,N'Yes'      ,N'Applied to All',N'No'  ,N'No'        ,200     ,N'No'        ,Null           ,N'No'          ,1         ,N'No')
GO

----------------------------------------
--   	Screen Server Task           --
----------------------------------------
 

SET NOCOUNT ON

DELETE FROM [DEV PORTAL Screen Server Task]
WHERE [Screen Name] = 'PER_REM_Employee_Notifications_Search'
GO

INSERT INTO [DEV PORTAL Screen Server Task] ([Screen Name],[Query Name],[Command]      ,[Action]     ,[Statement],[Action Sequence],[Active],[Run SubScreen Call])
VALUES (N'PER_REM_Employee_Notifications_Search'          ,Null        ,N'REBINDSEARCH',N'DEV_REBIND',N'40'      ,1                ,1       ,N'Yes')
GO

INSERT INTO [DEV PORTAL Screen Server Task] ([Screen Name],[Query Name],[Command]      ,[Action]       ,[Statement]                                                                                              ,[Action Sequence],[Active],[Run SubScreen Call])
VALUES (N'PER_REM_Employee_Notifications_Search'          ,Null        ,N'NEWRECORD'   ,N'DEV_REDIRECT',N'../DEVForms/DEV PORTAL SCREEN.aspx?Screen=PER_REM_Employee_Notifications&ScreenAction=New&ScreenType=0',1                ,1       ,N'Yes')
GO


SET NOCOUNT ON

DELETE FROM [DEV PORTAL Screen Server Task]
WHERE [Query Name] = 'PER_REM_Employee_Notifications_SearchResults'
GO

INSERT INTO [DEV PORTAL Screen Server Task] ([Screen Name],[Query Name]                                   ,[Command],[Action]       ,[Statement]                                                                             ,[Action Sequence],[Active],[Run SubScreen Call])
VALUES (Null                                              ,N'PER_REM_Employee_Notifications_SearchResults',N'SELECT',N'DEV_REDIRECT',N'../DEVForms/DEV PORTAL SCREEN.aspx?Screen=PER_REM_Employee_Notifications&ScreenType=0',1                ,1       ,N'Yes')
GO


SET NOCOUNT ON

DELETE FROM [DEV PORTAL Screen Server Task]
WHERE [Screen Name] = 'PER_REM_Employee_Notifications'
GO

----------------------------------------
--   	    Screen Buttons           --
----------------------------------------
 

SET NOCOUNT ON

DELETE FROM [DEV PORTAL Screen Buttons]
WHERE [Screen Name] = 'PER_REM_Employee_Notifications_Search'
GO


SET NOCOUNT ON

DELETE FROM [DEV PORTAL Screen Buttons]
WHERE [Screen Name] = 'PER_REM_Employee_Notifications'
GO

INSERT INTO [DEV PORTAL Screen Buttons] ([Screen Name],[Image]                       ,[Link]                                                                                                ,[Help]         ,[Target],[Sequence],[Active],[Description]   ,[Add to Menu],[Command Name],[Command Arg])
VALUES (N'PER_REM_Employee_Notifications'             ,N'../images/VacancySearch.gif',N'DEV PORTAL SCREEN.aspx?Screen=PER_REM_Employee_Notifications_Search&ScreenType=0&User=Administrator',N'Search Again',N'_self',1         ,1       ,N'Back 2 Search',N'Top Menu'  ,Null          ,Null)
GO

----------------------------------------
--     Screen Security Objects        --
----------------------------------------
 

SET NOCOUNT ON

DELETE FROM [DEV PORTAL SECURITY OBJECTS]
WHERE [Screen Name] = 'PER_REM_Employee_Notifications'
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name]                    ,[Screen List],[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'GULF HR COMPANY HR'                     ,N'PER_REM_Employee_Notifications',Null         ,Null           ,1     ,1    ,1       ,1       ,1     ,1       ,1     ,Null)
GO


SET NOCOUNT ON

DELETE FROM [DEV PORTAL SECURITY OBJECTS]
WHERE [Screen Name] = 'PER_REM_Employee_Notifications_Search'
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name]                           ,[Screen List],[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'GULF HR COMPANY HR'                     ,N'PER_REM_Employee_Notifications_Search',Null         ,Null           ,1     ,1    ,1       ,1       ,1     ,1       ,1     ,Null)
GO


SET NOCOUNT ON

DELETE FROM [DEV PORTAL SECURITY OBJECTS]
WHERE [Screen List] = 'PER_REM_Employee_Notifications_SearchResults'
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name],[Screen List]                                  ,[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'GULF HR COMPANY HR'                     ,Null         ,N'PER_REM_Employee_Notifications_SearchResults',Null           ,1     ,1    ,1       ,1       ,1     ,1       ,1     ,Null)
GO

----------------------------------------
--   Screen Search List Procedure     --
----------------------------------------
 
Drop Proc [PER_REM_Employee_Notifications_Search List Proc]
go

Create Proc [PER_REM_Employee_Notifications_Search List Proc]
@Dummy nvarchar(50)=''
AS
SELECT
'' as [Employee]
Go
-------------------------------------------
-- Screen Search Result List Procedure   --
-------------------------------------------
 
Drop Proc [PER_REM_Employee_Notifications_SearchResult List Proc]
Go
Create Proc [PER_REM_Employee_Notifications_SearchResult List Proc]
@SearchField nvarchar(50)=NULL,

--System Fields
@ScreenType nvarchar(15)  = 'FORM',
@Rows Int = 0,
@CommandName nvarchar(50)=NULL, --Command Selected from the Front End
@DEV_ID Int  = NULL, --Current Session Variable Value
@User nvarchar(50)  = NULL
AS

--IF @SearchField is null
--BEGIN
--SELECT TOP 30
--[ID] as [DEV_ID], 
--[Employee],--[Type],--[Detail],--[Info Date],--[Start Date],--[End Date],--[Active],--[Applied to All],
--convert(nvarchar(11),a.[Verified Date],113) as 'Verified'

--FROM  
--[PER REM Employee Notifications] A

--ORDER BY A.[Verified Date] DESC
--END
--ELSE
--BEGIN
SELECT TOP 50
[ID] as [DEV_ID], 
(SELECT [Number] + ' - ' + [Name Only] + ' - ' + [Job Title] FROM CO_SRC_Search_View WHERE Employee = A.Employee) AS [Employee],[Type],[Detail],CONVERT(nvarchar,[Info Date],106) AS [Information Date],CONVERT(nvarchar,[Start Date],106) AS [Start Date],CONVERT(nvarchar,[End Date],106) AS [End Date],[Active],[Applied to All]

FROM  
[PER REM Employee Notifications] A

WHERE 
(1=(CASE WHEN @SearchField IS NULL THEN 1 ELSE 0 END) OR A.Employee = @SearchField)

ORDER BY ID ASC

--END
Go
--------------------------------------------
--Screen Search Result Delete Procedure   --
--------------------------------------------
 
Drop Proc [PER_REM_Employee_Notifications_SearchResult Delete Proc]
Go

Create Proc [PER_REM_Employee_Notifications_SearchResult Delete Proc]
@ID Int
AS

DELETE FROM [PER REM Employee Notifications] WHERE [ID] = @ID

SELECT @ID as [DELETED_ID]

GO
--------------------------------------------
--        Screen List Procedure           --
--------------------------------------------
 
Drop Proc [PER_REM_Employee_Notifications List Proc]
Go

Create Proc [PER_REM_Employee_Notifications List Proc]
@ID Int,

--System Provided Values
@ScreenType nvarchar(15)  = 'FORM',--EDITGRID or FORM
@Rows Int = 0,
@CommandName nvarchar(50)=NULL, --Command Selected from the Front End
@DEV_ID Int  = NULL, --Current Session Variable Value
@User nvarchar(50)  = NULL
AS

Declare @Range nvarchar(50)

SET @Range = '1-' + Convert(nvarchar(20),@Rows)

SELECT 
[Employee],[Type],[Detail],[Info Date],[Start Date],[End Date],[Active],[Applied to All],
[Verified Date],
[Verified User] as [DEV_User],
A.[ID] as [DEV_ID],
A.[ID] as [DEV_OrderClause]

FROM
[PER REM Employee Notifications] A

WHERE A.[ID] = @ID
AND not (IsNull(@CommandName,'') = 'DEV_ADD' And IsNull(@ScreenType,'')='FORM')

UNION ALL

SELECT
Null as [Employee],Null as [Type],Null as [Detail],Null as [Info Date],Null as [Start Date],Null as [End Date],Null as [Active],Null as [Applied to All],
Null as [Verified Date],
@user as [DEV_User],
Null as [DEV_ID],
9999999 as [DEV_OrderClause]
FROM
dbo.createranges(@Range) Ranges

order by  [DEV_OrderClause] DESC

GO
--------------------------------------------
--        Screen Update Procedure         --
--------------------------------------------
 
Drop Proc [PER_REM_Employee_Notifications Update Proc]
Go

Create Proc [PER_REM_Employee_Notifications Update Proc]
@ID Int,
--All Fields Required for Update@Employee int,@Type nvarchar(50),@Detail nvarchar(350),@InfoDate datetime,@StartDate datetime,@EndDate datetime,@Active nvarchar(5),@AppliedtoAll nvarchar(5),
--------------------------------
--System Provided Values
@ScreenType nvarchar(15)  = 'FORM',--EDITGRID or FORM
@Rows Int = 1,
@CommandName nvarchar(50), --Command Selected from the Front End
@DEV_ID Int  = NULL, --Current Session Variable Value
@User nvarchar(50)  = NULL

AS

IF @AppliedtoAll = 'No' AND @Employee IS NULL
BEGIN
	RAISERROR('Employee cannot be null if Applied to all is set to ''No''',16,1)
	RETURN
END

IF @AppliedtoAll = 'Yes' AND @Employee IS NOT NULL
BEGIN
	RAISERROR('Employee is not required if Applied to all is set to ''Yes''',16,1)
	RETURN
END

IF @CommandName = 'DEV_SAVE' OR @CommandName = 'DEV_ADD'
BEGIN
IF EXISTS(
SELECT [ID] FROM [PER REM Employee Notifications] A
WHERE [ID] = @DEV_ID)

BEGIN --Update
UPDATE [PER REM Employee Notifications]
SET 
[Employee] = @Employee,[Type] = @Type,[Detail] = @Detail,[Info Date] = @InfoDate,[Start Date] = @StartDate,[End Date] = @EndDate,[Active] = @Active,[Applied to All] = @AppliedtoAll,
[Verified Date] = GetDate(),
[Verified User] = @User
WHERE [ID] = @DEV_ID
END 
ELSE -- Insert
BEGIN
INSERT INTO
[PER REM Employee Notifications]
(
[Employee],[Type],[Detail],[Info Date],[Start Date],[End Date],[Active],[Applied to All],
[Verified User]
)
VALUES
(
@Employee,@Type,@Detail,@InfoDate,@StartDate,@EndDate,@Active,@AppliedtoAll,
@User
)

SELECT @DEV_ID = SCOPE_IDENTITY()

END

SELECT @DEV_ID as [DEV_ID]
RETURN
END
GO
--------------------------------------------
--        Screen Delete Procedure         --
--------------------------------------------
 
Drop Proc [PER_REM_Employee_Notifications Delete Proc]
Go

Create Proc [PER_REM_Employee_Notifications Delete Proc]
@ID Int
AS

DELETE FROM [PER REM Employee Notifications] WHERE [ID] = @ID

SELECT @ID as [DELETED_ID]

GO
