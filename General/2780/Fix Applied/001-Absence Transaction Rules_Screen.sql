-- Script Name: CO LVE Absence Transaction Rules_Screen
-- Screen Name or Table : CO_LVE_Absence_Transaction_Rules
-- Script Type: Regenerated From Database - OASHRLIVE
-- Develop By: Zeeshan Khalid
-- Date Recreated: 12 Jul 2018
-- Modify By:
-- Modify Date:
SET NOCOUNT ON

 

-------------------------------------------
--CREATE SCREEN SESSION SPACE STARTS HERE--
-------------------------------------------

SET NOCOUNT ON

DELETE FROM [DEV PORTAL SESSION VARIABLES]
WHERE Name='CO_LVE_Absence_Transaction_Rules'
GO

INSERT INTO [DEV PORTAL SESSION VARIABLES] ([Name])
VALUES (N'CO_LVE_Absence_Transaction_Rules')
GO

-----------------------------------
--SCREEN HEADER SPACE STARTS HERE--
-----------------------------------

SET NOCOUNT ON

DELETE FROM [DEV PORTAL SCREEN HEADER]
WHERE [Screen Name]='CO_LVE_Absence_Transaction_Rules_Search'
GO

INSERT INTO [DEV PORTAL SCREEN HEADER] ([Screen Name],[Heading],[MaxColumns],[SessionVariable]                  ,[ListScreen]                              ,[Create Header],[Buttons Per Line],[Other],[Hide Header],[Multi User Lock],[Header Options],[Show Item Header],[Igonre Save Empty Column Sequences],[Logo Cell],[Search Enabled],[Security Off],[Active],[Process Redirect Message],[Workflow History],[CssClass])
VALUES (N'CO_LVE_Absence_Transaction_Rules_Search'   ,Null     ,6           ,N'CO_LVE_Absence_Transaction_Rules',N'CO_LVE_Absence_Transaction_Rules_Search',N'No'          ,10                ,Null   ,N'Yes'       ,N'No'            ,Null            ,N'No'             ,Null                                ,N'default' ,N'Yes'          ,N'No'         ,1       ,Null                      ,N'No'             ,Null)
GO


SET NOCOUNT ON

DELETE FROM [DEV PORTAL SCREEN HEADER]
WHERE [Screen Name]='CO_LVE_Absence_Transaction_Rules'
GO

INSERT INTO [DEV PORTAL SCREEN HEADER] ([Screen Name],[Heading]             ,[MaxColumns],[SessionVariable]                  ,[ListScreen]                       ,[Create Header],[Buttons Per Line],[Other],[Hide Header],[Multi User Lock],[Header Options]   ,[Show Item Header],[Igonre Save Empty Column Sequences],[Logo Cell],[Search Enabled],[Security Off],[Active],[Process Redirect Message],[Workflow History],[CssClass])
VALUES (N'CO_LVE_Absence_Transaction_Rules'          ,N'Company Leave Rules',6           ,N'CO_LVE_Absence_Transaction_Rules',N'CO_LVE_Absence_Transaction_Rules',N'No'          ,10                ,Null   ,N'No'        ,N'No'            ,N'HideNumberOfRows',N'Yes'            ,Null                                ,N'default' ,N'No'           ,N'No'         ,1       ,Null                      ,N'No'             ,Null)
GO

-----------------------------------
---SCREEN LIST SPACE STARTS HERE---
-----------------------------------

SET NOCOUNT ON

DELETE FROM [DEV PORTAL SCREEN LIST]
WHERE [Query Name]='CO_LVE_Absence_Transaction_Rules_Search'
GO

INSERT INTO [DEV PORTAL SCREEN LIST] ([Query Name],[Query]                                               ,[Update Query]                                        ,[Delete Query],[SessionVariable]                  ,[Options],[EditPage],[sampleQuery],[EditScreen],[EditFields],[Security Off],[Page Size],[Export to Excel],[Screen Title])
VALUES (N'CO_LVE_Absence_Transaction_Rules_Search',N'[CO_LVE_Absence_Transaction_Rules_Search List Proc]',N'[CO_LVE_Absence_Transaction_Rules_Search List Proc]',Null          ,N'CO_LVE_Absence_Transaction_Rules',Null     ,Null      ,Null         ,Null        ,Null        ,N'No'         ,100000     ,N'Yes'           ,Null)
GO


SET NOCOUNT ON

DELETE FROM [DEV PORTAL SCREEN LIST]
WHERE [Query Name]='CO_LVE_Absence_Transaction_Rules'
GO

INSERT INTO [DEV PORTAL SCREEN LIST] ([Query Name],[Query]                                                                                                  ,[Update Query]                                                                                                                                                                                                    ,[Delete Query]                                                                        ,[SessionVariable]                  ,[Options],[EditPage],[sampleQuery],[EditScreen],[EditFields],[Security Off],[Page Size],[Export to Excel],[Screen Title])
VALUES (N'CO_LVE_Absence_Transaction_Rules'       ,N'[CO_LVE_Absence_Transaction_Rules List Proc] [[CO_LVE_Absence_Transaction_Rules]],[[DEV_SYSTEMFIELDS]]',N'[CO_LVE_Absence_Transaction_Rules Update Proc] [[CO_LVE_Absence_Transaction_Rules]],[[10]],[[20]],[[30]],[[40]],[[50]],[[60]],[[70]],[[80]],[[90]],[[100]],[[110]],[[120]],[[130]],[[140]],[[150]],[[DEV_SYSTEMFIELDS]]',N'[CO_LVE_Absence_Transaction_Rules Delete Proc] [[CO_LVE_Absence_Transaction_Rules]]',N'CO_LVE_Absence_Transaction_Rules',Null     ,Null      ,Null         ,Null        ,Null        ,N'No'         ,100000     ,N'Yes'           ,Null)
GO


SET NOCOUNT ON

DELETE FROM [DEV PORTAL SCREEN LIST]
WHERE [Query Name]='CO_LVE_Absence_Transaction_Rules_SearchResults'
GO

INSERT INTO [DEV PORTAL SCREEN LIST] ([Query Name]       ,[Query]                                                                                ,[Update Query]                                                ,[Delete Query]                                                           ,[SessionVariable]                  ,[Options]                                                                                                                                    ,[EditPage],[sampleQuery],[EditScreen],[EditFields],[Security Off],[Page Size],[Export to Excel],[Screen Title])
VALUES (N'CO_LVE_Absence_Transaction_Rules_SearchResults',N'[CO_LVE_Absence_Transaction_Rules_SearchResult List Proc] [[10]],[[CompanyLoggedIn]]',N'[CO_LVE_Absence_Transaction_Rules_SearchResult Update Proc]',N'[CO_LVE_Absence_Transaction_Rules_SearchResult Delete Proc] [[DEV_ID]]',N'CO_LVE_Absence_Transaction_Rules',N'|||||||||||ALLOWSORTING|ALLOWMULTICOLUMNSORTING|SHOWEXPORTTOPDFBUTTON|SHOWEXPORTTOWORDBUTTON|SHOWEXPORTTOEXCELBUTTON|SHOWEXPORTTOCSVBUTTON',Null      ,Null         ,Null        ,Null        ,N'No'         ,100000     ,N'Yes'           ,Null)
GO

--------------------------------------
---SCREEN DETAILS SPACE STARTS HERE---
--------------------------------------

SET NOCOUNT ON

DELETE FROM [DEV PORTAL SCREEN DETAIL]
WHERE [Screen Name]='CO_LVE_Absence_Transaction_Rules_Search'
GO

INSERT INTO [DEV PORTAL SCREEN DETAIL] ([Screen Name],[Table Name]                         ,[Field Name] ,[Sequence],[Default Value],[Display Option],[Readonly],[cssclass],[maxlength],[Row],[Column],[EditGrid Row],[EditGrid Column],[Label Row],[Label Column],[EditGrid Label Row],[EditGrid Label Column],[Column Span],[RepeatColumns],[RepeatDirection],[Hidden],[OnChange],[Name_if_Button],[Mandatory],[Prompt],[Criteria],[Description]          ,[HasChildControls],[Type]    ,[Other],[Query_Name],[Sub Screen Name],[Sub Screen Type],[Size],[CommandName],[CommandParameter],[ReturnData],[Help],[Modal],[MultiSelect],[Height],[HideWhenNew],[HideWhenValue],[GraphicButton],[Row Span],[Encrypt])
VALUES (N'CO_LVE_Absence_Transaction_Rules_Search'   ,N'[CO LVE Absence Transaction Rules]',N'[Employee]',10        ,Null           ,Null            ,N'No'     ,Null      ,0          ,1    ,2       ,0             ,0                ,1          ,1             ,0                   ,0                      ,1            ,1              ,N'1'             ,N'No'   ,Null      ,Null            ,N'No'      ,Null    ,Null      ,N'Search for [Company]',N'No'             ,N'textbox',Null   ,Null        ,Null             ,Null             ,200   ,Null         ,Null              ,N'Yes'      ,Null  ,N'No'  ,N'No'        ,200     ,N'No'        ,Null           ,N'No'          ,1         ,N'No')
GO

INSERT INTO [DEV PORTAL SCREEN DETAIL] ([Screen Name],[Table Name]                         ,[Field Name] ,[Sequence],[Default Value],[Display Option],[Readonly],[cssclass],[maxlength],[Row],[Column],[EditGrid Row],[EditGrid Column],[Label Row],[Label Column],[EditGrid Label Row],[EditGrid Label Column],[Column Span],[RepeatColumns],[RepeatDirection],[Hidden],[OnChange]     ,[Name_if_Button],[Mandatory],[Prompt],[Criteria],[Description]          ,[HasChildControls],[Type]    ,[Other],[Query_Name],[Sub Screen Name],[Sub Screen Type],[Size],[CommandName]  ,[CommandParameter],[ReturnData],[Help],[Modal],[MultiSelect],[Height],[HideWhenNew],[HideWhenValue],[GraphicButton],[Row Span],[Encrypt])
VALUES (N'CO_LVE_Absence_Transaction_Rules_Search'   ,N'[CO LVE Absence Transaction Rules]',N'2'         ,20        ,Null           ,Null            ,N'No'     ,Null      ,0          ,1    ,2       ,0             ,0                ,1          ,1             ,0                   ,0                      ,1            ,1              ,N'1'             ,N'No'   ,N'REBINDSEARCH',Null            ,N'No'      ,Null    ,Null      ,N'Go'                  ,N'No'             ,N'button' ,Null   ,Null        ,Null             ,Null             ,100   ,N'REBINDSEARCH',Null              ,N'Yes'      ,Null  ,N'No'  ,N'No'        ,200     ,N'No'        ,Null           ,N'No'          ,1         ,N'No')
GO

INSERT INTO [DEV PORTAL SCREEN DETAIL] ([Screen Name],[Table Name]                         ,[Field Name] ,[Sequence],[Default Value],[Display Option],[Readonly],[cssclass],[maxlength],[Row],[Column],[EditGrid Row],[EditGrid Column],[Label Row],[Label Column],[EditGrid Label Row],[EditGrid Label Column],[Column Span],[RepeatColumns],[RepeatDirection],[Hidden],[OnChange]     ,[Name_if_Button],[Mandatory],[Prompt],[Criteria],[Description]          ,[HasChildControls],[Type]    ,[Other],[Query_Name]                                     ,[Sub Screen Name],[Sub Screen Type],[Size],[CommandName]  ,[CommandParameter],[ReturnData],[Help],[Modal],[MultiSelect],[Height],[HideWhenNew],[HideWhenValue],[GraphicButton],[Row Span],[Encrypt])
VALUES (N'CO_LVE_Absence_Transaction_Rules_Search'   ,N'[CO LVE Absence Transaction Rules]',N'4'         ,40        ,Null           ,Null            ,N'No'     ,Null      ,0          ,2    ,1       ,0             ,0                ,1          ,1             ,0                   ,0                      ,3            ,1              ,N'1'             ,N'No'   ,Null           ,Null            ,N'No'      ,Null    ,Null      ,N'Go'                  ,N'No'             ,N'radgrid',Null   ,N'CO_LVE_Absence_Transaction_Rules_SearchResults',Null             ,Null             ,1000  ,Null           ,Null              ,N'Yes'      ,Null  ,N'No'  ,N'No'        ,200     ,N'No'        ,Null           ,N'No'          ,1         ,N'No')
GO

INSERT INTO [DEV PORTAL SCREEN DETAIL] ([Screen Name],[Table Name]                         ,[Field Name] ,[Sequence],[Default Value],[Display Option],[Readonly],[cssclass],[maxlength],[Row],[Column],[EditGrid Row],[EditGrid Column],[Label Row],[Label Column],[EditGrid Label Row],[EditGrid Label Column],[Column Span],[RepeatColumns],[RepeatDirection],[Hidden],[OnChange]     ,[Name_if_Button],[Mandatory],[Prompt],[Criteria],[Description]          ,[HasChildControls],[Type]    ,[Other],[Query_Name]                                     ,[Sub Screen Name],[Sub Screen Type],[Size],[CommandName]  ,[CommandParameter],[ReturnData],[Help],[Modal],[MultiSelect],[Height],[HideWhenNew],[HideWhenValue],[GraphicButton],[Row Span],[Encrypt])
VALUES (N'CO_LVE_Absence_Transaction_Rules_Search'   ,N'[CO LVE Absence Transaction Rules]',N'5'         ,50        ,Null           ,Null            ,N'No'     ,Null      ,0          ,1    ,2       ,0             ,0                ,1          ,1             ,0                   ,0                      ,1            ,1              ,N'1'             ,N'No'   ,N'NEWRECORD'   ,Null            ,N'No'      ,Null    ,Null      ,N'New'                 ,N'No'             ,N'button' ,Null   ,Null                                             ,Null             ,Null             ,100   ,N'NEWRECORD'   ,Null              ,N'Yes'      ,Null  ,N'No'  ,N'No'        ,200     ,N'No'        ,Null           ,N'No'          ,1         ,N'No')
GO


SET NOCOUNT ON

DELETE FROM [DEV PORTAL SCREEN DETAIL]
WHERE [Screen Name]='CO_LVE_Absence_Transaction_Rules'
GO

INSERT INTO [DEV PORTAL SCREEN DETAIL] ([Screen Name],[Table Name]                         ,[Field Name],[Sequence],[Default Value],[Display Option],[Readonly],[cssclass],[maxlength],[Row],[Column],[EditGrid Row],[EditGrid Column],[Label Row],[Label Column],[EditGrid Label Row],[EditGrid Label Column],[Column Span],[RepeatColumns],[RepeatDirection],[Hidden],[OnChange],[Name_if_Button],[Mandatory],[Prompt]         ,[Criteria],[Description],[HasChildControls],[Type]            ,[Other],[Query_Name],[Sub Screen Name],[Sub Screen Type],[Size],[CommandName],[CommandParameter],[ReturnData],[Help]   ,[Modal],[MultiSelect],[Height],[HideWhenNew],[HideWhenValue],[GraphicButton],[Row Span],[Encrypt])
VALUES (N'CO_LVE_Absence_Transaction_Rules'          ,N'[CO LVE Absence Transaction Rules]',N'Entity'   ,10        ,Null           ,Null            ,N'No'     ,Null      ,0          ,1    ,2       ,0             ,0                ,1          ,1             ,0                   ,0                      ,0            ,5              ,N'1'             ,N'No'   ,Null      ,Null            ,N'Yes'     ,N'Company Entity',Null      ,N'Company'   ,N'No'             ,N'AutoCompleteBox',Null   ,Null        ,Null             ,Null             ,300   ,Null         ,Null              ,N'Yes'      ,N'Entity',N'No'  ,N'No'        ,200     ,N'No'        ,Null           ,N'No'          ,1         ,N'No')
GO

INSERT INTO [DEV PORTAL SCREEN DETAIL] ([Screen Name],[Table Name]                         ,[Field Name]          ,[Sequence],[Default Value],[Display Option],[Readonly],[cssclass],[maxlength],[Row],[Column],[EditGrid Row],[EditGrid Column],[Label Row],[Label Column],[EditGrid Label Row],[EditGrid Label Column],[Column Span],[RepeatColumns],[RepeatDirection],[Hidden],[OnChange],[Name_if_Button],[Mandatory],[Prompt]         ,[Criteria],[Description]         ,[HasChildControls],[Type]            ,[Other],[Query_Name],[Sub Screen Name],[Sub Screen Type],[Size],[CommandName],[CommandParameter],[ReturnData],[Help]                ,[Modal],[MultiSelect],[Height],[HideWhenNew],[HideWhenValue],[GraphicButton],[Row Span],[Encrypt])
VALUES (N'CO_LVE_Absence_Transaction_Rules'          ,N'[CO LVE Absence Transaction Rules]',N'Absence Transaction',20        ,Null           ,Null            ,N'No'     ,Null      ,50         ,2    ,2       ,0             ,0                ,2          ,1             ,0                   ,0                      ,0            ,5              ,N'1'             ,N'No'   ,Null      ,Null            ,N'Yes'     ,N'Leave Type'    ,Null      ,N'Absence Transaction',N'No'             ,N'AutoCompleteBox',Null   ,Null        ,Null             ,Null             ,300   ,Null         ,Null              ,N'Yes'      ,N'Absence Transaction',N'No'  ,N'No'        ,200     ,N'No'        ,Null           ,N'No'          ,1         ,N'No')
GO

INSERT INTO [DEV PORTAL SCREEN DETAIL] ([Screen Name],[Table Name]                         ,[Field Name]          ,[Sequence],[Default Value],[Display Option],[Readonly],[cssclass],[maxlength],[Row],[Column],[EditGrid Row],[EditGrid Column],[Label Row],[Label Column],[EditGrid Label Row],[EditGrid Label Column],[Column Span],[RepeatColumns],[RepeatDirection],[Hidden],[OnChange],[Name_if_Button],[Mandatory],[Prompt]         ,[Criteria],[Description]         ,[HasChildControls],[Type]            ,[Other],[Query_Name],[Sub Screen Name],[Sub Screen Type],[Size],[CommandName],[CommandParameter],[ReturnData],[Help]                ,[Modal],[MultiSelect],[Height],[HideWhenNew],[HideWhenValue],[GraphicButton],[Row Span],[Encrypt])
VALUES (N'CO_LVE_Absence_Transaction_Rules'          ,N'[CO LVE Absence Transaction Rules]',N'Rule Number'        ,30        ,Null           ,Null            ,N'No'     ,Null      ,0          ,3    ,2       ,0             ,0                ,3          ,1             ,0                   ,0                      ,0            ,1              ,N'1'             ,N'No'   ,Null      ,Null            ,N'Yes'     ,Null             ,Null      ,N'Rule Number'        ,N'No'             ,N'textbox'        ,Null   ,Null        ,Null             ,Null             ,300   ,Null         ,Null              ,N'Yes'      ,N'Rule Number'        ,N'No'  ,N'No'        ,200     ,N'No'        ,Null           ,N'No'          ,1         ,N'No')
GO

INSERT INTO [DEV PORTAL SCREEN DETAIL] ([Screen Name],[Table Name]                         ,[Field Name]             ,[Sequence],[Default Value],[Display Option],[Readonly],[cssclass],[maxlength],[Row],[Column],[EditGrid Row],[EditGrid Column],[Label Row],[Label Column],[EditGrid Label Row],[EditGrid Label Column],[Column Span],[RepeatColumns],[RepeatDirection],[Hidden],[OnChange],[Name_if_Button],[Mandatory],[Prompt]         ,[Criteria],[Description]            ,[HasChildControls],[Type]            ,[Other],[Query_Name],[Sub Screen Name],[Sub Screen Type],[Size],[CommandName],[CommandParameter],[ReturnData],[Help]                   ,[Modal],[MultiSelect],[Height],[HideWhenNew],[HideWhenValue],[GraphicButton],[Row Span],[Encrypt])
VALUES (N'CO_LVE_Absence_Transaction_Rules'          ,N'[CO LVE Absence Transaction Rules]',N'Minimum Number of Days',40        ,Null           ,Null            ,N'No'     ,Null      ,0          ,4    ,2       ,0             ,0                ,4          ,1             ,0                   ,0                      ,0            ,1              ,N'1'             ,N'Yes'  ,Null      ,Null            ,N'No'      ,Null             ,Null      ,N'Minimum Number of Days',N'No'             ,N'textbox'        ,Null   ,Null        ,Null             ,Null             ,300   ,Null         ,Null              ,N'Yes'      ,N'Minimum Number of Days',N'No'  ,N'No'        ,200     ,N'No'        ,Null           ,N'No'          ,1         ,N'No')
GO

INSERT INTO [DEV PORTAL SCREEN DETAIL] ([Screen Name],[Table Name]                         ,[Field Name]             ,[Sequence],[Default Value],[Display Option],[Readonly],[cssclass],[maxlength],[Row],[Column],[EditGrid Row],[EditGrid Column],[Label Row],[Label Column],[EditGrid Label Row],[EditGrid Label Column],[Column Span],[RepeatColumns],[RepeatDirection],[Hidden],[OnChange],[Name_if_Button],[Mandatory],[Prompt]         ,[Criteria],[Description]            ,[HasChildControls],[Type]            ,[Other],[Query_Name],[Sub Screen Name],[Sub Screen Type],[Size],[CommandName],[CommandParameter],[ReturnData],[Help]                   ,[Modal],[MultiSelect],[Height],[HideWhenNew],[HideWhenValue],[GraphicButton],[Row Span],[Encrypt])
VALUES (N'CO_LVE_Absence_Transaction_Rules'          ,N'[CO LVE Absence Transaction Rules]',N'Maximum Number of Days',50        ,Null           ,Null            ,N'No'     ,Null      ,0          ,5    ,2       ,0             ,0                ,5          ,1             ,0                   ,0                      ,0            ,1              ,N'1'             ,N'Yes'  ,Null      ,Null            ,N'No'      ,Null             ,Null      ,N'Maximum Number of Days',N'No'             ,N'textbox'        ,Null   ,Null        ,Null             ,Null             ,300   ,Null         ,Null              ,N'Yes'      ,N'Maximum Number of Days',N'No'  ,N'No'        ,200     ,N'No'        ,Null           ,N'No'          ,1         ,N'No')
GO

INSERT INTO [DEV PORTAL SCREEN DETAIL] ([Screen Name],[Table Name]                         ,[Field Name]                                ,[Sequence],[Default Value],[Display Option],[Readonly],[cssclass],[maxlength],[Row],[Column],[EditGrid Row],[EditGrid Column],[Label Row],[Label Column],[EditGrid Label Row],[EditGrid Label Column],[Column Span],[RepeatColumns],[RepeatDirection],[Hidden],[OnChange],[Name_if_Button],[Mandatory],[Prompt]         ,[Criteria],[Description]                               ,[HasChildControls],[Type]            ,[Other],[Query_Name],[Sub Screen Name],[Sub Screen Type],[Size],[CommandName],[CommandParameter],[ReturnData],[Help]                                      ,[Modal],[MultiSelect],[Height],[HideWhenNew],[HideWhenValue],[GraphicButton],[Row Span],[Encrypt])
VALUES (N'CO_LVE_Absence_Transaction_Rules'          ,N'[CO LVE Absence Transaction Rules]',N'Minimum Number of Leave Qualifying Shifts',60        ,Null           ,Null            ,N'No'     ,Null      ,0          ,6    ,2       ,0             ,0                ,6          ,1             ,0                   ,0                      ,0            ,1              ,N'1'             ,N'Yes'  ,Null      ,Null            ,N'No'      ,Null             ,Null      ,N'Minimum Number of Leave Qualifying Shifts',N'No'             ,N'textbox'        ,Null   ,Null        ,Null             ,Null             ,300   ,Null         ,Null              ,N'Yes'      ,N'Minimum Number of Leave Qualifying Shifts',N'No'  ,N'No'        ,200     ,N'No'        ,Null           ,N'No'          ,1         ,N'No')
GO

INSERT INTO [DEV PORTAL SCREEN DETAIL] ([Screen Name],[Table Name]                         ,[Field Name]                                ,[Sequence],[Default Value],[Display Option],[Readonly],[cssclass],[maxlength],[Row],[Column],[EditGrid Row],[EditGrid Column],[Label Row],[Label Column],[EditGrid Label Row],[EditGrid Label Column],[Column Span],[RepeatColumns],[RepeatDirection],[Hidden],[OnChange],[Name_if_Button],[Mandatory],[Prompt]         ,[Criteria],[Description]                               ,[HasChildControls],[Type]            ,[Other],[Query_Name],[Sub Screen Name],[Sub Screen Type],[Size],[CommandName],[CommandParameter],[ReturnData],[Help]                                      ,[Modal],[MultiSelect],[Height],[HideWhenNew],[HideWhenValue],[GraphicButton],[Row Span],[Encrypt])
VALUES (N'CO_LVE_Absence_Transaction_Rules'          ,N'[CO LVE Absence Transaction Rules]',N'Maximum Number of Leave Qualifying Shifts',70        ,Null           ,Null            ,N'No'     ,Null      ,0          ,7    ,2       ,0             ,0                ,7          ,1             ,0                   ,0                      ,0            ,1              ,N'1'             ,N'Yes'  ,Null      ,Null            ,N'No'      ,Null             ,Null      ,N'Maximum Number of Leave Qualifying Shifts',N'No'             ,N'textbox'        ,Null   ,Null        ,Null             ,Null             ,300   ,Null         ,Null              ,N'Yes'      ,N'Maximum Number of Leave Qualifying Shifts',N'No'  ,N'No'        ,200     ,N'No'        ,Null           ,N'No'          ,1         ,N'No')
GO

INSERT INTO [DEV PORTAL SCREEN DETAIL] ([Screen Name],[Table Name]                         ,[Field Name]                                ,[Sequence],[Default Value],[Display Option],[Readonly],[cssclass],[maxlength],[Row],[Column],[EditGrid Row],[EditGrid Column],[Label Row],[Label Column],[EditGrid Label Row],[EditGrid Label Column],[Column Span],[RepeatColumns],[RepeatDirection],[Hidden],[OnChange],[Name_if_Button],[Mandatory],[Prompt]         ,[Criteria],[Description]                               ,[HasChildControls],[Type]            ,[Other],[Query_Name],[Sub Screen Name],[Sub Screen Type],[Size],[CommandName],[CommandParameter],[ReturnData],[Help]                                      ,[Modal],[MultiSelect],[Height],[HideWhenNew],[HideWhenValue],[GraphicButton],[Row Span],[Encrypt])
VALUES (N'CO_LVE_Absence_Transaction_Rules'          ,N'[CO LVE Absence Transaction Rules]',N'Criteria'                                 ,80        ,Null           ,Null            ,N'No'     ,Null      ,1000       ,8    ,2       ,0             ,0                ,8          ,1             ,0                   ,0                      ,0            ,1              ,N'1'             ,N'No'   ,Null      ,Null            ,N'No'      ,Null             ,Null      ,N'Criteria'                                 ,N'No'             ,N'largetextbox'   ,Null   ,Null        ,Null             ,Null             ,300   ,Null         ,Null              ,N'Yes'      ,N'Criteria'                                 ,N'No'  ,N'No'        ,200     ,N'No'        ,Null           ,N'No'          ,1         ,N'No')
GO

INSERT INTO [DEV PORTAL SCREEN DETAIL] ([Screen Name],[Table Name]                         ,[Field Name]                                ,[Sequence],[Default Value],[Display Option],[Readonly],[cssclass],[maxlength],[Row],[Column],[EditGrid Row],[EditGrid Column],[Label Row],[Label Column],[EditGrid Label Row],[EditGrid Label Column],[Column Span],[RepeatColumns],[RepeatDirection],[Hidden],[OnChange],[Name_if_Button],[Mandatory],[Prompt]         ,[Criteria],[Description]                               ,[HasChildControls],[Type]            ,[Other],[Query_Name],[Sub Screen Name],[Sub Screen Type],[Size],[CommandName],[CommandParameter],[ReturnData],[Help]                                      ,[Modal],[MultiSelect],[Height],[HideWhenNew],[HideWhenValue],[GraphicButton],[Row Span],[Encrypt])
VALUES (N'CO_LVE_Absence_Transaction_Rules'          ,N'[CO LVE Absence Transaction Rules]',N'Validation Date Rule'                     ,90        ,Null           ,Null            ,N'No'     ,Null      ,50         ,9    ,2       ,0             ,0                ,9          ,1             ,0                   ,0                      ,0            ,1              ,N'1'             ,N'Yes'  ,Null      ,Null            ,N'No'      ,Null             ,Null      ,N'Validation Date Rule'                     ,N'No'             ,N'textbox'        ,Null   ,Null        ,Null             ,Null             ,300   ,Null         ,Null              ,N'Yes'      ,N'Validation Date Rule'                     ,N'No'  ,N'No'        ,200     ,N'No'        ,Null           ,N'No'          ,1         ,N'No')
GO

INSERT INTO [DEV PORTAL SCREEN DETAIL] ([Screen Name],[Table Name]                         ,[Field Name]                                ,[Sequence],[Default Value],[Display Option],[Readonly],[cssclass],[maxlength],[Row],[Column],[EditGrid Row],[EditGrid Column],[Label Row],[Label Column],[EditGrid Label Row],[EditGrid Label Column],[Column Span],[RepeatColumns],[RepeatDirection],[Hidden],[OnChange],[Name_if_Button],[Mandatory],[Prompt]          ,[Criteria],[Description]                               ,[HasChildControls],[Type]            ,[Other],[Query_Name],[Sub Screen Name],[Sub Screen Type],[Size],[CommandName],[CommandParameter],[ReturnData],[Help]                                      ,[Modal],[MultiSelect],[Height],[HideWhenNew],[HideWhenValue],[GraphicButton],[Row Span],[Encrypt])
VALUES (N'CO_LVE_Absence_Transaction_Rules'          ,N'[CO LVE Absence Transaction Rules]',N'Use Calendar Detail'                      ,100       ,Null           ,Null            ,N'No'     ,Null      ,50         ,10   ,2       ,0             ,0                ,10         ,1             ,0                   ,0                      ,0            ,5              ,N'1'             ,N'No'   ,Null      ,Null            ,N'No'      ,N'Calendar Detail',Null      ,N'Use Calendar Detail'                      ,N'No'             ,N'AutoCompleteBox',Null   ,Null        ,Null             ,Null             ,300   ,Null         ,Null              ,N'Yes'      ,N'Use Calendar Detail'                      ,N'No'  ,N'No'        ,200     ,N'No'        ,Null           ,N'No'          ,1         ,N'No')
GO

INSERT INTO [DEV PORTAL SCREEN DETAIL] ([Screen Name],[Table Name]                         ,[Field Name]                                ,[Sequence],[Default Value],[Display Option],[Readonly],[cssclass],[maxlength],[Row],[Column],[EditGrid Row],[EditGrid Column],[Label Row],[Label Column],[EditGrid Label Row],[EditGrid Label Column],[Column Span],[RepeatColumns],[RepeatDirection],[Hidden],[OnChange],[Name_if_Button],[Mandatory],[Prompt]          ,[Criteria],[Description]                               ,[HasChildControls],[Type]            ,[Other],[Query_Name],[Sub Screen Name],[Sub Screen Type],[Size],[CommandName],[CommandParameter],[ReturnData],[Help]                                      ,[Modal],[MultiSelect],[Height],[HideWhenNew],[HideWhenValue],[GraphicButton],[Row Span],[Encrypt])
VALUES (N'CO_LVE_Absence_Transaction_Rules'          ,N'[CO LVE Absence Transaction Rules]',N'Minimum Balance'                          ,110       ,Null           ,Null            ,N'No'     ,Null      ,1000       ,11   ,2       ,0             ,0                ,11         ,1             ,0                   ,0                      ,0            ,1              ,N'1'             ,N'No'   ,Null      ,Null            ,N'No'      ,Null              ,Null      ,N'Minimum Balance'                          ,N'No'             ,N'textbox'        ,Null   ,Null        ,Null             ,Null             ,300   ,Null         ,Null              ,N'Yes'      ,N'Minimum Balance'                          ,N'No'  ,N'No'        ,200     ,N'No'        ,Null           ,N'No'          ,1         ,N'No')
GO

INSERT INTO [DEV PORTAL SCREEN DETAIL] ([Screen Name],[Table Name]                         ,[Field Name]                                ,[Sequence],[Default Value],[Display Option],[Readonly],[cssclass],[maxlength],[Row],[Column],[EditGrid Row],[EditGrid Column],[Label Row],[Label Column],[EditGrid Label Row],[EditGrid Label Column],[Column Span],[RepeatColumns],[RepeatDirection],[Hidden],[OnChange],[Name_if_Button],[Mandatory],[Prompt]          ,[Criteria],[Description]                               ,[HasChildControls],[Type]            ,[Other],[Query_Name],[Sub Screen Name],[Sub Screen Type],[Size],[CommandName],[CommandParameter],[ReturnData],[Help]                                      ,[Modal],[MultiSelect],[Height],[HideWhenNew],[HideWhenValue],[GraphicButton],[Row Span],[Encrypt])
VALUES (N'CO_LVE_Absence_Transaction_Rules'          ,N'[CO LVE Absence Transaction Rules]',N'Probation'                                ,120       ,Null           ,Null            ,N'No'     ,Null      ,1000       ,12   ,2       ,0             ,0                ,12         ,1             ,0                   ,0                      ,0            ,1              ,N'1'             ,N'No'   ,Null      ,Null            ,N'No'      ,N'YesNo'          ,Null      ,N'Avail During Probation'                   ,N'No'             ,N'AutoCompleteBox',Null   ,Null        ,Null             ,Null             ,300   ,Null         ,Null              ,N'Yes'      ,N'Avail During Probation'                   ,N'No'  ,N'No'        ,200     ,N'No'        ,Null           ,N'No'          ,1         ,N'No')
GO

INSERT INTO [DEV PORTAL SCREEN DETAIL] ([Screen Name],[Table Name]                         ,[Field Name]                                ,[Sequence],[Default Value],[Display Option],[Readonly],[cssclass],[maxlength],[Row],[Column],[EditGrid Row],[EditGrid Column],[Label Row],[Label Column],[EditGrid Label Row],[EditGrid Label Column],[Column Span],[RepeatColumns],[RepeatDirection],[Hidden],[OnChange],[Name_if_Button],[Mandatory],[Prompt]          ,[Criteria],[Description]                               ,[HasChildControls],[Type]            ,[Other],[Query_Name],[Sub Screen Name],[Sub Screen Type],[Size],[CommandName],[CommandParameter],[ReturnData],[Help]                                      ,[Modal],[MultiSelect],[Height],[HideWhenNew],[HideWhenValue],[GraphicButton],[Row Span],[Encrypt])
VALUES (N'CO_LVE_Absence_Transaction_Rules'          ,N'[CO LVE Absence Transaction Rules]',N'Gender'                                   ,130       ,Null           ,Null            ,N'No'     ,Null      ,1000       ,13   ,2       ,0             ,0                ,13         ,1             ,0                   ,0                      ,0            ,1              ,N'1'             ,N'No'   ,Null      ,Null            ,N'No'      ,N'GENDER'         ,Null      ,N'Gender'                                   ,N'No'             ,N'AutoCompleteBox',Null   ,Null        ,Null             ,Null             ,300   ,Null         ,Null              ,N'Yes'      ,N'Gender'                                   ,N'No'  ,N'No'        ,200     ,N'No'        ,Null           ,N'No'          ,1         ,N'No')
GO

INSERT INTO [DEV PORTAL SCREEN DETAIL] ([Screen Name],[Table Name]                         ,[Field Name]                                ,[Sequence],[Default Value],[Display Option],[Readonly],[cssclass],[maxlength],[Row],[Column],[EditGrid Row],[EditGrid Column],[Label Row],[Label Column],[EditGrid Label Row],[EditGrid Label Column],[Column Span],[RepeatColumns],[RepeatDirection],[Hidden],[OnChange],[Name_if_Button],[Mandatory],[Prompt]          ,[Criteria],[Description]                               ,[HasChildControls],[Type]            ,[Other],[Query_Name],[Sub Screen Name],[Sub Screen Type],[Size],[CommandName],[CommandParameter],[ReturnData],[Help]                                      ,[Modal],[MultiSelect],[Height],[HideWhenNew],[HideWhenValue],[GraphicButton],[Row Span],[Encrypt])
VALUES (N'CO_LVE_Absence_Transaction_Rules'          ,N'[CO LVE Absence Transaction Rules]',N'Religion'                                 ,140       ,Null           ,Null            ,N'No'     ,Null      ,1000       ,14   ,2       ,0             ,0                ,14         ,1             ,0                   ,0                      ,0            ,1              ,N'1'             ,N'No'   ,Null      ,Null            ,N'No'      ,N'Religion'       ,Null      ,N'Religion'                                 ,N'No'             ,N'AutoCompleteBox',Null   ,Null        ,Null             ,Null             ,300   ,Null         ,Null              ,N'Yes'      ,N'Religion'                                 ,N'No'  ,N'No'        ,200     ,N'No'        ,Null           ,N'No'          ,1         ,N'No')
GO

INSERT INTO [DEV PORTAL SCREEN DETAIL] ([Screen Name],[Table Name]                         ,[Field Name]                                ,[Sequence],[Default Value],[Display Option],[Readonly],[cssclass],[maxlength],[Row],[Column],[EditGrid Row],[EditGrid Column],[Label Row],[Label Column],[EditGrid Label Row],[EditGrid Label Column],[Column Span],[RepeatColumns],[RepeatDirection],[Hidden],[OnChange],[Name_if_Button],[Mandatory],[Prompt]           ,[Criteria],[Description]                               ,[HasChildControls],[Type]            ,[Other],[Query_Name],[Sub Screen Name],[Sub Screen Type],[Size],[CommandName],[CommandParameter],[ReturnData],[Help]                                      ,[Modal],[MultiSelect],[Height],[HideWhenNew],[HideWhenValue],[GraphicButton],[Row Span],[Encrypt])
VALUES (N'CO_LVE_Absence_Transaction_Rules'          ,N'[CO LVE Absence Transaction Rules]',N'Leave Scheme'                             ,150       ,Null           ,Null            ,N'No'     ,Null      ,1000       ,15   ,2       ,0             ,0                ,15         ,1             ,0                   ,0                      ,0            ,1              ,N'1'             ,N'No'   ,Null      ,Null            ,N'No'      ,N'CLI Leave Scheme',Null      ,N'Leave Scheme'                             ,N'No'             ,N'AutoCompleteBox',Null   ,Null        ,Null             ,Null             ,300   ,Null         ,Null              ,N'Yes'      ,N'Leave Scheme'                             ,N'No'  ,N'No'        ,200     ,N'No'        ,Null           ,N'No'          ,1         ,N'No')
GO

-----------------------------------
---SERVER TASK SPACE STARTS HERE---
-----------------------------------

SET NOCOUNT ON

DELETE FROM [DEV PORTAL SCREEN SERVER TASK]
WHERE [Screen Name]='CO_LVE_Absence_Transaction_Rules_Search'
GO

INSERT INTO [DEV PORTAL SCREEN SERVER TASK] ([Screen Name],[Query Name],[Command]      ,[Action]     ,[Statement],[Action Sequence],[Active],[Run SubScreen Call])
VALUES (N'CO_LVE_Absence_Transaction_Rules_Search'        ,Null        ,N'REBINDSEARCH',N'DEV_REBIND',N'40'      ,1                ,1       ,N'Yes')
GO

INSERT INTO [DEV PORTAL SCREEN SERVER TASK] ([Screen Name],[Query Name],[Command]      ,[Action]       ,[Statement]                                                                                                ,[Action Sequence],[Active],[Run SubScreen Call])
VALUES (N'CO_LVE_Absence_Transaction_Rules_Search'        ,Null        ,N'NEWRECORD'   ,N'DEV_REDIRECT',N'../DEVForms/DEV PORTAL SCREEN.aspx?Screen=CO_LVE_Absence_Transaction_Rules&ScreenAction=New&ScreenType=0',1                ,1       ,N'Yes')
GO


SET NOCOUNT ON

DELETE FROM [DEV PORTAL SCREEN SERVER TASK]
WHERE [Query Name]='CO_LVE_Absence_Transaction_Rules_Search'
GO


SET NOCOUNT ON

DELETE FROM [DEV PORTAL SCREEN SERVER TASK]
WHERE [Screen Name]='CO_LVE_Absence_Transaction_Rules'
GO


SET NOCOUNT ON

DELETE FROM [DEV PORTAL SCREEN SERVER TASK]
WHERE [Query Name]='CO_LVE_Absence_Transaction_Rules'
GO


SET NOCOUNT ON

DELETE FROM [DEV PORTAL SCREEN SERVER TASK]
WHERE [Query Name]='CO_LVE_Absence_Transaction_Rules_SearchResults'
GO

INSERT INTO [DEV PORTAL SCREEN SERVER TASK] ([Screen Name],[Query Name]                                     ,[Command],[Action]       ,[Statement]                                                                               ,[Action Sequence],[Active],[Run SubScreen Call])
VALUES (Null                                              ,N'CO_LVE_Absence_Transaction_Rules_SearchResults',N'SELECT',N'DEV_REDIRECT',N'../DEVForms/DEV PORTAL SCREEN.aspx?Screen=CO_LVE_Absence_Transaction_Rules&ScreenType=0',1                ,1       ,N'Yes')
GO

----------------------------------------
---MAIL TASK SPACE STARTS HERE---
----------------------------------------

SET NOCOUNT ON

DELETE FROM [DEV PORTAL Mail Tasks]
WHERE [Screen Name]='CO_LVE_Absence_Transaction_Rules'
GO


SET NOCOUNT ON

DELETE FROM [DEV PORTAL Mail Tasks]
WHERE [Screen Name]='CO_LVE_Absence_Transaction_Rules_Search'
GO

--------------------------------------
---SCREEN BUTTONS SPACE STARTS HERE---
--------------------------------------

SET NOCOUNT ON

DELETE FROM [DEV PORTAL SCREEN BUTTONS]
WHERE [Screen Name]='CO_LVE_Absence_Transaction_Rules_Search'
GO


SET NOCOUNT ON

DELETE FROM [DEV PORTAL SCREEN BUTTONS]
WHERE [Screen Name]='CO_LVE_Absence_Transaction_Rules'
GO

INSERT INTO [DEV PORTAL SCREEN BUTTONS] ([Screen Name],[Image]                               ,[Link]                                                                                                  ,[Help]         ,[Target],[Sequence],[Active],[Description]   ,[Add to Menu],[Command Name],[Command Arg])
VALUES (N'CO_LVE_Absence_Transaction_Rules'           ,N'../images_default/VacancySearch.gif',N'DEV PORTAL SCREEN.aspx?Screen=CO_LVE_Absence_Transaction_Rules_Search&ScreenType=0&User=Administrator',N'Search Again',N'_self',1         ,1       ,N'Back 2 Search',N'Top Menu'  ,Null          ,Null)
GO

--------------------------------------
---COMMAND BUTTON SPACE STARTS HERE---
--------------------------------------

SET NOCOUNT ON

DELETE FROM [DEV PORTAL Command Button List]
WHERE [Screen Name]='CO_LVE_Absence_Transaction_Rules'
GO


SET NOCOUNT ON

DELETE FROM [DEV PORTAL Command Button List]
WHERE [Screen Name]='CO_LVE_Absence_Transaction_Rules_Search'
GO

--------------------------------------
---CLIENT SCRIPT SPACE STARTS HERE---
--------------------------------------

SET NOCOUNT ON

DELETE FROM [DEV Portal Screen Client Scripts]
WHERE [Screen Name]='CO_LVE_Absence_Transaction_Rules'
GO


SET NOCOUNT ON

DELETE FROM [DEV Portal Screen Client Scripts]
WHERE [Screen Name]='CO_LVE_Absence_Transaction_Rules_Search'
GO

----------------------------------------
---SECURITY OBJECTS SPACE STARTS HERE---
----------------------------------------

SET NOCOUNT ON

DELETE FROM [DEV PORTAL SECURITY OBJECTS]
WHERE [Screen Name]='CO_LVE_Absence_Transaction_Rules'
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name]                      ,[Screen List],[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'GULF HR EMPLOYEE'                       ,N'CO_LVE_Absence_Transaction_Rules',Null         ,Null           ,1     ,1    ,1       ,1       ,1     ,1       ,1     ,Null)
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name]                      ,[Screen List],[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'GULF HR COMPANY HR'                     ,N'CO_LVE_Absence_Transaction_Rules',Null         ,Null           ,1     ,1    ,1       ,1       ,1     ,1       ,1     ,Null)
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name]                      ,[Screen List],[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'GL INTERFACE'                           ,N'CO_LVE_Absence_Transaction_Rules',Null         ,Null           ,1     ,1    ,1       ,1       ,1     ,1       ,1     ,Null)
GO


SET NOCOUNT ON

DELETE FROM [DEV PORTAL SECURITY OBJECTS]
WHERE [Screen Name]='CO_LVE_Absence_Transaction_Rules_Search'
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name]                             ,[Screen List],[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'GULF HR EMPLOYEE'                       ,N'CO_LVE_Absence_Transaction_Rules_Search',Null         ,Null           ,1     ,1    ,1       ,1       ,1     ,1       ,1     ,Null)
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name]                             ,[Screen List],[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'GULF HR COMPANY HR'                     ,N'CO_LVE_Absence_Transaction_Rules_Search',Null         ,Null           ,1     ,1    ,1       ,1       ,1     ,1       ,1     ,Null)
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name]                             ,[Screen List],[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'GL INTERFACE'                           ,N'CO_LVE_Absence_Transaction_Rules_Search',Null         ,Null           ,1     ,1    ,1       ,1       ,1     ,1       ,1     ,Null)
GO


SET NOCOUNT ON

DELETE FROM [DEV PORTAL SECURITY OBJECTS]
WHERE [Screen Name]='CO_LVE_Absence_Transaction_Rules_SearchResults'
GO


SET NOCOUNT ON

DELETE FROM [DEV PORTAL SECURITY OBJECTS]
WHERE [Screen List]='CO_LVE_Absence_Transaction_Rules'
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name],[Screen List]                      ,[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'GULF HR EMPLOYEE'                       ,Null         ,N'CO_LVE_Absence_Transaction_Rules',Null           ,1     ,1    ,1       ,1       ,1     ,1       ,1     ,Null)
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name],[Screen List]                      ,[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'GULF HR COMPANY HR'                     ,Null         ,N'CO_LVE_Absence_Transaction_Rules',Null           ,1     ,1    ,1       ,1       ,1     ,1       ,1     ,Null)
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name],[Screen List]                      ,[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'GL INTERFACE'                           ,Null         ,N'CO_LVE_Absence_Transaction_Rules',Null           ,1     ,1    ,1       ,1       ,1     ,1       ,1     ,Null)
GO


SET NOCOUNT ON

DELETE FROM [DEV PORTAL SECURITY OBJECTS]
WHERE [Screen List]='CO_LVE_Absence_Transaction_Rules_Search'
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name],[Screen List]                             ,[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'GULF HR EMPLOYEE'                       ,Null         ,N'CO_LVE_Absence_Transaction_Rules_Search',Null           ,1     ,1    ,1       ,1       ,1     ,1       ,1     ,Null)
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name],[Screen List]                             ,[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'GULF HR COMPANY HR'                     ,Null         ,N'CO_LVE_Absence_Transaction_Rules_Search',Null           ,1     ,1    ,1       ,1       ,1     ,1       ,1     ,Null)
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name],[Screen List]                             ,[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'GL INTERFACE'                           ,Null         ,N'CO_LVE_Absence_Transaction_Rules_Search',Null           ,1     ,1    ,1       ,1       ,1     ,1       ,1     ,Null)
GO


SET NOCOUNT ON

DELETE FROM [DEV PORTAL SECURITY OBJECTS]
WHERE [Screen List]='CO_LVE_Absence_Transaction_Rules_SearchResults'
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name],[Screen List]                                    ,[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'GULF HR EMPLOYEE'                       ,Null         ,N'CO_LVE_Absence_Transaction_Rules_SearchResults',Null           ,1     ,1    ,1       ,1       ,1     ,1       ,1     ,Null)
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name],[Screen List]                                    ,[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'GULF HR COMPANY HR'                     ,Null         ,N'CO_LVE_Absence_Transaction_Rules_SearchResults',Null           ,1     ,1    ,1       ,1       ,1     ,1       ,1     ,Null)
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name],[Screen List]                                    ,[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'GL INTERFACE'                           ,Null         ,N'CO_LVE_Absence_Transaction_Rules_SearchResults',Null           ,1     ,1    ,1       ,1       ,1     ,1       ,1     ,Null)
GO

----------------------------------------------------
---SECURITY OBJECTS FOR REPORTS SPACE STARTS HERE---
----------------------------------------------------
------------------------------------------
---DATA EXCEL REPORTS SPACE STARTS HERE---
------------------------------------------
----------------------------------------
---  SEARCH PROC SPACE STARTS HERE   ---
----------------------------------------
If Exists (SELECT * FROM dbo.sysobjects WHERE id = object_id('CO_LVE_Absence_Transaction_Rules_Search List Proc') 
					and OBJECTPROPERTY(id, N'IsProcedure') = 1)
Drop Proc dbo.[CO_LVE_Absence_Transaction_Rules_Search List Proc]
GO





Create Proc dbo.   [CO_LVE_Absence_Transaction_Rules_Search List Proc]
@Dummy nvarchar(50)=''
AS
SELECT
'' as [Employee]



GO
----------------------------------------
---SEARCH LIST PROC SPACE STARTS HERE---
----------------------------------------
If Exists (SELECT * FROM dbo.sysobjects WHERE id = object_id('CO_LVE_Absence_Transaction_Rules_SearchResult List Proc') 
					and OBJECTPROPERTY(id, N'IsProcedure') = 1)
Drop Proc dbo.[CO_LVE_Absence_Transaction_Rules_SearchResult List Proc]
GO



 Create Proc dbo.   [CO_LVE_Absence_Transaction_Rules_SearchResult List Proc]  
@SearchField nvarchar(50)=NULL,  
@Entity INT,  
--System Fields  
@ScreenType nvarchar(15)  = 'FORM',  
@Rows Int = 0,  
@CommandName nvarchar(50)=NULL, --Command Selected from the Front End  
@DEV_ID Int  = NULL, --Current Session Variable Value  
@User nvarchar(50)  = NULL  
AS  
  
IF @SearchField is null  
BEGIN  
SELECT top 1000  
A.[Absence Summary] as [DEV_ID],   
[Name] as [Company], A.[Absence Transaction], A.[Rule Number], A.[Criteria], A.[Use Calendar Detail],  
A.[Minimum Balance], A.[Probation], A.[Gender], A.[Religion], A.[Leave Scheme],
convert(nvarchar(11),a.[Verified Date],113) as 'Verified'  
  
FROM    
[CO LVE Absence Transaction Rules] A  
  
INNER JOIN [CO SRC Structure Master] B  
ON a.[Entity] = b.[Entity]  

WHERE A.[Entity] = @Entity
  
ORDER BY A.[Verified Date] DESC  
END  
ELSE  
BEGIN  
  
SELECT top 1000  
A.[Absence Summary] as [DEV_ID],   
[Name] as [Company], A.[Absence Transaction], A.[Rule Number], A.[Criteria], A.[Use Calendar Detail],  
A.[Minimum Balance], A.[Probation], A.[Gender], A.[Religion], A.[Leave Scheme], 
convert(nvarchar(11),a.[Verified Date],113) as 'Verified' 
  
FROM    
[CO LVE Absence Transaction Rules] A  
  
INNER JOIN [CO SRC Structure Master] B  
ON a.[Entity] = b.[entity]  
  
WHERE   
[Name] Like '%' + IsNull(@SearchField,'') + '%'  
AND A.[Entity] = @Entity
END  
  


GO
------------------------------------------
---SEARCH DELETE PROC SPACE STARTS HERE---
------------------------------------------
If Exists (SELECT * FROM dbo.sysobjects WHERE id = object_id('CO_LVE_Absence_Transaction_Rules_SearchResult Delete Proc') 
					and OBJECTPROPERTY(id, N'IsProcedure') = 1)
Drop Proc dbo.[CO_LVE_Absence_Transaction_Rules_SearchResult Delete Proc]
GO





Create Proc dbo.   [CO_LVE_Absence_Transaction_Rules_SearchResult Delete Proc]
@ID Int
AS

DELETE FROM [CO LVE Absence Transaction Rules] WHERE [Absence Summary] = @ID

SELECT @ID as [DELETED_ID]




GO
------------------------------------------
---     LIST PROC SPACE STARTS HERE    ---
------------------------------------------
If Exists (SELECT * FROM dbo.sysobjects WHERE id = object_id('CO_LVE_Absence_Transaction_Rules List Proc') 
					and OBJECTPROPERTY(id, N'IsProcedure') = 1)
Drop Proc dbo.[CO_LVE_Absence_Transaction_Rules List Proc]
GO



--[CO_LVE_Absence_Transaction_Rules List Proc] 1
Create Proc dbo.   [CO_LVE_Absence_Transaction_Rules List Proc]
@ID Int,

--System Provided Values
@ScreenType nvarchar(15)  = 'FORM',--EDITGRID or FORM
@Rows Int = 0,
@CommandName nvarchar(50)=NULL, --Command Selected from the Front End
@DEV_ID Int  = NULL, --Current Session Variable Value
@User nvarchar(50)  = NULL
AS

DECLARE @Company nvarchar(50)

Declare @Range nvarchar(50)

SET @Range = '1-' + Convert(nvarchar(20),@Rows)

SELECT 
[Entity],[Absence Transaction],[Rule Number],[Minimum Number of Days],[Maximum Number of Days],[Minimum Number of Leave Qualifying Shifts],[Maximum Number of Leave Qualifying Shifts],[Criteria],[Validation Date Rule],[Use Calendar Detail],
[Minimum Balance],
[Probation],
[Gender],
[Religion],
[Leave Scheme],
[Verified Date],
[Verified User] as [DEV_User],
A.[Absence Summary] as [DEV_ID],
A.[Absence Summary] as [DEV_OrderClause]

FROM
[CO LVE Absence Transaction Rules] A

WHERE A.[Absence Summary] = @ID
AND not (IsNull(@CommandName,'') = 'DEV_ADD' And IsNull(@ScreenType,'')='FORM')

UNION ALL

SELECT
Null as [Entity],Null as [Absence Transaction],1 as [Rule Number],0 as [Minimum Number of Days],9999 as [Maximum Number of Days],0 as [Minimum Number of Leave Qualifying Shifts],9999 as [Maximum Number of Leave Qualifying Shifts],'1=1' as [Criteria],'N/A' as [Validation Date Rule],'NoWeekend' as [Use Calendar Detail],
-999 as [Minimum Balance],
'No' AS [Probation],
NULL AS [Gender],
NULL AS [Religion],
Null as [Leave Scheme],
Null as [Verified Date],
@user as [DEV_User],
Null as [DEV_ID],
9999999 as [DEV_OrderClause]
FROM
createranges(@Range) Ranges

order by  [DEV_OrderClause] DESC





GO
------------------------------------------
---   UPDATE PROC SPACE STARTS HERE    ---
------------------------------------------
If Exists (SELECT * FROM dbo.sysobjects WHERE id = object_id('CO_LVE_Absence_Transaction_Rules Update Proc') 
					and OBJECTPROPERTY(id, N'IsProcedure') = 1)
Drop Proc dbo.[CO_LVE_Absence_Transaction_Rules Update Proc]
GO




--[CO_LVE_Absence_Transaction_Rules Update Proc] N'1',N'1000',N'Annual Leave',N'1',N'0',N'99999',N'0',N'9999',N'[Company] = ''GULF HR''',Null,N'NoWeekend',N'6773',Form,Null,N'DEV_SAVE',N'1',N'companyhr'
Create Proc dbo.   [CO_LVE_Absence_Transaction_Rules Update Proc]
@ID Int,
--All Fields Required for Update
@Entity int,@AbsenceTransaction nvarchar(50),@RuleNumber int,@MinimumNumberofDays float,@MaximumNumberofDays float,@MinimumNumberofLeaveQualifyingShifts float,@MaximumNumberofLeaveQualifyingShifts float,@Criteria nvarchar(1000),@ValidationDateRule nvarchar(50),@UseCalendarDetail nvarchar(50),
@MinimumBalance float,
@Probation nvarchar(50),
@Gender nvarchar(50),
@Religion nvarchar(100),
@LeaveScheme nvarchar(100),
--------------------------------
--System Provided Values
@ScreenType nvarchar(15)  = 'FORM',--EDITGRID or FORM
@Rows Int = 1,
@CommandName nvarchar(50), --Command Selected from the Front End
@DEV_ID Int  = NULL, --Current Session Variable Value
@User nvarchar(50)  = NULL

AS

IF @CommandName = 'DEV_SAVE' OR @CommandName = 'DEV_ADD'
BEGIN
IF EXISTS(
SELECT [Absence Summary] FROM [CO LVE Absence Transaction Rules] A
WHERE [Absence Summary] = @DEV_ID)

BEGIN --Update
UPDATE [CO LVE Absence Transaction Rules]
SET 
[Entity] = @Entity,[Absence Transaction] = @AbsenceTransaction,[Rule Number] = @RuleNumber,[Minimum Number of Days] = @MinimumNumberofDays,[Maximum Number of Days] = @MaximumNumberofDays,[Minimum Number of Leave Qualifying Shifts] = @MinimumNumberofLeaveQualifyingShifts,[Maximum Number of Leave Qualifying Shifts] = @MaximumNumberofLeaveQualifyingShifts,[Criteria] = @Criteria,[Validation Date Rule] = @ValidationDateRule,[Use Calendar Detail] = @UseCalendarDetail,
[Minimum Balance] = @MinimumBalance,
[Probation] = @probation,
[Gender] = @Gender,
[Religion] = @Religion,
[Leave Scheme] = @LeaveScheme,
[Verified Date] = GetDate(),
[Verified User] = @User
WHERE [Absence Summary] = @DEV_ID
END 
ELSE -- Insert
BEGIN
INSERT INTO
[CO LVE Absence Transaction Rules]
(
[Entity],[Absence Transaction],[Rule Number],[Minimum Number of Days],[Maximum Number of Days],[Minimum Number of Leave Qualifying Shifts],[Maximum Number of Leave Qualifying Shifts],[Criteria],[Validation Date Rule],[Use Calendar Detail],
[Minimum Balance],
[Probation],
[Gender],
[Religion],
[Leave Scheme],
[Verified User]
)
VALUES
(
@Entity,@AbsenceTransaction,@RuleNumber,@MinimumNumberofDays,@MaximumNumberofDays,@MinimumNumberofLeaveQualifyingShifts,@MaximumNumberofLeaveQualifyingShifts,@Criteria,@ValidationDateRule,@UseCalendarDetail,
@MinimumBalance,
@Probation,
@Gender,
@Religion,
@LeaveScheme,
@User
)

SELECT @DEV_ID = SCOPE_IDENTITY()

END

SELECT @DEV_ID as [DEV_ID]
RETURN
END



GO
------------------------------------------
---   DELETE PROC SPACE STARTS HERE    ---
------------------------------------------
If Exists (SELECT * FROM dbo.sysobjects WHERE id = object_id('CO_LVE_Absence_Transaction_Rules Delete Proc') 
					and OBJECTPROPERTY(id, N'IsProcedure') = 1)
Drop Proc dbo.[CO_LVE_Absence_Transaction_Rules Delete Proc]
GO





Create Proc dbo.   [CO_LVE_Absence_Transaction_Rules Delete Proc]
@ID Int
AS

DELETE FROM [CO LVE Absence Transaction Rules] WHERE [Absence Summary] = @ID

SELECT @ID as [DELETED_ID]




GO
