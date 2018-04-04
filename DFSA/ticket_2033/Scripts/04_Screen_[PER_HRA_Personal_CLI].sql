-- Script Name: PER HRA Personal CLI_Screen
-- Screen Name or Table : PER_HRA_Personal_CLI
-- Script Type: Regenerated From Database - DFSA
-- Develop By: Zeeshan Khalid
-- Date Recreated: 13 Mar 2018
-- Modify By:
-- Modify Date:
SET NOCOUNT ON

 

-------------------------------------------
--CREATE SCREEN SESSION SPACE STARTS HERE--
-------------------------------------------

SET NOCOUNT ON

DELETE FROM [DEV PORTAL SESSION VARIABLES]
WHERE Name='PER_HRA_Personal_CLI'
GO

INSERT INTO [DEV PORTAL SESSION VARIABLES] ([Name])
VALUES (N'PER_HRA_Personal_CLI')
GO

-----------------------------------
--SCREEN HEADER SPACE STARTS HERE--
-----------------------------------

SET NOCOUNT ON

DELETE FROM [DEV PORTAL SCREEN HEADER]
WHERE [Screen Name]='PER_HRA_Personal_CLI_Search'
GO

INSERT INTO [DEV PORTAL SCREEN HEADER] ([Screen Name],[Heading],[MaxColumns],[SessionVariable]      ,[ListScreen]                  ,[Create Header],[Buttons Per Line],[Other],[Hide Header],[Multi User Lock],[Header Options]    ,[Show Item Header],[Igonre Save Empty Column Sequences],[Logo Cell],[Search Enabled],[Security Off],[Active],[Process Redirect Message],[Workflow History],[CssClass])
VALUES (N'PER_HRA_Personal_CLI_Search'               ,Null     ,6           ,N'PER_HRA_Personal_CLI',N'PER_HRA_Personal_CLI_Search',N'No'          ,10                ,Null   ,N'Yes'       ,N'No'            ,N'|HIDEBUTTONSUBMIT',N'No'             ,Null                                ,N'default' ,N'Yes'          ,N'No'         ,1       ,Null                      ,N'No'             ,Null)
GO


SET NOCOUNT ON

DELETE FROM [DEV PORTAL SCREEN HEADER]
WHERE [Screen Name]='PER_HRA_Personal_CLI'
GO

INSERT INTO [DEV PORTAL SCREEN HEADER] ([Screen Name],[Heading]                   ,[MaxColumns],[SessionVariable]      ,[ListScreen]           ,[Create Header],[Buttons Per Line],[Other],[Hide Header],[Multi User Lock],[Header Options]                                                          ,[Show Item Header],[Igonre Save Empty Column Sequences],[Logo Cell],[Search Enabled],[Security Off],[Active],[Process Redirect Message],[Workflow History],[CssClass])
VALUES (N'PER_HRA_Personal_CLI'                      ,N'Employee Personal Details',6           ,N'PER_HRA_Personal_CLI',N'PER_HRA_Personal_CLI',N'No'          ,10                ,Null   ,N'No'        ,N'No'            ,N'HideButtonSaveAndAdd|HideNumberOfRows|Hidebuttondelete|HIDEBUTTONSUBMIT',N'Yes'            ,Null                                ,Null       ,N'No'           ,N'No'         ,1       ,Null                      ,N'No'             ,Null)
GO

-----------------------------------
---SCREEN LIST SPACE STARTS HERE---
-----------------------------------

SET NOCOUNT ON

DELETE FROM [DEV PORTAL SCREEN LIST]
WHERE [Query Name]='PER_HRA_Personal_CLI_Search'
GO

INSERT INTO [DEV PORTAL SCREEN LIST] ([Query Name],[Query]                                   ,[Update Query]                            ,[Delete Query],[SessionVariable]      ,[Options],[EditPage],[sampleQuery],[EditScreen],[EditFields],[Security Off],[Page Size],[Export to Excel],[Screen Title])
VALUES (N'PER_HRA_Personal_CLI_Search'            ,N'[PER_HRA_Personal_CLI_Search List Proc]',N'[PER_HRA_Personal_CLI_Search List Proc]',Null          ,N'PER_HRA_Personal_CLI',Null     ,Null      ,Null         ,Null        ,Null        ,N'No'         ,100000     ,N'Yes'           ,Null)
GO


SET NOCOUNT ON

DELETE FROM [DEV PORTAL SCREEN LIST]
WHERE [Query Name]='PER_HRA_Personal_CLI'
GO

INSERT INTO [DEV PORTAL SCREEN LIST] ([Query Name],[Query]                                                                          ,[Update Query]                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    ,[Delete Query]                                                ,[SessionVariable]      ,[Options],[EditPage],[sampleQuery],[EditScreen],[EditFields],[Security Off],[Page Size],[Export to Excel],[Screen Title])
VALUES (N'PER_HRA_Personal_CLI'                   ,N'[PER_HRA_Personal_CLI List Proc] [[PER_HRA_Personal_CLI]],[[DEV_SYSTEMFIELDS]]',N'[PER_HRA_Personal_CLI Update Proc] [[PER_HRA_Personal_CLI]],[[10]],[[20]],[[30]],[[40]],[[50]],[[60]],[[70]],[[80]],[[90]],[[100]],[[110]],[[120]],[[130]],[[140]],[[150]],[[160]],[[170]],[[180]],[[190]],[[200]],[[210]],[[220]],[[230]],[[240]],[[250]],[[260]],[[270]],[[280]],[[290]],[[300]],[[310]],[[320]],[[330]],[[340]],[[350]],[[360]],[[370]],[[380]],[[390]],[[400]],[[410]],[[420]],[[430]],[[440]],[[450]],[[460]],[[470]],[[480]],[[520]],[[530]],[[800]],[[DEV_SYSTEMFIELDS]]',N'[PER_HRA_Personal_CLI Delete Proc] [[PER_HRA_Personal_CLI]]',N'PER_HRA_Personal_CLI',Null     ,Null      ,Null         ,Null        ,Null        ,N'No'         ,100000     ,N'Yes'           ,Null)
GO


SET NOCOUNT ON

DELETE FROM [DEV PORTAL SCREEN LIST]
WHERE [Query Name]='PER_HRA_Personal_CLI_SearchResults'
GO

INSERT INTO [DEV PORTAL SCREEN LIST] ([Query Name],[Query]                                                                            ,[Update Query]                                    ,[Delete Query]                                               ,[SessionVariable]      ,[Options]                                                                                                                                          ,[EditPage],[sampleQuery],[EditScreen],[EditFields],[Security Off],[Page Size],[Export to Excel],[Screen Title])
VALUES (N'PER_HRA_Personal_CLI_SearchResults'     ,N'[PER_HRA_Personal_CLI_SearchResult List Proc] [[10]],[[15]], [[CompanyLoggedIn]]',N'[PER_HRA_Personal_CLI_SearchResult Update Proc]',N'[PER_HRA_Personal_CLI_SearchResult Delete Proc] [[DEV_ID]]',N'PER_HRA_Personal_CLI',N'Hidedelete|||||||ALLOWSORTING|ALLOWMULTICOLUMNSORTING|SHOWEXPORTTOPDFBUTTON|SHOWEXPORTTOWORDBUTTON|SHOWEXPORTTOEXCELBUTTON|SHOWEXPORTTOCSVBUTTON',Null      ,Null         ,Null        ,Null        ,N'No'         ,100000     ,N'Yes'           ,Null)
GO

--------------------------------------
---SCREEN DETAILS SPACE STARTS HERE---
--------------------------------------

SET NOCOUNT ON

DELETE FROM [DEV PORTAL SCREEN DETAIL]
WHERE [Screen Name]='PER_HRA_Personal_CLI_Search'
GO

INSERT INTO [DEV PORTAL SCREEN DETAIL] ([Screen Name],[Table Name]         ,[Field Name] ,[Sequence],[Default Value],[Display Option],[Readonly],[cssclass],[maxlength],[Row],[Column],[EditGrid Row],[EditGrid Column],[Label Row],[Label Column],[EditGrid Label Row],[EditGrid Label Column],[Column Span],[RepeatColumns],[RepeatDirection],[Hidden],[OnChange],[Name_if_Button],[Mandatory],[Prompt],[Criteria],[Description],[HasChildControls],[Type]    ,[Other],[Query_Name],[Sub Screen Name],[Sub Screen Type],[Size],[CommandName],[CommandParameter],[ReturnData],[Help],[Modal],[MultiSelect],[Height],[HideWhenNew],[HideWhenValue],[GraphicButton],[Row Span],[Encrypt])
VALUES (N'PER_HRA_Personal_CLI_Search'               ,N'[PER HRA Personal]',N'[Employee]',10        ,Null           ,Null            ,N'No'     ,Null      ,100        ,1    ,2       ,0             ,0                ,1          ,1             ,0                   ,0                      ,1            ,1              ,N'1'             ,N'No'   ,Null      ,Null            ,N'No'      ,Null    ,Null      ,N'Search for',N'No'             ,N'textbox',Null   ,Null        ,Null             ,Null             ,200   ,Null         ,Null              ,N'Yes'      ,Null  ,N'No'  ,N'No'        ,200     ,N'No'        ,Null           ,N'No'          ,1         ,N'No')
GO

INSERT INTO [DEV PORTAL SCREEN DETAIL] ([Screen Name],[Table Name]         ,[Field Name] ,[Sequence],[Default Value],[Display Option],[Readonly],[cssclass],[maxlength],[Row],[Column],[EditGrid Row],[EditGrid Column],[Label Row],[Label Column],[EditGrid Label Row],[EditGrid Label Column],[Column Span],[RepeatColumns],[RepeatDirection],[Hidden],[OnChange],[Name_if_Button],[Mandatory],[Prompt],[Criteria],[Description]     ,[HasChildControls],[Type]     ,[Other],[Query_Name],[Sub Screen Name],[Sub Screen Type],[Size],[CommandName],[CommandParameter],[ReturnData],[Help],[Modal],[MultiSelect],[Height],[HideWhenNew],[HideWhenValue],[GraphicButton],[Row Span],[Encrypt])
VALUES (N'PER_HRA_Personal_CLI_Search'               ,N'[PER HRA Personal]',N'Terminated',15        ,Null           ,Null            ,N'No'     ,Null      ,0          ,2    ,2       ,0             ,0                ,2          ,1             ,0                   ,0                      ,1            ,1              ,N'1'             ,N'No'   ,Null      ,Null            ,N'Yes'     ,N'Yesno',Null      ,N'Show Terminated',N'No'             ,N'Checkbox',Null   ,Null        ,Null             ,Null             ,200   ,Null         ,Null              ,N'Yes'      ,Null  ,N'No'  ,N'No'        ,200     ,N'No'        ,Null           ,N'No'          ,1         ,N'No')
GO

INSERT INTO [DEV PORTAL SCREEN DETAIL] ([Screen Name],[Table Name]         ,[Field Name] ,[Sequence],[Default Value],[Display Option],[Readonly],[cssclass],[maxlength],[Row],[Column],[EditGrid Row],[EditGrid Column],[Label Row],[Label Column],[EditGrid Label Row],[EditGrid Label Column],[Column Span],[RepeatColumns],[RepeatDirection],[Hidden],[OnChange]     ,[Name_if_Button],[Mandatory],[Prompt],[Criteria],[Description]     ,[HasChildControls],[Type]     ,[Other],[Query_Name],[Sub Screen Name],[Sub Screen Type],[Size],[CommandName]  ,[CommandParameter],[ReturnData],[Help],[Modal],[MultiSelect],[Height],[HideWhenNew],[HideWhenValue],[GraphicButton],[Row Span],[Encrypt])
VALUES (N'PER_HRA_Personal_CLI_Search'               ,N'[PER HRA Personal]',N'2'         ,20        ,Null           ,Null            ,N'No'     ,Null      ,0          ,1    ,2       ,0             ,0                ,1          ,1             ,0                   ,0                      ,1            ,1              ,N'1'             ,N'No'   ,N'REBINDSEARCH',Null            ,N'No'      ,Null    ,Null      ,N'Go'             ,N'No'             ,N'button'  ,Null   ,Null        ,Null             ,Null             ,100   ,N'REBINDSEARCH',Null              ,N'Yes'      ,Null  ,N'No'  ,N'No'        ,200     ,N'No'        ,Null           ,N'No'          ,1         ,N'No')
GO

INSERT INTO [DEV PORTAL SCREEN DETAIL] ([Screen Name],[Table Name]         ,[Field Name] ,[Sequence],[Default Value],[Display Option],[Readonly],[cssclass],[maxlength],[Row],[Column],[EditGrid Row],[EditGrid Column],[Label Row],[Label Column],[EditGrid Label Row],[EditGrid Label Column],[Column Span],[RepeatColumns],[RepeatDirection],[Hidden],[OnChange]     ,[Name_if_Button],[Mandatory],[Prompt],[Criteria],[Description]     ,[HasChildControls],[Type]     ,[Other],[Query_Name]                         ,[Sub Screen Name],[Sub Screen Type],[Size],[CommandName]  ,[CommandParameter],[ReturnData],[Help],[Modal],[MultiSelect],[Height],[HideWhenNew],[HideWhenValue],[GraphicButton],[Row Span],[Encrypt])
VALUES (N'PER_HRA_Personal_CLI_Search'               ,N'[PER HRA Personal]',N'4'         ,40        ,Null           ,Null            ,N'No'     ,Null      ,0          ,3    ,1       ,0             ,0                ,1          ,1             ,0                   ,0                      ,3            ,1              ,N'1'             ,N'No'   ,Null           ,Null            ,N'No'      ,Null    ,Null      ,N'Go'             ,N'No'             ,N'radgrid' ,Null   ,N'PER_HRA_Personal_CLI_SearchResults',Null             ,Null             ,1000  ,Null           ,Null              ,N'Yes'      ,Null  ,N'No'  ,N'No'        ,200     ,N'No'        ,Null           ,N'No'          ,1         ,N'No')
GO

INSERT INTO [DEV PORTAL SCREEN DETAIL] ([Screen Name],[Table Name]         ,[Field Name] ,[Sequence],[Default Value],[Display Option],[Readonly],[cssclass],[maxlength],[Row],[Column],[EditGrid Row],[EditGrid Column],[Label Row],[Label Column],[EditGrid Label Row],[EditGrid Label Column],[Column Span],[RepeatColumns],[RepeatDirection],[Hidden],[OnChange]     ,[Name_if_Button],[Mandatory],[Prompt],[Criteria],[Description]     ,[HasChildControls],[Type]     ,[Other],[Query_Name]                         ,[Sub Screen Name],[Sub Screen Type],[Size],[CommandName]  ,[CommandParameter],[ReturnData],[Help],[Modal],[MultiSelect],[Height],[HideWhenNew],[HideWhenValue],[GraphicButton],[Row Span],[Encrypt])
VALUES (N'PER_HRA_Personal_CLI_Search'               ,N'[PER HRA Personal]',N'5'         ,50        ,Null           ,Null            ,N'No'     ,Null      ,0          ,1    ,2       ,0             ,0                ,1          ,1             ,0                   ,0                      ,1            ,1              ,N'1'             ,N'Yes'  ,N'NEWRECORD'   ,Null            ,N'No'      ,Null    ,Null      ,N'New'            ,N'No'             ,N'button'  ,Null   ,Null                                 ,Null             ,Null             ,100   ,N'NEWRECORD'   ,Null              ,N'Yes'      ,Null  ,N'No'  ,N'No'        ,200     ,N'No'        ,Null           ,N'No'          ,1         ,N'No')
GO


SET NOCOUNT ON

DELETE FROM [DEV PORTAL SCREEN DETAIL]
WHERE [Screen Name]='PER_HRA_Personal_CLI'
GO

INSERT INTO [DEV PORTAL SCREEN DETAIL] ([Screen Name],[Table Name]         ,[Field Name],[Sequence],[Default Value],[Display Option],[Readonly],[cssclass],[maxlength],[Row],[Column],[EditGrid Row],[EditGrid Column],[Label Row],[Label Column],[EditGrid Label Row],[EditGrid Label Column],[Column Span],[RepeatColumns],[RepeatDirection],[Hidden],[OnChange],[Name_if_Button],[Mandatory],[Prompt],[Criteria],[Description],[HasChildControls],[Type]    ,[Other],[Query_Name],[Sub Screen Name],[Sub Screen Type],[Size],[CommandName],[CommandParameter],[ReturnData],[Help]   ,[Modal],[MultiSelect],[Height],[HideWhenNew],[HideWhenValue],[GraphicButton],[Row Span],[Encrypt])
VALUES (N'PER_HRA_Personal_CLI'                      ,N'[PER HRA Personal]',N'Number'   ,10        ,Null           ,Null            ,N'No'     ,Null      ,50         ,1    ,2       ,0             ,0                ,1          ,1             ,0                   ,0                      ,0            ,1              ,N'1'             ,N'No'   ,Null      ,Null            ,N'Yes'     ,Null    ,Null      ,N'Number'    ,N'No'             ,N'textbox',Null   ,Null        ,Null             ,Null             ,200   ,Null         ,Null              ,N'Yes'      ,N'Number',N'No'  ,N'No'        ,200     ,N'No'        ,Null           ,N'No'          ,1         ,N'No')
GO

INSERT INTO [DEV PORTAL SCREEN DETAIL] ([Screen Name],[Table Name]         ,[Field Name],[Sequence],[Default Value],[Display Option],[Readonly],[cssclass],[maxlength],[Row],[Column],[EditGrid Row],[EditGrid Column],[Label Row],[Label Column],[EditGrid Label Row],[EditGrid Label Column],[Column Span],[RepeatColumns],[RepeatDirection],[Hidden],[OnChange],[Name_if_Button],[Mandatory],[Prompt],[Criteria],[Description],[HasChildControls],[Type]         ,[Other],[Query_Name],[Sub Screen Name],[Sub Screen Type],[Size],[CommandName],[CommandParameter],[ReturnData],[Help]      ,[Modal],[MultiSelect],[Height],[HideWhenNew],[HideWhenValue],[GraphicButton],[Row Span],[Encrypt])
VALUES (N'PER_HRA_Personal_CLI'                      ,N'[PER HRA Personal]',N'Reference',20        ,Null           ,Null            ,N'Yes'    ,Null      ,100        ,2    ,2       ,0             ,0                ,2          ,1             ,0                   ,0                      ,0            ,1              ,N'1'             ,N'Yes'  ,Null      ,Null            ,N'Yes'     ,Null    ,Null      ,N'Reference' ,N'No'             ,N'largetextbox',Null   ,Null        ,Null             ,Null             ,200   ,Null         ,Null              ,N'Yes'      ,N'Reference',N'No'  ,N'No'        ,200     ,N'No'        ,Null           ,N'No'          ,1         ,N'No')
GO

INSERT INTO [DEV PORTAL SCREEN DETAIL] ([Screen Name],[Table Name]         ,[Field Name],[Sequence],[Default Value],[Display Option],[Readonly],[cssclass],[maxlength],[Row],[Column],[EditGrid Row],[EditGrid Column],[Label Row],[Label Column],[EditGrid Label Row],[EditGrid Label Column],[Column Span],[RepeatColumns],[RepeatDirection],[Hidden],[OnChange],[Name_if_Button],[Mandatory],[Prompt],[Criteria],[Description],[HasChildControls],[Type]         ,[Other],[Query_Name],[Sub Screen Name],[Sub Screen Type],[Size],[CommandName],[CommandParameter],[ReturnData],[Help]      ,[Modal],[MultiSelect],[Height],[HideWhenNew],[HideWhenValue],[GraphicButton],[Row Span],[Encrypt])
VALUES (N'PER_HRA_Personal_CLI'                      ,N'[PER HRA Personal]',N'Type'     ,30        ,Null           ,Null            ,N'Yes'    ,Null      ,50         ,2    ,2       ,0             ,0                ,2          ,1             ,0                   ,0                      ,0            ,1              ,N'1'             ,N'No'   ,Null      ,Null            ,N'Yes'     ,Null    ,Null      ,N'Type'      ,N'No'             ,N'textbox'     ,Null   ,Null        ,Null             ,Null             ,200   ,Null         ,Null              ,N'Yes'      ,N'Type'     ,N'No'  ,N'No'        ,200     ,N'No'        ,Null           ,N'No'          ,1         ,N'No')
GO

INSERT INTO [DEV PORTAL SCREEN DETAIL] ([Screen Name],[Table Name]         ,[Field Name]  ,[Sequence],[Default Value],[Display Option],[Readonly],[cssclass],[maxlength],[Row],[Column],[EditGrid Row],[EditGrid Column],[Label Row],[Label Column],[EditGrid Label Row],[EditGrid Label Column],[Column Span],[RepeatColumns],[RepeatDirection],[Hidden],[OnChange],[Name_if_Button],[Mandatory],[Prompt],[Criteria],[Description] ,[HasChildControls],[Type]         ,[Other],[Query_Name],[Sub Screen Name],[Sub Screen Type],[Size],[CommandName],[CommandParameter],[ReturnData],[Help]        ,[Modal],[MultiSelect],[Height],[HideWhenNew],[HideWhenValue],[GraphicButton],[Row Span],[Encrypt])
VALUES (N'PER_HRA_Personal_CLI'                      ,N'[PER HRA Personal]',N'Family Name',40        ,Null           ,Null            ,N'No'     ,Null      ,50         ,5    ,2       ,0             ,0                ,5          ,1             ,0                   ,0                      ,0            ,1              ,N'1'             ,N'No'   ,Null      ,Null            ,N'Yes'     ,Null    ,Null      ,N'Family Name',N'No'             ,N'textbox'     ,Null   ,Null        ,Null             ,Null             ,200   ,Null         ,Null              ,N'Yes'      ,N'Family Name',N'No'  ,N'No'        ,200     ,N'No'        ,Null           ,N'No'          ,1         ,N'No')
GO

INSERT INTO [DEV PORTAL SCREEN DETAIL] ([Screen Name],[Table Name]         ,[Field Name]  ,[Sequence],[Default Value],[Display Option],[Readonly],[cssclass],[maxlength],[Row],[Column],[EditGrid Row],[EditGrid Column],[Label Row],[Label Column],[EditGrid Label Row],[EditGrid Label Column],[Column Span],[RepeatColumns],[RepeatDirection],[Hidden],[OnChange],[Name_if_Button],[Mandatory],[Prompt],[Criteria],[Description] ,[HasChildControls],[Type]         ,[Other],[Query_Name],[Sub Screen Name],[Sub Screen Type],[Size],[CommandName],[CommandParameter],[ReturnData],[Help]        ,[Modal],[MultiSelect],[Height],[HideWhenNew],[HideWhenValue],[GraphicButton],[Row Span],[Encrypt])
VALUES (N'PER_HRA_Personal_CLI'                      ,N'[PER HRA Personal]',N'Given Name' ,50        ,Null           ,Null            ,N'No'     ,Null      ,50         ,3    ,2       ,0             ,0                ,3          ,1             ,0                   ,0                      ,0            ,1              ,N'1'             ,N'No'   ,Null      ,Null            ,N'Yes'     ,Null    ,Null      ,N'First Name' ,N'No'             ,N'textbox'     ,Null   ,Null        ,Null             ,Null             ,200   ,Null         ,Null              ,N'Yes'      ,N'Given Name' ,N'No'  ,N'No'        ,200     ,N'No'        ,Null           ,N'No'          ,1         ,N'No')
GO

INSERT INTO [DEV PORTAL SCREEN DETAIL] ([Screen Name],[Table Name]         ,[Field Name]  ,[Sequence],[Default Value],[Display Option],[Readonly],[cssclass],[maxlength],[Row],[Column],[EditGrid Row],[EditGrid Column],[Label Row],[Label Column],[EditGrid Label Row],[EditGrid Label Column],[Column Span],[RepeatColumns],[RepeatDirection],[Hidden],[OnChange],[Name_if_Button],[Mandatory],[Prompt],[Criteria],[Description] ,[HasChildControls],[Type]         ,[Other],[Query_Name],[Sub Screen Name],[Sub Screen Type],[Size],[CommandName],[CommandParameter],[ReturnData],[Help]        ,[Modal],[MultiSelect],[Height],[HideWhenNew],[HideWhenValue],[GraphicButton],[Row Span],[Encrypt])
VALUES (N'PER_HRA_Personal_CLI'                      ,N'[PER HRA Personal]',N'Middle Name',60        ,Null           ,Null            ,N'No'     ,Null      ,50         ,4    ,2       ,0             ,0                ,4          ,1             ,0                   ,0                      ,0            ,1              ,N'1'             ,N'No'   ,Null      ,Null            ,N'No'      ,Null    ,Null      ,N'Middle Name',N'No'             ,N'textbox'     ,Null   ,Null        ,Null             ,Null             ,200   ,Null         ,Null              ,N'Yes'      ,N'Middle Name',N'No'  ,N'No'        ,200     ,N'No'        ,Null           ,N'No'          ,1         ,N'No')
GO

INSERT INTO [DEV PORTAL SCREEN DETAIL] ([Screen Name],[Table Name]         ,[Field Name]  ,[Sequence],[Default Value],[Display Option],[Readonly],[cssclass],[maxlength],[Row],[Column],[EditGrid Row],[EditGrid Column],[Label Row],[Label Column],[EditGrid Label Row],[EditGrid Label Column],[Column Span],[RepeatColumns],[RepeatDirection],[Hidden],[OnChange],[Name_if_Button],[Mandatory],[Prompt],[Criteria],[Description]     ,[HasChildControls],[Type]         ,[Other],[Query_Name],[Sub Screen Name],[Sub Screen Type],[Size],[CommandName],[CommandParameter],[ReturnData],[Help]        ,[Modal],[MultiSelect],[Height],[HideWhenNew],[HideWhenValue],[GraphicButton],[Row Span],[Encrypt])
VALUES (N'PER_HRA_Personal_CLI'                      ,N'[PER HRA Personal]',N'Other Names',70        ,Null           ,Null            ,N'No'     ,Null      ,50         ,10   ,2       ,0             ,0                ,10         ,1             ,0                   ,0                      ,0            ,1              ,N'1'             ,N'Yes'  ,Null      ,Null            ,N'No'      ,Null    ,Null      ,N'Second Language',N'No'             ,N'textbox'     ,Null   ,Null        ,Null             ,Null             ,200   ,Null         ,Null              ,N'Yes'      ,N'Other Names',N'No'  ,N'No'        ,200     ,N'No'        ,Null           ,N'No'          ,1         ,N'No')
GO

INSERT INTO [DEV PORTAL SCREEN DETAIL] ([Screen Name],[Table Name]         ,[Field Name]  ,[Sequence],[Default Value],[Display Option],[Readonly],[cssclass],[maxlength],[Row],[Column],[EditGrid Row],[EditGrid Column],[Label Row],[Label Column],[EditGrid Label Row],[EditGrid Label Column],[Column Span],[RepeatColumns],[RepeatDirection],[Hidden],[OnChange],[Name_if_Button],[Mandatory],[Prompt],[Criteria],[Description]     ,[HasChildControls],[Type]         ,[Other],[Query_Name],[Sub Screen Name],[Sub Screen Type],[Size],[CommandName],[CommandParameter],[ReturnData],[Help]        ,[Modal],[MultiSelect],[Height],[HideWhenNew],[HideWhenValue],[GraphicButton],[Row Span],[Encrypt])
VALUES (N'PER_HRA_Personal_CLI'                      ,N'[PER HRA Personal]',N'Initials'   ,80        ,Null           ,Null            ,N'No'     ,Null      ,10         ,6    ,2       ,0             ,0                ,6          ,1             ,0                   ,0                      ,0            ,1              ,N'1'             ,N'No'   ,Null      ,Null            ,N'Yes'     ,Null    ,Null      ,N'Initials'       ,N'No'             ,N'textbox'     ,Null   ,Null        ,Null             ,Null             ,200   ,Null         ,Null              ,N'Yes'      ,N'Initials'   ,N'No'  ,N'No'        ,200     ,N'No'        ,Null           ,N'No'          ,1         ,N'No')
GO

INSERT INTO [DEV PORTAL SCREEN DETAIL] ([Screen Name],[Table Name]         ,[Field Name]  ,[Sequence],[Default Value],[Display Option],[Readonly],[cssclass],[maxlength],[Row],[Column],[EditGrid Row],[EditGrid Column],[Label Row],[Label Column],[EditGrid Label Row],[EditGrid Label Column],[Column Span],[RepeatColumns],[RepeatDirection],[Hidden],[OnChange],[Name_if_Button],[Mandatory],[Prompt],[Criteria],[Description]     ,[HasChildControls],[Type]            ,[Other],[Query_Name],[Sub Screen Name],[Sub Screen Type],[Size],[CommandName],[CommandParameter],[ReturnData],[Help]        ,[Modal],[MultiSelect],[Height],[HideWhenNew],[HideWhenValue],[GraphicButton],[Row Span],[Encrypt])
VALUES (N'PER_HRA_Personal_CLI'                      ,N'[PER HRA Personal]',N'Title'      ,90        ,Null           ,Null            ,N'No'     ,Null      ,10         ,7    ,2       ,0             ,0                ,7          ,1             ,0                   ,0                      ,0            ,5              ,N'1'             ,N'No'   ,Null      ,Null            ,N'Yes'     ,N'Title',Null      ,N'Title'          ,N'No'             ,N'AutoCompleteBox',Null   ,Null        ,Null             ,Null             ,200   ,Null         ,Null              ,N'Yes'      ,N'Title'      ,N'No'  ,N'No'        ,200     ,N'No'        ,Null           ,N'No'          ,1         ,N'No')
GO

INSERT INTO [DEV PORTAL SCREEN DETAIL] ([Screen Name],[Table Name]         ,[Field Name]     ,[Sequence],[Default Value],[Display Option],[Readonly],[cssclass],[maxlength],[Row],[Column],[EditGrid Row],[EditGrid Column],[Label Row],[Label Column],[EditGrid Label Row],[EditGrid Label Column],[Column Span],[RepeatColumns],[RepeatDirection],[Hidden],[OnChange],[Name_if_Button],[Mandatory],[Prompt],[Criteria],[Description]     ,[HasChildControls],[Type]            ,[Other],[Query_Name],[Sub Screen Name],[Sub Screen Type],[Size],[CommandName],[CommandParameter],[ReturnData],[Help]           ,[Modal],[MultiSelect],[Height],[HideWhenNew],[HideWhenValue],[GraphicButton],[Row Span],[Encrypt])
VALUES (N'PER_HRA_Personal_CLI'                      ,N'[PER HRA Personal]',N'Preferred Name',100       ,Null           ,Null            ,N'No'     ,Null      ,50         ,8    ,2       ,0             ,0                ,8          ,1             ,0                   ,0                      ,0            ,1              ,N'1'             ,N'Yes'  ,Null      ,Null            ,N'No'      ,Null    ,Null      ,N'Preferred Name' ,N'No'             ,N'textbox'        ,Null   ,Null        ,Null             ,Null             ,200   ,Null         ,Null              ,N'Yes'      ,N'Preferred Name',N'No'  ,N'No'        ,200     ,N'No'        ,Null           ,N'No'          ,1         ,N'No')
GO

INSERT INTO [DEV PORTAL SCREEN DETAIL] ([Screen Name],[Table Name]         ,[Field Name]     ,[Sequence],[Default Value],[Display Option],[Readonly],[cssclass],[maxlength],[Row],[Column],[EditGrid Row],[EditGrid Column],[Label Row],[Label Column],[EditGrid Label Row],[EditGrid Label Column],[Column Span],[RepeatColumns],[RepeatDirection],[Hidden],[OnChange],[Name_if_Button],[Mandatory],[Prompt],[Criteria],[Description]     ,[HasChildControls],[Type]            ,[Other],[Query_Name],[Sub Screen Name],[Sub Screen Type],[Size],[CommandName],[CommandParameter],[ReturnData],[Help]           ,[Modal],[MultiSelect],[Height],[HideWhenNew],[HideWhenValue],[GraphicButton],[Row Span],[Encrypt])
VALUES (N'PER_HRA_Personal_CLI'                      ,N'[PER HRA Personal]',N'Home Language' ,110       ,Null           ,Null            ,N'No'     ,Null      ,50         ,9    ,2       ,0             ,0                ,9          ,1             ,0                   ,0                      ,0            ,1              ,N'1'             ,N'Yes'  ,Null      ,Null            ,N'No'      ,Null    ,Null      ,N'First Language' ,N'No'             ,N'textbox'        ,Null   ,Null        ,Null             ,Null             ,200   ,Null         ,Null              ,N'Yes'      ,N'Home Language' ,N'No'  ,N'No'        ,200     ,N'No'        ,Null           ,N'No'          ,1         ,N'No')
GO

INSERT INTO [DEV PORTAL SCREEN DETAIL] ([Screen Name],[Table Name]         ,[Field Name]            ,[Sequence],[Default Value],[Display Option],[Readonly],[cssclass],[maxlength],[Row],[Column],[EditGrid Row],[EditGrid Column],[Label Row],[Label Column],[EditGrid Label Row],[EditGrid Label Column],[Column Span],[RepeatColumns],[RepeatDirection],[Hidden],[OnChange],[Name_if_Button],[Mandatory],[Prompt],[Criteria],[Description]     ,[HasChildControls],[Type]            ,[Other],[Query_Name],[Sub Screen Name],[Sub Screen Type],[Size],[CommandName],[CommandParameter],[ReturnData],[Help]                  ,[Modal],[MultiSelect],[Height],[HideWhenNew],[HideWhenValue],[GraphicButton],[Row Span],[Encrypt])
VALUES (N'PER_HRA_Personal_CLI'                      ,N'[PER HRA Personal]',N'Home Telephone Number',120       ,Null           ,Null            ,N'No'     ,Null      ,50         ,8    ,2       ,0             ,0                ,8          ,1             ,0                   ,0                      ,0            ,1              ,N'1'             ,N'No'   ,Null      ,Null            ,N'No'      ,Null    ,Null      ,N'Home Telephone' ,N'No'             ,N'textbox'        ,Null   ,Null        ,Null             ,Null             ,200   ,Null         ,Null              ,N'Yes'      ,N'Home Telephone Number',N'No'  ,N'No'        ,200     ,N'No'        ,Null           ,N'No'          ,1         ,N'No')
GO

INSERT INTO [DEV PORTAL SCREEN DETAIL] ([Screen Name],[Table Name]         ,[Field Name]            ,[Sequence],[Default Value],[Display Option],[Readonly],[cssclass],[maxlength],[Row],[Column],[EditGrid Row],[EditGrid Column],[Label Row],[Label Column],[EditGrid Label Row],[EditGrid Label Column],[Column Span],[RepeatColumns],[RepeatDirection],[Hidden],[OnChange],[Name_if_Button],[Mandatory],[Prompt],[Criteria],[Description]     ,[HasChildControls],[Type]            ,[Other],[Query_Name],[Sub Screen Name],[Sub Screen Type],[Size],[CommandName],[CommandParameter],[ReturnData],[Help]                  ,[Modal],[MultiSelect],[Height],[HideWhenNew],[HideWhenValue],[GraphicButton],[Row Span],[Encrypt])
VALUES (N'PER_HRA_Personal_CLI'                      ,N'[PER HRA Personal]',N'Work Telephone Number',130       ,Null           ,Null            ,N'No'     ,Null      ,50         ,9    ,2       ,0             ,0                ,9          ,1             ,0                   ,0                      ,0            ,1              ,N'1'             ,N'No'   ,Null      ,Null            ,N'No'      ,Null    ,Null      ,N'Work Telephone' ,N'No'             ,N'textbox'        ,Null   ,Null        ,Null             ,Null             ,200   ,Null         ,Null              ,N'Yes'      ,N'Work Telephone Number',N'No'  ,N'No'        ,200     ,N'No'        ,Null           ,N'No'          ,1         ,N'No')
GO

INSERT INTO [DEV PORTAL SCREEN DETAIL] ([Screen Name],[Table Name]         ,[Field Name]            ,[Sequence],[Default Value],[Display Option],[Readonly],[cssclass],[maxlength],[Row],[Column],[EditGrid Row],[EditGrid Column],[Label Row],[Label Column],[EditGrid Label Row],[EditGrid Label Column],[Column Span],[RepeatColumns],[RepeatDirection],[Hidden],[OnChange],[Name_if_Button],[Mandatory],[Prompt],[Criteria],[Description]     ,[HasChildControls],[Type]            ,[Other],[Query_Name],[Sub Screen Name],[Sub Screen Type],[Size],[CommandName],[CommandParameter],[ReturnData],[Help]                  ,[Modal],[MultiSelect],[Height],[HideWhenNew],[HideWhenValue],[GraphicButton],[Row Span],[Encrypt])
VALUES (N'PER_HRA_Personal_CLI'                      ,N'[PER HRA Personal]',N'Mobile Phone Number'  ,140       ,Null           ,Null            ,N'No'     ,Null      ,50         ,10   ,2       ,0             ,0                ,10         ,1             ,0                   ,0                      ,0            ,1              ,N'1'             ,N'No'   ,Null      ,Null            ,N'No'      ,Null    ,Null      ,N'Mobile'         ,N'No'             ,N'textbox'        ,Null   ,Null        ,Null             ,Null             ,200   ,Null         ,Null              ,N'Yes'      ,N'Mobile Phone Number'  ,N'No'  ,N'No'        ,200     ,N'No'        ,Null           ,N'No'          ,1         ,N'No')
GO

INSERT INTO [DEV PORTAL SCREEN DETAIL] ([Screen Name],[Table Name]         ,[Field Name]            ,[Sequence],[Default Value],[Display Option],[Readonly],[cssclass],[maxlength],[Row],[Column],[EditGrid Row],[EditGrid Column],[Label Row],[Label Column],[EditGrid Label Row],[EditGrid Label Column],[Column Span],[RepeatColumns],[RepeatDirection],[Hidden],[OnChange],[Name_if_Button],[Mandatory],[Prompt],[Criteria],[Description]     ,[HasChildControls],[Type]            ,[Other],[Query_Name],[Sub Screen Name],[Sub Screen Type],[Size],[CommandName],[CommandParameter],[ReturnData],[Help]                  ,[Modal],[MultiSelect],[Height],[HideWhenNew],[HideWhenValue],[GraphicButton],[Row Span],[Encrypt])
VALUES (N'PER_HRA_Personal_CLI'                      ,N'[PER HRA Personal]',N'Pager Number'         ,150       ,Null           ,Null            ,N'No'     ,Null      ,50         ,15   ,2       ,0             ,0                ,15         ,1             ,0                   ,0                      ,0            ,1              ,N'1'             ,N'yes'  ,Null      ,Null            ,N'No'      ,Null    ,Null      ,N'Pager Number'   ,N'No'             ,N'textbox'        ,Null   ,Null        ,Null             ,Null             ,200   ,Null         ,Null              ,N'Yes'      ,N'Pager Number'         ,N'No'  ,N'No'        ,200     ,N'No'        ,Null           ,N'No'          ,1         ,N'No')
GO

INSERT INTO [DEV PORTAL SCREEN DETAIL] ([Screen Name],[Table Name]         ,[Field Name]            ,[Sequence],[Default Value],[Display Option],[Readonly],[cssclass],[maxlength],[Row],[Column],[EditGrid Row],[EditGrid Column],[Label Row],[Label Column],[EditGrid Label Row],[EditGrid Label Column],[Column Span],[RepeatColumns],[RepeatDirection],[Hidden],[OnChange],[Name_if_Button],[Mandatory],[Prompt],[Criteria],[Description]     ,[HasChildControls],[Type]            ,[Other],[Query_Name],[Sub Screen Name],[Sub Screen Type],[Size],[CommandName],[CommandParameter],[ReturnData],[Help]                  ,[Modal],[MultiSelect],[Height],[HideWhenNew],[HideWhenValue],[GraphicButton],[Row Span],[Encrypt])
VALUES (N'PER_HRA_Personal_CLI'                      ,N'[PER HRA Personal]',N'E-Mail Address'       ,160       ,Null           ,Null            ,N'No'     ,Null      ,99         ,11   ,2       ,0             ,0                ,11         ,1             ,0                   ,0                      ,0            ,1              ,N'1'             ,N'No'   ,Null      ,Null            ,N'No'      ,Null    ,Null      ,N'E-Mail Address' ,N'No'             ,N'textbox'        ,Null   ,Null        ,Null             ,Null             ,200   ,Null         ,Null              ,N'Yes'      ,N'E-Mail Address'       ,N'No'  ,N'No'        ,200     ,N'No'        ,Null           ,N'No'          ,1         ,N'No')
GO

INSERT INTO [DEV PORTAL SCREEN DETAIL] ([Screen Name],[Table Name]         ,[Field Name]            ,[Sequence],[Default Value],[Display Option],[Readonly],[cssclass],[maxlength],[Row],[Column],[EditGrid Row],[EditGrid Column],[Label Row],[Label Column],[EditGrid Label Row],[EditGrid Label Column],[Column Span],[RepeatColumns],[RepeatDirection],[Hidden],[OnChange],[Name_if_Button],[Mandatory],[Prompt],[Criteria],[Description]     ,[HasChildControls],[Type]            ,[Other],[Query_Name],[Sub Screen Name],[Sub Screen Type],[Size],[CommandName],[CommandParameter],[ReturnData],[Help]                  ,[Modal],[MultiSelect],[Height],[HideWhenNew],[HideWhenValue],[GraphicButton],[Row Span],[Encrypt])
VALUES (N'PER_HRA_Personal_CLI'                      ,N'[PER HRA Personal]',N'Trading Name'         ,170       ,Null           ,Null            ,N'No'     ,Null      ,3          ,15   ,2       ,0             ,0                ,15         ,1             ,0                   ,0                      ,0            ,1              ,N'1'             ,N'yes'  ,Null      ,Null            ,N'Yes'     ,Null    ,Null      ,N'Trading Name'   ,N'No'             ,N'textbox'        ,Null   ,Null        ,Null             ,Null             ,200   ,Null         ,Null              ,N'Yes'      ,N'Trading Name'         ,N'No'  ,N'No'        ,200     ,N'No'        ,Null           ,N'No'          ,1         ,N'No')
GO

INSERT INTO [DEV PORTAL SCREEN DETAIL] ([Screen Name],[Table Name]         ,[Field Name]            ,[Sequence],[Default Value],[Display Option],[Readonly],[cssclass],[maxlength],[Row],[Column],[EditGrid Row],[EditGrid Column],[Label Row],[Label Column],[EditGrid Label Row],[EditGrid Label Column],[Column Span],[RepeatColumns],[RepeatDirection],[Hidden],[OnChange],[Name_if_Button],[Mandatory],[Prompt],[Criteria],[Description]     ,[HasChildControls],[Type]            ,[Other],[Query_Name],[Sub Screen Name],[Sub Screen Type],[Size],[CommandName],[CommandParameter],[ReturnData],[Help]                  ,[Modal],[MultiSelect],[Height],[HideWhenNew],[HideWhenValue],[GraphicButton],[Row Span],[Encrypt])
VALUES (N'PER_HRA_Personal_CLI'                      ,N'[PER HRA Personal]',N'Fax Number'           ,180       ,Null           ,Null            ,N'No'     ,Null      ,50         ,15   ,2       ,0             ,0                ,15         ,1             ,0                   ,0                      ,0            ,1              ,N'1'             ,N'Yes'  ,Null      ,Null            ,N'No'      ,Null    ,Null      ,N'Fax Number'     ,N'No'             ,N'textbox'        ,Null   ,Null        ,Null             ,Null             ,200   ,Null         ,Null              ,N'Yes'      ,N'Fax Number'           ,N'No'  ,N'No'        ,200     ,N'No'        ,Null           ,N'No'          ,1         ,N'No')
GO

INSERT INTO [DEV PORTAL SCREEN DETAIL] ([Screen Name],[Table Name]         ,[Field Name]              ,[Sequence],[Default Value],[Display Option],[Readonly],[cssclass],[maxlength],[Row],[Column],[EditGrid Row],[EditGrid Column],[Label Row],[Label Column],[EditGrid Label Row],[EditGrid Label Column],[Column Span],[RepeatColumns],[RepeatDirection],[Hidden],[OnChange],[Name_if_Button],[Mandatory],[Prompt],[Criteria],[Description]              ,[HasChildControls],[Type]            ,[Other],[Query_Name],[Sub Screen Name],[Sub Screen Type],[Size],[CommandName],[CommandParameter],[ReturnData],[Help]                    ,[Modal],[MultiSelect],[Height],[HideWhenNew],[HideWhenValue],[GraphicButton],[Row Span],[Encrypt])
VALUES (N'PER_HRA_Personal_CLI'                      ,N'[PER HRA Personal]',N'Physical Address Line 1',190       ,Null           ,Null            ,N'No'     ,Null      ,35         ,8    ,4       ,0             ,0                ,8          ,3             ,0                   ,0                      ,0            ,1              ,N'1'             ,N'No'   ,Null      ,Null            ,N'No'      ,Null    ,Null      ,N'Emergency contact in UAE',N'No'             ,N'textbox'        ,Null   ,Null        ,Null             ,Null             ,200   ,Null         ,Null              ,N'Yes'      ,N'Physical Address Line 1',N'No'  ,N'No'        ,200     ,N'No'        ,Null           ,N'No'          ,1         ,N'No')
GO

INSERT INTO [DEV PORTAL SCREEN DETAIL] ([Screen Name],[Table Name]         ,[Field Name]              ,[Sequence],[Default Value],[Display Option],[Readonly],[cssclass],[maxlength],[Row],[Column],[EditGrid Row],[EditGrid Column],[Label Row],[Label Column],[EditGrid Label Row],[EditGrid Label Column],[Column Span],[RepeatColumns],[RepeatDirection],[Hidden],[OnChange],[Name_if_Button],[Mandatory],[Prompt],[Criteria],[Description]                       ,[HasChildControls],[Type]            ,[Other],[Query_Name],[Sub Screen Name],[Sub Screen Type],[Size],[CommandName],[CommandParameter],[ReturnData],[Help]                    ,[Modal],[MultiSelect],[Height],[HideWhenNew],[HideWhenValue],[GraphicButton],[Row Span],[Encrypt])
VALUES (N'PER_HRA_Personal_CLI'                      ,N'[PER HRA Personal]',N'Physical Address Line 2',200       ,Null           ,Null            ,N'No'     ,Null      ,35         ,10   ,4       ,0             ,0                ,10         ,3             ,0                   ,0                      ,0            ,1              ,N'1'             ,N'No'   ,Null      ,Null            ,N'No'      ,Null    ,Null      ,N'Emergency telephone number in UAE',N'No'             ,N'textbox'        ,Null   ,Null        ,Null             ,Null             ,200   ,Null         ,Null              ,N'Yes'      ,N'Physical Address Line 2',N'No'  ,N'No'        ,200     ,N'No'        ,Null           ,N'No'          ,1         ,N'No')
GO

INSERT INTO [DEV PORTAL SCREEN DETAIL] ([Screen Name],[Table Name]         ,[Field Name]              ,[Sequence],[Default Value],[Display Option],[Readonly],[cssclass],[maxlength],[Row],[Column],[EditGrid Row],[EditGrid Column],[Label Row],[Label Column],[EditGrid Label Row],[EditGrid Label Column],[Column Span],[RepeatColumns],[RepeatDirection],[Hidden],[OnChange],[Name_if_Button],[Mandatory],[Prompt],[Criteria],[Description]                       ,[HasChildControls],[Type]            ,[Other],[Query_Name],[Sub Screen Name],[Sub Screen Type],[Size],[CommandName],[CommandParameter],[ReturnData],[Help]                    ,[Modal],[MultiSelect],[Height],[HideWhenNew],[HideWhenValue],[GraphicButton],[Row Span],[Encrypt])
VALUES (N'PER_HRA_Personal_CLI'                      ,N'[PER HRA Personal]',N'Physical Address Line 3',210       ,Null           ,Null            ,N'No'     ,Null      ,35         ,1    ,4       ,0             ,0                ,1          ,3             ,0                   ,0                      ,0            ,1              ,N'1'             ,N'No'   ,Null      ,Null            ,N'No'      ,Null    ,Null      ,N'Home address in UAE'              ,N'No'             ,N'textbox'        ,Null   ,Null        ,Null             ,Null             ,200   ,Null         ,Null              ,N'Yes'      ,N'Physical Address Line 3',N'No'  ,N'No'        ,200     ,N'No'        ,Null           ,N'No'          ,1         ,N'No')
GO

INSERT INTO [DEV PORTAL SCREEN DETAIL] ([Screen Name],[Table Name]         ,[Field Name]              ,[Sequence],[Default Value],[Display Option],[Readonly],[cssclass],[maxlength],[Row],[Column],[EditGrid Row],[EditGrid Column],[Label Row],[Label Column],[EditGrid Label Row],[EditGrid Label Column],[Column Span],[RepeatColumns],[RepeatDirection],[Hidden],[OnChange],[Name_if_Button],[Mandatory],[Prompt],[Criteria],[Description]                       ,[HasChildControls],[Type]            ,[Other],[Query_Name],[Sub Screen Name],[Sub Screen Type],[Size],[CommandName],[CommandParameter],[ReturnData],[Help]                    ,[Modal],[MultiSelect]             ,[Height],[HideWhenNew],[HideWhenValue],[GraphicButton],[Row Span],[Encrypt])
VALUES (N'PER_HRA_Personal_CLI'                      ,N'[PER HRA Personal]',N'Physical Address Line 4',220       ,Null           ,Null            ,N'No'     ,Null      ,35         ,2    ,4       ,0             ,0                ,2          ,3             ,0                   ,0                      ,0            ,1              ,N'1'             ,N'No'   ,Null      ,Null            ,N'No'      ,Null    ,Null      ,N'Area in UAE (Springs              , Bur Dubai        , etc)'            ,N'No'  ,N'textbox'  ,Null             ,Null             ,Null  ,Null         ,200               ,Null        ,Null                      ,N'Yes' ,N'Physical Address Line 4',N'No'   ,N'No'        ,200            ,N'No'          ,Null      ,N'No',1,N'No')
GO

INSERT INTO [DEV PORTAL SCREEN DETAIL] ([Screen Name],[Table Name]         ,[Field Name]                   ,[Sequence],[Default Value],[Display Option],[Readonly],[cssclass],[maxlength],[Row],[Column],[EditGrid Row],[EditGrid Column],[Label Row],[Label Column],[EditGrid Label Row],[EditGrid Label Column],[Column Span],[RepeatColumns],[RepeatDirection],[Hidden],[OnChange],[Name_if_Button],[Mandatory],[Prompt],[Criteria],[Description]                       ,[HasChildControls],[Type]            ,[Other],[Query_Name],[Sub Screen Name],[Sub Screen Type],[Size],[CommandName],[CommandParameter],[ReturnData],[Help]                         ,[Modal],[MultiSelect]             ,[Height],[HideWhenNew],[HideWhenValue],[GraphicButton],[Row Span],[Encrypt])
VALUES (N'PER_HRA_Personal_CLI'                      ,N'[PER HRA Personal]',N'Physical Address Postal Code',230       ,Null           ,Null            ,N'No'     ,Null      ,10         ,6    ,4       ,0             ,0                ,6          ,3             ,0                   ,0                      ,0            ,1              ,N'1'             ,N'No'   ,Null      ,Null            ,N'No'      ,Null    ,Null      ,N'City'                             ,N'No'             ,N'textbox'        ,Null   ,Null        ,Null             ,Null             ,200   ,Null         ,Null              ,N'Yes'      ,N'Physical Address Postal Code',N'No'  ,N'No'                     ,200     ,N'No'        ,Null           ,N'No'          ,1         ,N'No')
GO

INSERT INTO [DEV PORTAL SCREEN DETAIL] ([Screen Name],[Table Name]         ,[Field Name]                   ,[Sequence],[Default Value],[Display Option],[Readonly],[cssclass],[maxlength],[Row],[Column],[EditGrid Row],[EditGrid Column],[Label Row],[Label Column],[EditGrid Label Row],[EditGrid Label Column],[Column Span],[RepeatColumns],[RepeatDirection],[Hidden],[OnChange],[Name_if_Button],[Mandatory],[Prompt],[Criteria],[Description]                       ,[HasChildControls],[Type]            ,[Other],[Query_Name],[Sub Screen Name],[Sub Screen Type],[Size],[CommandName],[CommandParameter],[ReturnData],[Help]                         ,[Modal],[MultiSelect]             ,[Height],[HideWhenNew],[HideWhenValue],[GraphicButton],[Row Span],[Encrypt])
VALUES (N'PER_HRA_Personal_CLI'                      ,N'[PER HRA Personal]',N'Physical Address City'       ,240       ,Null           ,Null            ,N'No'     ,Null      ,50         ,3    ,4       ,0             ,0                ,3          ,3             ,0                   ,0                      ,0            ,1              ,N'1'             ,N'No'   ,Null      ,Null            ,N'No'      ,Null    ,Null      ,N'Emirate in UAE'                   ,N'No'             ,N'textbox'        ,Null   ,Null        ,Null             ,Null             ,200   ,Null         ,Null              ,N'Yes'      ,N'Physical Address City'       ,N'No'  ,N'No'                     ,200     ,N'No'        ,Null           ,N'No'          ,1         ,N'No')
GO

INSERT INTO [DEV PORTAL SCREEN DETAIL] ([Screen Name],[Table Name]         ,[Field Name]                   ,[Sequence],[Default Value],[Display Option],[Readonly],[cssclass],[maxlength],[Row],[Column],[EditGrid Row],[EditGrid Column],[Label Row],[Label Column],[EditGrid Label Row],[EditGrid Label Column],[Column Span],[RepeatColumns],[RepeatDirection],[Hidden],[OnChange],[Name_if_Button],[Mandatory],[Prompt]          ,[Criteria],[Description]                       ,[HasChildControls],[Type]            ,[Other],[Query_Name],[Sub Screen Name],[Sub Screen Type],[Size],[CommandName],[CommandParameter],[ReturnData],[Help]                         ,[Modal],[MultiSelect]             ,[Height],[HideWhenNew],[HideWhenValue],[GraphicButton],[Row Span],[Encrypt])
VALUES (N'PER_HRA_Personal_CLI'                      ,N'[PER HRA Personal]',N'Physical Address Country'    ,250       ,Null           ,Null            ,N'No'     ,Null      ,50         ,7    ,4       ,0             ,0                ,7          ,3             ,0                   ,0                      ,0            ,5              ,N'1'             ,N'No'   ,Null      ,Null            ,N'No'      ,N'Vanilla Country',Null      ,N'State/Country'                    ,N'No'             ,N'AutoCompleteBox',Null   ,Null        ,Null             ,Null             ,200   ,Null         ,Null              ,N'Yes'      ,N'Physical Address Country'    ,N'No'  ,N'No'                     ,200     ,N'No'        ,Null           ,N'No'          ,1         ,N'No')
GO

INSERT INTO [DEV PORTAL SCREEN DETAIL] ([Screen Name],[Table Name]         ,[Field Name]                   ,[Sequence],[Default Value],[Display Option],[Readonly],[cssclass],[maxlength],[Row],[Column],[EditGrid Row],[EditGrid Column],[Label Row],[Label Column],[EditGrid Label Row],[EditGrid Label Column],[Column Span],[RepeatColumns],[RepeatDirection],[Hidden],[OnChange],[Name_if_Button],[Mandatory],[Prompt]          ,[Criteria],[Description]                       ,[HasChildControls],[Type]            ,[Other],[Query_Name],[Sub Screen Name],[Sub Screen Type],[Size],[CommandName],[CommandParameter],[ReturnData],[Help]                         ,[Modal],[MultiSelect]             ,[Height],[HideWhenNew],[HideWhenValue],[GraphicButton],[Row Span],[Encrypt])
VALUES (N'PER_HRA_Personal_CLI'                      ,N'[PER HRA Personal]',N'Postal Address Line 1'       ,260       ,Null           ,Null            ,N'No'     ,Null      ,35         ,11   ,4       ,0             ,0                ,11         ,3             ,0                   ,0                      ,0            ,1              ,N'1'             ,N'No'   ,Null      ,Null            ,N'No'      ,Null              ,Null      ,N'Emergency contact overseas'       ,N'No'             ,N'textbox'        ,Null   ,Null        ,Null             ,Null             ,200   ,Null         ,Null              ,N'Yes'      ,N'Postal Address Line 1'       ,N'No'  ,N'No'                     ,200     ,N'No'        ,Null           ,N'No'          ,1         ,N'No')
GO

INSERT INTO [DEV PORTAL SCREEN DETAIL] ([Screen Name],[Table Name]         ,[Field Name]                   ,[Sequence],[Default Value],[Display Option],[Readonly],[cssclass],[maxlength],[Row],[Column],[EditGrid Row],[EditGrid Column],[Label Row],[Label Column],[EditGrid Label Row],[EditGrid Label Column],[Column Span],[RepeatColumns],[RepeatDirection],[Hidden],[OnChange],[Name_if_Button],[Mandatory],[Prompt]          ,[Criteria],[Description]                         ,[HasChildControls],[Type]            ,[Other],[Query_Name],[Sub Screen Name],[Sub Screen Type],[Size],[CommandName],[CommandParameter],[ReturnData],[Help]                         ,[Modal],[MultiSelect]             ,[Height],[HideWhenNew],[HideWhenValue],[GraphicButton],[Row Span],[Encrypt])
VALUES (N'PER_HRA_Personal_CLI'                      ,N'[PER HRA Personal]',N'Postal Address Line 2'       ,270       ,Null           ,Null            ,N'No'     ,Null      ,35         ,13   ,4       ,0             ,0                ,13         ,3             ,0                   ,0                      ,0            ,1              ,N'1'             ,N'No'   ,Null      ,Null            ,N'No'      ,Null              ,Null      ,N'Emergency telephone number overseas',N'No'             ,N'textbox'        ,Null   ,Null        ,Null             ,Null             ,200   ,Null         ,Null              ,N'Yes'      ,N'Postal Address Line 2'       ,N'No'  ,N'No'                     ,200     ,N'No'        ,Null           ,N'No'          ,1         ,N'No')
GO

INSERT INTO [DEV PORTAL SCREEN DETAIL] ([Screen Name],[Table Name]         ,[Field Name]                   ,[Sequence],[Default Value],[Display Option],[Readonly],[cssclass],[maxlength],[Row],[Column],[EditGrid Row],[EditGrid Column],[Label Row],[Label Column],[EditGrid Label Row],[EditGrid Label Column],[Column Span],[RepeatColumns],[RepeatDirection],[Hidden],[OnChange],[Name_if_Button],[Mandatory],[Prompt]          ,[Criteria],[Description]                         ,[HasChildControls],[Type]            ,[Other],[Query_Name],[Sub Screen Name],[Sub Screen Type],[Size],[CommandName],[CommandParameter],[ReturnData],[Help]                         ,[Modal],[MultiSelect]             ,[Height],[HideWhenNew],[HideWhenValue],[GraphicButton],[Row Span],[Encrypt])
VALUES (N'PER_HRA_Personal_CLI'                      ,N'[PER HRA Personal]',N'Postal Address Line 3'       ,280       ,Null           ,Null            ,N'No'     ,Null      ,35         ,4    ,4       ,0             ,0                ,4          ,3             ,0                   ,0                      ,0            ,1              ,N'1'             ,N'No'   ,Null      ,Null            ,N'No'      ,Null              ,Null      ,N'Home address overseas'              ,N'No'             ,N'textbox'        ,Null   ,Null        ,Null             ,Null             ,200   ,Null         ,Null              ,N'Yes'      ,N'Postal Address Line 3'       ,N'No'  ,N'No'                     ,200     ,N'No'        ,Null           ,N'No'          ,1         ,N'No')
GO

INSERT INTO [DEV PORTAL SCREEN DETAIL] ([Screen Name],[Table Name]         ,[Field Name]                   ,[Sequence],[Default Value],[Display Option],[Readonly],[cssclass],[maxlength],[Row],[Column],[EditGrid Row],[EditGrid Column],[Label Row],[Label Column],[EditGrid Label Row],[EditGrid Label Column],[Column Span],[RepeatColumns],[RepeatDirection],[Hidden],[OnChange],[Name_if_Button],[Mandatory],[Prompt]          ,[Criteria],[Description]                         ,[HasChildControls],[Type]            ,[Other],[Query_Name],[Sub Screen Name],[Sub Screen Type],[Size],[CommandName],[CommandParameter],[ReturnData],[Help]                         ,[Modal],[MultiSelect]             ,[Height],[HideWhenNew],[HideWhenValue],[GraphicButton],[Row Span],[Encrypt])
VALUES (N'PER_HRA_Personal_CLI'                      ,N'[PER HRA Personal]',N'Postal Address Line 4'       ,290       ,Null           ,Null            ,N'No'     ,Null      ,35         ,5    ,4       ,0             ,0                ,5          ,3             ,0                   ,0                      ,0            ,1              ,N'1'             ,N'No'   ,Null      ,Null            ,N'No'      ,Null              ,Null      ,N'Home address overseas'              ,N'No'             ,N'textbox'        ,Null   ,Null        ,Null             ,Null             ,200   ,Null         ,Null              ,N'Yes'      ,N'Postal Address Line 4'       ,N'No'  ,N'No'                     ,200     ,N'No'        ,Null           ,N'No'          ,1         ,N'No')
GO

INSERT INTO [DEV PORTAL SCREEN DETAIL] ([Screen Name],[Table Name]         ,[Field Name]                   ,[Sequence],[Default Value],[Display Option],[Readonly],[cssclass],[maxlength],[Row],[Column],[EditGrid Row],[EditGrid Column],[Label Row],[Label Column],[EditGrid Label Row],[EditGrid Label Column],[Column Span],[RepeatColumns],[RepeatDirection],[Hidden],[OnChange],[Name_if_Button],[Mandatory],[Prompt]          ,[Criteria],[Description]                         ,[HasChildControls],[Type]            ,[Other],[Query_Name],[Sub Screen Name],[Sub Screen Type],[Size],[CommandName],[CommandParameter],[ReturnData],[Help]                         ,[Modal],[MultiSelect]             ,[Height],[HideWhenNew],[HideWhenValue],[GraphicButton],[Row Span],[Encrypt])
VALUES (N'PER_HRA_Personal_CLI'                      ,N'[PER HRA Personal]',N'Postal Address Postal Code'  ,300       ,Null           ,Null            ,N'No'     ,Null      ,20         ,9    ,4       ,0             ,0                ,9          ,3             ,0                   ,0                      ,0            ,1              ,N'1'             ,N'No'   ,Null      ,Null            ,N'No'      ,Null              ,Null      ,N'Relationship to the Employee'       ,N'No'             ,N'textbox'        ,Null   ,Null        ,Null             ,Null             ,200   ,Null         ,Null              ,N'Yes'      ,N'Postal Address Postal Code'  ,N'No'  ,N'No'                     ,200     ,N'No'        ,Null           ,N'No'          ,1         ,N'No')
GO

INSERT INTO [DEV PORTAL SCREEN DETAIL] ([Screen Name],[Table Name]         ,[Field Name]                   ,[Sequence],[Default Value],[Display Option],[Readonly],[cssclass],[maxlength],[Row],[Column],[EditGrid Row],[EditGrid Column],[Label Row],[Label Column],[EditGrid Label Row],[EditGrid Label Column],[Column Span],[RepeatColumns],[RepeatDirection],[Hidden],[OnChange],[Name_if_Button],[Mandatory],[Prompt]          ,[Criteria],[Description]                         ,[HasChildControls],[Type]            ,[Other],[Query_Name],[Sub Screen Name],[Sub Screen Type],[Size],[CommandName],[CommandParameter],[ReturnData],[Help]                         ,[Modal],[MultiSelect]             ,[Height],[HideWhenNew],[HideWhenValue],[GraphicButton],[Row Span],[Encrypt])
VALUES (N'PER_HRA_Personal_CLI'                      ,N'[PER HRA Personal]',N'Postal Address Country'      ,310       ,Null           ,Null            ,N'No'     ,Null      ,50         ,12   ,4       ,0             ,0                ,12         ,3             ,0                   ,0                      ,0            ,5              ,N'1'             ,N'No'   ,Null      ,Null            ,N'No'      ,Null              ,Null      ,N'Relationship to the Employee'       ,N'No'             ,N'textbox'        ,Null   ,Null        ,Null             ,Null             ,200   ,Null         ,Null              ,N'Yes'      ,N'Postal Address Country'      ,N'No'  ,N'No'                     ,200     ,N'No'        ,Null           ,N'No'          ,1         ,N'No')
GO

INSERT INTO [DEV PORTAL SCREEN DETAIL] ([Screen Name],[Table Name]         ,[Field Name]                   ,[Sequence],[Default Value],[Display Option],[Readonly],[cssclass],[maxlength],[Row],[Column],[EditGrid Row],[EditGrid Column],[Label Row],[Label Column],[EditGrid Label Row],[EditGrid Label Column],[Column Span],[RepeatColumns],[RepeatDirection],[Hidden],[OnChange],[Name_if_Button],[Mandatory],[Prompt]          ,[Criteria],[Description]                         ,[HasChildControls],[Type]            ,[Other],[Query_Name],[Sub Screen Name],[Sub Screen Type],[Size],[CommandName],[CommandParameter],[ReturnData],[Help]                         ,[Modal],[MultiSelect]             ,[Height],[HideWhenNew],[HideWhenValue],[GraphicButton],[Row Span],[Encrypt])
VALUES (N'PER_HRA_Personal_CLI'                      ,N'[PER HRA Personal]',N'Race'                        ,320       ,Null           ,Null            ,N'No'     ,Null      ,50         ,10   ,4       ,0             ,0                ,10         ,3             ,0                   ,0                      ,0            ,1              ,N'1'             ,N'yes'  ,Null      ,Null            ,N'No'      ,Null              ,Null      ,N'Race'                               ,N'No'             ,N'textbox'        ,Null   ,Null        ,Null             ,Null             ,200   ,Null         ,Null              ,N'Yes'      ,N'Race'                        ,N'No'  ,N'No'                     ,200     ,N'No'        ,Null           ,N'No'          ,1         ,N'No')
GO

INSERT INTO [DEV PORTAL SCREEN DETAIL] ([Screen Name],[Table Name]         ,[Field Name]                   ,[Sequence],[Default Value],[Display Option],[Readonly],[cssclass],[maxlength],[Row],[Column],[EditGrid Row],[EditGrid Column],[Label Row],[Label Column],[EditGrid Label Row],[EditGrid Label Column],[Column Span],[RepeatColumns],[RepeatDirection],[Hidden],[OnChange],[Name_if_Button],[Mandatory],[Prompt]          ,[Criteria],[Description]                         ,[HasChildControls],[Type]            ,[Other],[Query_Name],[Sub Screen Name],[Sub Screen Type],[Size],[CommandName],[CommandParameter],[ReturnData],[Help]                         ,[Modal],[MultiSelect]             ,[Height],[HideWhenNew],[HideWhenValue],[GraphicButton],[Row Span],[Encrypt])
VALUES (N'PER_HRA_Personal_CLI'                      ,N'[PER HRA Personal]',N'Gender'                      ,330       ,Null           ,Null            ,N'No'     ,Null      ,50         ,14   ,4       ,0             ,0                ,14         ,3             ,0                   ,0                      ,0            ,5              ,N'0'             ,N'No'   ,Null      ,Null            ,N'Yes'     ,N'GENDER'         ,Null      ,N'Gender'                             ,N'No'             ,N'radiobuttonlist',Null   ,Null        ,Null             ,Null             ,200   ,Null         ,Null              ,N'Yes'      ,N'Gender'                      ,N'No'  ,N'No'                     ,200     ,N'No'        ,Null           ,N'No'          ,1         ,N'No')
GO

INSERT INTO [DEV PORTAL SCREEN DETAIL] ([Screen Name],[Table Name]         ,[Field Name]                   ,[Sequence],[Default Value],[Display Option],[Readonly],[cssclass],[maxlength],[Row],[Column],[EditGrid Row],[EditGrid Column],[Label Row],[Label Column],[EditGrid Label Row],[EditGrid Label Column],[Column Span],[RepeatColumns],[RepeatDirection],[Hidden],[OnChange],[Name_if_Button],[Mandatory],[Prompt]          ,[Criteria],[Description]                         ,[HasChildControls],[Type]            ,[Other],[Query_Name],[Sub Screen Name],[Sub Screen Type],[Size],[CommandName],[CommandParameter],[ReturnData],[Help]                         ,[Modal],[MultiSelect]             ,[Height],[HideWhenNew],[HideWhenValue],[GraphicButton],[Row Span],[Encrypt])
VALUES (N'PER_HRA_Personal_CLI'                      ,N'[PER HRA Personal]',N'Religion'                    ,340       ,Null           ,Null            ,N'No'     ,Null      ,50         ,16   ,2       ,0             ,0                ,16         ,1             ,0                   ,0                      ,0            ,1              ,N'1'             ,N'No'   ,Null      ,Null            ,N'No'      ,Null              ,Null      ,N'Religion'                           ,N'No'             ,N'textbox'        ,Null   ,Null        ,Null             ,Null             ,200   ,Null         ,Null              ,N'Yes'      ,N'Religion'                    ,N'No'  ,N'No'                     ,200     ,N'No'        ,Null           ,N'No'          ,1         ,N'No')
GO

INSERT INTO [DEV PORTAL SCREEN DETAIL] ([Screen Name],[Table Name]         ,[Field Name]                   ,[Sequence],[Default Value],[Display Option],[Readonly],[cssclass],[maxlength],[Row],[Column],[EditGrid Row],[EditGrid Column],[Label Row],[Label Column],[EditGrid Label Row],[EditGrid Label Column],[Column Span],[RepeatColumns],[RepeatDirection],[Hidden],[OnChange],[Name_if_Button],[Mandatory],[Prompt]          ,[Criteria],[Description]                         ,[HasChildControls],[Type]            ,[Other],[Query_Name],[Sub Screen Name],[Sub Screen Type],[Size],[CommandName],[CommandParameter],[ReturnData],[Help]                         ,[Modal],[MultiSelect]             ,[Height],[HideWhenNew],[HideWhenValue],[GraphicButton],[Row Span],[Encrypt])
VALUES (N'PER_HRA_Personal_CLI'                      ,N'[PER HRA Personal]',N'Disabled'                    ,350       ,Null           ,Null            ,N'No'     ,Null      ,10         ,15   ,4       ,0             ,0                ,15         ,3             ,0                   ,0                      ,0            ,5              ,N'1'             ,N'No'   ,Null      ,Null            ,N'No'      ,N'YesNo'          ,Null      ,N'Disabled'                           ,N'No'             ,N'AutoCompleteBox',Null   ,Null        ,Null             ,Null             ,200   ,Null         ,Null              ,N'Yes'      ,N'Disabled'                    ,N'No'  ,N'No'                     ,200     ,N'No'        ,Null           ,N'No'          ,1         ,N'No')
GO

INSERT INTO [DEV PORTAL SCREEN DETAIL] ([Screen Name],[Table Name]         ,[Field Name]                   ,[Sequence],[Default Value],[Display Option],[Readonly],[cssclass],[maxlength],[Row],[Column],[EditGrid Row],[EditGrid Column],[Label Row],[Label Column],[EditGrid Label Row],[EditGrid Label Column],[Column Span],[RepeatColumns],[RepeatDirection],[Hidden],[OnChange],[Name_if_Button],[Mandatory],[Prompt]          ,[Criteria],[Description]                         ,[HasChildControls],[Type]            ,[Other],[Query_Name],[Sub Screen Name],[Sub Screen Type],[Size],[CommandName],[CommandParameter],[ReturnData],[Help]                         ,[Modal],[MultiSelect]             ,[Height],[HideWhenNew],[HideWhenValue],[GraphicButton],[Row Span],[Encrypt])
VALUES (N'PER_HRA_Personal_CLI'                      ,N'[PER HRA Personal]',N'Type of Disability'          ,360       ,Null           ,Null            ,N'No'     ,Null      ,50         ,16   ,4       ,0             ,0                ,16         ,3             ,0                   ,0                      ,0            ,5              ,N'1'             ,N'No'   ,Null      ,Null            ,N'No'      ,N'Disability Type',Null      ,N'Type of Disability'                 ,N'No'             ,N'AutoCompleteBox',Null   ,Null        ,Null             ,Null             ,200   ,Null         ,Null              ,N'Yes'      ,N'Type of Disability'          ,N'No'  ,N'No'                     ,200     ,N'No'        ,Null           ,N'No'          ,1         ,N'No')
GO

INSERT INTO [DEV PORTAL SCREEN DETAIL] ([Screen Name],[Table Name]         ,[Field Name]                   ,[Sequence],[Default Value],[Display Option],[Readonly],[cssclass],[maxlength],[Row],[Column],[EditGrid Row],[EditGrid Column],[Label Row],[Label Column],[EditGrid Label Row],[EditGrid Label Column],[Column Span],[RepeatColumns],[RepeatDirection],[Hidden],[OnChange],[Name_if_Button],[Mandatory],[Prompt]          ,[Criteria],[Description]                         ,[HasChildControls],[Type]            ,[Other],[Query_Name],[Sub Screen Name],[Sub Screen Type],[Size],[CommandName],[CommandParameter],[ReturnData],[Help]                         ,[Modal],[MultiSelect]             ,[Height],[HideWhenNew],[HideWhenValue],[GraphicButton],[Row Span],[Encrypt])
VALUES (N'PER_HRA_Personal_CLI'                      ,N'[PER HRA Personal]',N'Date of Birth'               ,370       ,Null           ,Null            ,N'No'     ,Null      ,0          ,12   ,2       ,0             ,0                ,12         ,1             ,0                   ,0                      ,0            ,1              ,N'1'             ,N'No'   ,Null      ,Null            ,N'yes'     ,Null              ,Null      ,N'Date of Birth'                      ,N'No'             ,N'date'           ,Null   ,Null        ,Null             ,Null             ,80    ,Null         ,Null              ,N'Yes'      ,N'Date of Birth'               ,N'No'  ,N'No'                     ,200     ,N'No'        ,Null           ,N'No'          ,1         ,N'No')
GO

INSERT INTO [DEV PORTAL SCREEN DETAIL] ([Screen Name],[Table Name]         ,[Field Name]                   ,[Sequence],[Default Value],[Display Option],[Readonly],[cssclass],[maxlength],[Row],[Column],[EditGrid Row],[EditGrid Column],[Label Row],[Label Column],[EditGrid Label Row],[EditGrid Label Column],[Column Span],[RepeatColumns],[RepeatDirection],[Hidden],[OnChange],[Name_if_Button],[Mandatory],[Prompt]          ,[Criteria],[Description]                         ,[HasChildControls],[Type]            ,[Other],[Query_Name],[Sub Screen Name],[Sub Screen Type],[Size],[CommandName],[CommandParameter],[ReturnData],[Help]                         ,[Modal],[MultiSelect]             ,[Height],[HideWhenNew],[HideWhenValue],[GraphicButton],[Row Span],[Encrypt])
VALUES (N'PER_HRA_Personal_CLI'                      ,N'[PER HRA Personal]',N'ID Number'                   ,380       ,Null           ,Null            ,N'No'     ,Null      ,13         ,16   ,2       ,0             ,0                ,16         ,1             ,0                   ,0                      ,0            ,1              ,N'1'             ,N'yes'  ,Null      ,Null            ,N'No'      ,Null              ,Null      ,N'ID Number'                          ,N'No'             ,N'textbox'        ,Null   ,Null        ,Null             ,Null             ,200   ,Null         ,Null              ,N'Yes'      ,N'ID Number'                   ,N'No'  ,N'No'                     ,200     ,N'No'        ,Null           ,N'No'          ,1         ,N'No')
GO

INSERT INTO [DEV PORTAL SCREEN DETAIL] ([Screen Name],[Table Name]         ,[Field Name]                   ,[Sequence],[Default Value],[Display Option],[Readonly],[cssclass],[maxlength],[Row],[Column],[EditGrid Row],[EditGrid Column],[Label Row],[Label Column],[EditGrid Label Row],[EditGrid Label Column],[Column Span],[RepeatColumns],[RepeatDirection],[Hidden],[OnChange],[Name_if_Button],[Mandatory],[Prompt]          ,[Criteria],[Description]                         ,[HasChildControls],[Type]            ,[Other],[Query_Name],[Sub Screen Name],[Sub Screen Type],[Size],[CommandName],[CommandParameter],[ReturnData],[Help]                         ,[Modal],[MultiSelect]             ,[Height],[HideWhenNew],[HideWhenValue],[GraphicButton],[Row Span],[Encrypt])
VALUES (N'PER_HRA_Personal_CLI'                      ,N'[PER HRA Personal]',N'Passport Number'             ,390       ,Null           ,Null            ,N'No'     ,Null      ,13         ,17   ,4       ,0             ,0                ,17         ,3             ,0                   ,0                      ,0            ,1              ,N'1'             ,N'yes'  ,Null      ,Null            ,N'No'      ,Null              ,Null      ,N'Passport Number'                    ,N'No'             ,N'textbox'        ,Null   ,Null        ,Null             ,Null             ,200   ,Null         ,Null              ,N'Yes'      ,N'Passport Number'             ,N'No'  ,N'No'                     ,200     ,N'No'        ,Null           ,N'No'          ,1         ,N'No')
GO

INSERT INTO [DEV PORTAL SCREEN DETAIL] ([Screen Name],[Table Name]         ,[Field Name]                   ,[Sequence],[Default Value],[Display Option],[Readonly],[cssclass],[maxlength],[Row],[Column],[EditGrid Row],[EditGrid Column],[Label Row],[Label Column],[EditGrid Label Row],[EditGrid Label Column],[Column Span],[RepeatColumns],[RepeatDirection],[Hidden],[OnChange],[Name_if_Button],[Mandatory],[Prompt]          ,[Criteria],[Description]                         ,[HasChildControls],[Type]            ,[Other],[Query_Name],[Sub Screen Name],[Sub Screen Type],[Size],[CommandName],[CommandParameter],[ReturnData],[Help]                         ,[Modal],[MultiSelect]             ,[Height],[HideWhenNew],[HideWhenValue],[GraphicButton],[Row Span],[Encrypt])
VALUES (N'PER_HRA_Personal_CLI'                      ,N'[PER HRA Personal]',N'Nationality'                 ,400       ,Null           ,Null            ,N'No'     ,Null      ,50         ,13   ,2       ,0             ,0                ,13         ,1             ,0                   ,0                      ,0            ,5              ,N'1'             ,N'No'   ,Null      ,Null            ,N'yes'     ,N'Vanilla Country',Null      ,N'Nationality'                        ,N'No'             ,N'AutoCompleteBox',Null   ,Null        ,Null             ,Null             ,200   ,Null         ,Null              ,N'Yes'      ,N'Nationality'                 ,N'No'  ,N'No'                     ,200     ,N'No'        ,Null           ,N'No'          ,1         ,N'No')
GO

INSERT INTO [DEV PORTAL SCREEN DETAIL] ([Screen Name],[Table Name]         ,[Field Name]                   ,[Sequence],[Default Value],[Display Option],[Readonly],[cssclass],[maxlength],[Row],[Column],[EditGrid Row],[EditGrid Column],[Label Row],[Label Column],[EditGrid Label Row],[EditGrid Label Column],[Column Span],[RepeatColumns],[RepeatDirection],[Hidden],[OnChange],[Name_if_Button],[Mandatory],[Prompt]          ,[Criteria],[Description]                         ,[HasChildControls],[Type]            ,[Other],[Query_Name],[Sub Screen Name],[Sub Screen Type],[Size],[CommandName],[CommandParameter],[ReturnData],[Help]                         ,[Modal],[MultiSelect]             ,[Height],[HideWhenNew],[HideWhenValue],[GraphicButton],[Row Span],[Encrypt])
VALUES (N'PER_HRA_Personal_CLI'                      ,N'[PER HRA Personal]',N'Home Base Currency'          ,410       ,Null           ,Null            ,N'No'     ,Null      ,50         ,18   ,2       ,0             ,0                ,18         ,1             ,0                   ,0                      ,0            ,1              ,N'1'             ,N'Yes'  ,Null      ,Null            ,N'Yes'     ,N'Currency'       ,Null      ,N'Home Base Currency'                 ,N'No'             ,N'AutoCompleteBox',Null   ,Null        ,Null             ,Null             ,200   ,Null         ,Null              ,N'Yes'      ,N'Citizenship'                 ,N'No'  ,N'No'                     ,200     ,N'No'        ,Null           ,N'No'          ,1         ,N'No')
GO

INSERT INTO [DEV PORTAL SCREEN DETAIL] ([Screen Name],[Table Name]         ,[Field Name]                   ,[Sequence],[Default Value],[Display Option],[Readonly],[cssclass],[maxlength],[Row],[Column],[EditGrid Row],[EditGrid Column],[Label Row],[Label Column],[EditGrid Label Row],[EditGrid Label Column],[Column Span],[RepeatColumns],[RepeatDirection],[Hidden],[OnChange],[Name_if_Button],[Mandatory],[Prompt]          ,[Criteria],[Description]                         ,[HasChildControls],[Type]            ,[Other],[Query_Name],[Sub Screen Name],[Sub Screen Type],[Size],[CommandName],[CommandParameter],[ReturnData],[Help]                         ,[Modal],[MultiSelect]             ,[Height],[HideWhenNew],[HideWhenValue],[GraphicButton],[Row Span],[Encrypt])
VALUES (N'PER_HRA_Personal_CLI'                      ,N'[PER HRA Personal]',N'Marital Status'              ,420       ,Null           ,Null            ,N'No'     ,Null      ,10         ,14   ,2       ,0             ,0                ,14         ,1             ,0                   ,0                      ,0            ,5              ,N'1'             ,N'No'   ,Null      ,Null            ,N'Yes'     ,N'MARITAL STATUS' ,Null      ,N'Marital Status'                     ,N'No'             ,N'AutoCompleteBox',Null   ,Null        ,Null             ,Null             ,200   ,Null         ,Null              ,N'Yes'      ,N'Marital Status'              ,N'No'  ,N'No'                     ,200     ,N'No'        ,Null           ,N'No'          ,1         ,N'No')
GO

INSERT INTO [DEV PORTAL SCREEN DETAIL] ([Screen Name],[Table Name]         ,[Field Name]                   ,[Sequence],[Default Value],[Display Option],[Readonly],[cssclass],[maxlength],[Row],[Column],[EditGrid Row],[EditGrid Column],[Label Row],[Label Column],[EditGrid Label Row],[EditGrid Label Column],[Column Span],[RepeatColumns],[RepeatDirection],[Hidden],[OnChange],[Name_if_Button],[Mandatory],[Prompt]          ,[Criteria],[Description]                         ,[HasChildControls],[Type]            ,[Other],[Query_Name],[Sub Screen Name],[Sub Screen Type],[Size],[CommandName],[CommandParameter],[ReturnData],[Help]                         ,[Modal],[MultiSelect]             ,[Height],[HideWhenNew],[HideWhenValue],[GraphicButton],[Row Span],[Encrypt])
VALUES (N'PER_HRA_Personal_CLI'                      ,N'[PER HRA Personal]',N'Marital Date'                ,430       ,Null           ,Null            ,N'No'     ,Null      ,0          ,15   ,2       ,0             ,0                ,15         ,1             ,0                   ,0                      ,0            ,1              ,N'1'             ,N'No'   ,Null      ,Null            ,N'No'      ,Null              ,Null      ,N'Marital Date'                       ,N'No'             ,N'date'           ,Null   ,Null        ,Null             ,Null             ,80    ,Null         ,Null              ,N'Yes'      ,N'Marital Date'                ,N'No'  ,N'No'                     ,200     ,N'No'        ,Null           ,N'No'          ,1         ,N'No')
GO

INSERT INTO [DEV PORTAL SCREEN DETAIL] ([Screen Name],[Table Name]         ,[Field Name]                   ,[Sequence],[Default Value],[Display Option],[Readonly],[cssclass],[maxlength],[Row],[Column],[EditGrid Row],[EditGrid Column],[Label Row],[Label Column],[EditGrid Label Row],[EditGrid Label Column],[Column Span],[RepeatColumns],[RepeatDirection],[Hidden],[OnChange],[Name_if_Button],[Mandatory],[Prompt]          ,[Criteria],[Description]                         ,[HasChildControls],[Type]            ,[Other],[Query_Name],[Sub Screen Name],[Sub Screen Type],[Size],[CommandName],[CommandParameter],[ReturnData],[Help]                         ,[Modal],[MultiSelect]             ,[Height],[HideWhenNew],[HideWhenValue],[GraphicButton],[Row Span],[Encrypt])
VALUES (N'PER_HRA_Personal_CLI'                      ,N'[PER HRA Personal]',N'Ethnic Group'                ,440       ,Null           ,Null            ,N'No'     ,Null      ,50         ,22   ,4       ,0             ,0                ,22         ,3             ,0                   ,0                      ,0            ,1              ,N'1'             ,N'Yes'  ,Null      ,Null            ,N'No'      ,Null              ,Null      ,N'Ethnic Group'                       ,N'No'             ,N'textbox'        ,Null   ,Null        ,Null             ,Null             ,200   ,Null         ,Null              ,N'Yes'      ,N'Ethnic Group'                ,N'No'  ,N'No'                     ,200     ,N'No'        ,Null           ,N'No'          ,1         ,N'No')
GO

INSERT INTO [DEV PORTAL SCREEN DETAIL] ([Screen Name],[Table Name]         ,[Field Name]                   ,[Sequence],[Default Value],[Display Option],[Readonly],[cssclass],[maxlength],[Row],[Column],[EditGrid Row],[EditGrid Column],[Label Row],[Label Column],[EditGrid Label Row],[EditGrid Label Column],[Column Span],[RepeatColumns],[RepeatDirection],[Hidden],[OnChange],[Name_if_Button],[Mandatory],[Prompt]          ,[Criteria],[Description]                         ,[HasChildControls],[Type]            ,[Other],[Query_Name],[Sub Screen Name],[Sub Screen Type],[Size],[CommandName],[CommandParameter],[ReturnData],[Help]                         ,[Modal],[MultiSelect]             ,[Height],[HideWhenNew],[HideWhenValue],[GraphicButton],[Row Span],[Encrypt])
VALUES (N'PER_HRA_Personal_CLI'                      ,N'[PER HRA Personal]',N'Entity'                      ,450       ,Null           ,Null            ,N'No'     ,Null      ,100        ,23   ,4       ,0             ,0                ,23         ,3             ,0                   ,0                      ,0            ,1              ,N'1'             ,N'yes'  ,Null      ,Null            ,N'Yes'     ,Null              ,Null      ,N'Entity'                             ,N'No'             ,N'textbox'        ,Null   ,Null        ,Null             ,Null             ,200   ,Null         ,Null              ,N'Yes'      ,N'Entity'                      ,N'No'  ,N'No'                     ,200     ,N'No'        ,Null           ,N'No'          ,1         ,N'No')
GO

INSERT INTO [DEV PORTAL SCREEN DETAIL] ([Screen Name],[Table Name]         ,[Field Name]                   ,[Sequence],[Default Value],[Display Option],[Readonly],[cssclass],[maxlength],[Row],[Column],[EditGrid Row],[EditGrid Column],[Label Row],[Label Column],[EditGrid Label Row],[EditGrid Label Column],[Column Span],[RepeatColumns],[RepeatDirection],[Hidden],[OnChange],[Name_if_Button],[Mandatory],[Prompt]          ,[Criteria],[Description]                         ,[HasChildControls],[Type]            ,[Other],[Query_Name],[Sub Screen Name],[Sub Screen Type],[Size],[CommandName],[CommandParameter],[ReturnData],[Help]                         ,[Modal],[MultiSelect]             ,[Height],[HideWhenNew],[HideWhenValue],[GraphicButton],[Row Span],[Encrypt])
VALUES (N'PER_HRA_Personal_CLI'                      ,N'[PER HRA Personal]',N'Employment Status'           ,460       ,Null           ,Null            ,N'No'     ,Null      ,50         ,24   ,4       ,0             ,0                ,24         ,3             ,0                   ,0                      ,0            ,1              ,N'1'             ,N'yes'  ,Null      ,Null            ,N'No'      ,Null              ,Null      ,N'Employment Status'                  ,N'No'             ,N'textbox'        ,Null   ,Null        ,Null             ,Null             ,200   ,Null         ,Null              ,N'Yes'      ,N'Employment Status'           ,N'No'  ,N'No'                     ,200     ,N'No'        ,Null           ,N'No'          ,1         ,N'No')
GO

INSERT INTO [DEV PORTAL SCREEN DETAIL] ([Screen Name],[Table Name]         ,[Field Name]                   ,[Sequence],[Default Value],[Display Option],[Readonly],[cssclass],[maxlength],[Row],[Column],[EditGrid Row],[EditGrid Column],[Label Row],[Label Column],[EditGrid Label Row],[EditGrid Label Column],[Column Span],[RepeatColumns],[RepeatDirection],[Hidden],[OnChange],[Name_if_Button],[Mandatory],[Prompt]          ,[Criteria],[Description]                         ,[HasChildControls],[Type]            ,[Other],[Query_Name],[Sub Screen Name],[Sub Screen Type],[Size],[CommandName],[CommandParameter],[ReturnData],[Help]                         ,[Modal],[MultiSelect]             ,[Height],[HideWhenNew],[HideWhenValue],[GraphicButton],[Row Span],[Encrypt])
VALUES (N'PER_HRA_Personal_CLI'                      ,N'[PER HRA Personal]',N'Report Order'                ,470       ,Null           ,Null            ,N'No'     ,Null      ,100        ,25   ,4       ,0             ,0                ,25         ,3             ,0                   ,0                      ,0            ,1              ,N'1'             ,N'Yes'  ,Null      ,Null            ,N'No'      ,Null              ,Null      ,N'Report Order'                       ,N'No'             ,N'textbox'        ,Null   ,Null        ,Null             ,Null             ,200   ,Null         ,Null              ,N'Yes'      ,N'Report Order'                ,N'No'  ,N'No'                     ,200     ,N'No'        ,Null           ,N'No'          ,1         ,N'No')
GO

INSERT INTO [DEV PORTAL SCREEN DETAIL] ([Screen Name],[Table Name]         ,[Field Name]                   ,[Sequence],[Default Value],[Display Option],[Readonly],[cssclass],[maxlength],[Row],[Column],[EditGrid Row],[EditGrid Column],[Label Row],[Label Column],[EditGrid Label Row],[EditGrid Label Column],[Column Span],[RepeatColumns],[RepeatDirection],[Hidden],[OnChange],[Name_if_Button],[Mandatory],[Prompt]          ,[Criteria],[Description]                         ,[HasChildControls],[Type]            ,[Other],[Query_Name],[Sub Screen Name],[Sub Screen Type],[Size],[CommandName],[CommandParameter],[ReturnData],[Help]                         ,[Modal],[MultiSelect]             ,[Height],[HideWhenNew],[HideWhenValue],[GraphicButton],[Row Span],[Encrypt])
VALUES (N'PER_HRA_Personal_CLI'                      ,N'[PER HRA Personal]',N'Show Terminated'             ,480       ,Null           ,Null            ,N'No'     ,Null      ,0          ,17   ,4       ,0             ,0                ,17         ,3             ,0                   ,0                      ,0            ,1              ,N'1'             ,N'No'   ,Null      ,Null            ,N'No'      ,N'YesNo'          ,Null      ,N'Show Terminated'                    ,N'No'             ,N'AutoCompleteBox',Null   ,Null        ,Null             ,Null             ,200   ,Null         ,Null              ,N'Yes'      ,N'Report Order'                ,N'No'  ,N'No'                     ,200     ,N'No'        ,Null           ,N'No'          ,1         ,N'No')
GO

INSERT INTO [DEV PORTAL SCREEN DETAIL] ([Screen Name],[Table Name]         ,[Field Name]                   ,[Sequence],[Default Value],[Display Option],[Readonly],[cssclass],[maxlength],[Row],[Column],[EditGrid Row],[EditGrid Column],[Label Row],[Label Column],[EditGrid Label Row],[EditGrid Label Column],[Column Span],[RepeatColumns],[RepeatDirection],[Hidden],[OnChange],[Name_if_Button],[Mandatory],[Prompt]          ,[Criteria],[Description]                         ,[HasChildControls],[Type]            ,[Other],[Query_Name],[Sub Screen Name],[Sub Screen Type],[Size],[CommandName],[CommandParameter],[ReturnData],[Help]                         ,[Modal],[MultiSelect]             ,[Height],[HideWhenNew],[HideWhenValue],[GraphicButton],[Row Span],[Encrypt])
VALUES (N'PER_HRA_Personal_CLI'                      ,N'[PER HRA Personal]',N'Nearest Airport'             ,520       ,Null           ,Null            ,N'No'     ,Null      ,0          ,19   ,4       ,0             ,0                ,19         ,3             ,0                   ,0                      ,0            ,1              ,N'1'             ,N'Yes'  ,Null      ,Null            ,N'No'      ,N'FTK Airport'    ,Null      ,N'Nearest Home Airport'               ,N'No'             ,N'AutoCompleteBox',Null   ,Null        ,Null             ,Null             ,300   ,Null         ,Null              ,N'Yes'      ,N'Report Order'                ,N'No'  ,N'No'                     ,200     ,N'No'        ,Null           ,N'No'          ,1         ,N'No')
GO

INSERT INTO [DEV PORTAL SCREEN DETAIL] ([Screen Name],[Table Name]         ,[Field Name]                   ,[Sequence],[Default Value],[Display Option],[Readonly],[cssclass],[maxlength],[Row],[Column],[EditGrid Row],[EditGrid Column],[Label Row],[Label Column],[EditGrid Label Row],[EditGrid Label Column],[Column Span],[RepeatColumns],[RepeatDirection],[Hidden],[OnChange],[Name_if_Button],[Mandatory],[Prompt]          ,[Criteria],[Description]                         ,[HasChildControls],[Type]            ,[Other],[Query_Name],[Sub Screen Name],[Sub Screen Type],[Size],[CommandName],[CommandParameter],[ReturnData],[Help]                         ,[Modal],[MultiSelect]             ,[Height],[HideWhenNew],[HideWhenValue],[GraphicButton],[Row Span],[Encrypt])
VALUES (N'PER_HRA_Personal_CLI'                      ,N'[PER HRA Personal]',N'AUDIT'                       ,490       ,Null           ,Null            ,N'No'     ,Null      ,0          ,25   ,2       ,0             ,0                ,25         ,1             ,0                   ,0                      ,3            ,1              ,N'1'             ,N'Yes'  ,Null      ,Null            ,N'No'      ,Null              ,Null      ,N'Latest Changes'                     ,N'No'             ,N'label'          ,Null   ,Null        ,Null             ,Null             ,800   ,Null         ,Null              ,N'Yes'      ,N'Report Order'                ,N'No'  ,N'No'                     ,200     ,N'No'        ,Null           ,N'No'          ,1         ,N'No')
GO

INSERT INTO [DEV PORTAL SCREEN DETAIL] ([Screen Name],[Table Name]         ,[Field Name]                   ,[Sequence],[Default Value],[Display Option],[Readonly],[cssclass],[maxlength],[Row],[Column],[EditGrid Row],[EditGrid Column],[Label Row],[Label Column],[EditGrid Label Row],[EditGrid Label Column],[Column Span],[RepeatColumns],[RepeatDirection],[Hidden],[OnChange],[Name_if_Button],[Mandatory],[Prompt]          ,[Criteria],[Description]                         ,[HasChildControls],[Type]            ,[Other],[Query_Name],[Sub Screen Name],[Sub Screen Type],[Size],[CommandName],[CommandParameter],[ReturnData],[Help]                         ,[Modal],[MultiSelect]             ,[Height],[HideWhenNew],[HideWhenValue],[GraphicButton],[Row Span],[Encrypt])
VALUES (N'PER_HRA_Personal_CLI'                      ,N'[PER HRA Personal]',N'Ex Gratia'                   ,530       ,Null           ,Null            ,N'No'     ,Null      ,100        ,20   ,4       ,0             ,0                ,20         ,3             ,0                   ,0                      ,0            ,1              ,N'1'             ,N'Yes'  ,Null      ,Null            ,N'No'      ,Null              ,Null      ,N'Ex Gratia'                          ,N'No'             ,N'textbox'        ,Null   ,Null        ,Null             ,Null             ,80    ,Null         ,Null              ,N'Yes'      ,N'Report Order'                ,N'No'  ,N'No'                     ,200     ,N'No'        ,Null           ,N'No'          ,1         ,N'No')
GO

INSERT INTO [DEV PORTAL SCREEN DETAIL] ([Screen Name],[Table Name]         ,[Field Name]                   ,[Sequence],[Default Value],[Display Option],[Readonly],[cssclass],[maxlength],[Row],[Column],[EditGrid Row],[EditGrid Column],[Label Row],[Label Column],[EditGrid Label Row],[EditGrid Label Column],[Column Span],[RepeatColumns],[RepeatDirection],[Hidden],[OnChange],[Name_if_Button],[Mandatory],[Prompt]          ,[Criteria],[Description]                         ,[HasChildControls],[Type]            ,[Other],[Query_Name]                  ,[Sub Screen Name],[Sub Screen Type],[Size],[CommandName],[CommandParameter],[ReturnData],[Help]                         ,[Modal],[MultiSelect]             ,[Height],[HideWhenNew],[HideWhenValue],[GraphicButton],[Row Span],[Encrypt])
VALUES (N'PER_HRA_Personal_CLI'                      ,N'[PER HRA Personal]',N'4'                           ,600       ,Null           ,Null            ,N'No'     ,Null      ,0          ,27   ,1       ,0             ,0                ,1          ,1             ,0                   ,0                      ,100          ,1              ,N'1'             ,N'No'   ,Null      ,Null            ,N'No'      ,Null              ,Null      ,N'Employee Personal Details'          ,N'No'             ,N'radgrid'        ,Null   ,N'PER_HRA_PERSONAL_AUDIT_DATA',Null             ,Null             ,200   ,Null         ,Null              ,N'Yes'      ,Null                           ,N'No'  ,N'No'                     ,100     ,N'No'        ,Null           ,N'No'          ,1         ,N'No')
GO

INSERT INTO [DEV PORTAL SCREEN DETAIL] ([Screen Name],[Table Name]         ,[Field Name]                   ,[Sequence],[Default Value],[Display Option],[Readonly],[cssclass],[maxlength],[Row],[Column],[EditGrid Row],[EditGrid Column],[Label Row],[Label Column],[EditGrid Label Row],[EditGrid Label Column],[Column Span],[RepeatColumns],[RepeatDirection],[Hidden],[OnChange],[Name_if_Button],[Mandatory],[Prompt]          ,[Criteria],[Description]                         ,[HasChildControls],[Type]            ,[Other],[Query_Name]                   ,[Sub Screen Name],[Sub Screen Type],[Size],[CommandName],[CommandParameter],[ReturnData],[Help]                         ,[Modal],[MultiSelect]             ,[Height],[HideWhenNew],[HideWhenValue],[GraphicButton],[Row Span],[Encrypt])
VALUES (N'PER_HRA_Personal_CLI'                      ,N'[PER HRA Personal]',N'5'                           ,700       ,Null           ,Null            ,N'No'     ,Null      ,0          ,28   ,1       ,0             ,0                ,1          ,1             ,0                   ,0                      ,100          ,1              ,N'1'             ,N'No'   ,Null      ,Null            ,N'No'      ,Null              ,Null      ,N'Employee Personal Details'          ,N'No'             ,N'radgrid'        ,Null   ,N'PER_HRA_PERSONAL_AUDIT_DATA2',Null             ,Null             ,200   ,Null         ,Null              ,N'Yes'      ,Null                           ,N'No'  ,N'No'                     ,100     ,N'No'        ,Null           ,N'No'          ,1         ,N'No')
GO

INSERT INTO [DEV PORTAL SCREEN DETAIL] ([Screen Name],[Table Name]         ,[Field Name]                   ,[Sequence],[Default Value],[Display Option],[Readonly],[cssclass],[maxlength],[Row],[Column],[EditGrid Row],[EditGrid Column],[Label Row],[Label Column],[EditGrid Label Row],[EditGrid Label Column],[Column Span],[RepeatColumns],[RepeatDirection],[Hidden],[OnChange],[Name_if_Button],[Mandatory],[Prompt]          ,[Criteria],[Description]                         ,[HasChildControls],[Type]            ,[Other],[Query_Name]                   ,[Sub Screen Name],[Sub Screen Type],[Size],[CommandName],[CommandParameter],[ReturnData],[Help]                         ,[Modal],[MultiSelect]             ,[Height],[HideWhenNew],[HideWhenValue],[GraphicButton],[Row Span],[Encrypt])
VALUES (N'PER_HRA_Personal_CLI'                      ,N'[PER HRA Personal]',N'Extended Permissions'        ,800       ,Null           ,Null            ,N'No'     ,Null      ,10         ,21   ,4       ,0             ,0                ,21         ,3             ,0                   ,0                      ,0            ,5              ,N'1'             ,N'No'   ,Null      ,Null            ,N'No'      ,N'YesNo'          ,Null      ,N'Extended Permissions'               ,N'No'             ,N'AutoCompleteBox',Null   ,Null                           ,Null             ,Null             ,200   ,Null         ,Null              ,N'Yes'      ,N'Extended Permissions'        ,N'No'  ,N'No'                     ,200     ,N'No'        ,Null           ,N'No'          ,1         ,N'No')
GO

-----------------------------------
---SERVER TASK SPACE STARTS HERE---
-----------------------------------

SET NOCOUNT ON

DELETE FROM [DEV PORTAL SCREEN SERVER TASK]
WHERE [Screen Name]='PER_HRA_Personal_CLI_Search'
GO

INSERT INTO [DEV PORTAL SCREEN SERVER TASK] ([Screen Name],[Query Name],[Command]      ,[Action]     ,[Statement],[Action Sequence],[Active],[Run SubScreen Call])
VALUES (N'PER_HRA_Personal_CLI_Search'                    ,Null        ,N'REBINDSEARCH',N'DEV_REBIND',N'40'      ,1                ,1       ,N'Yes')
GO

INSERT INTO [DEV PORTAL SCREEN SERVER TASK] ([Screen Name],[Query Name],[Command]      ,[Action]       ,[Statement]                                                                                    ,[Action Sequence],[Active],[Run SubScreen Call])
VALUES (N'PER_HRA_Personal_CLI_Search'                    ,Null        ,N'NEWRECORD'   ,N'DEV_REDIRECT',N'../DEVForms/DEV PORTAL SCREEN.aspx?Screen=PER_HRA_Personal_CLI&ScreenAction=New&ScreenType=0',1                ,1       ,N'Yes')
GO


SET NOCOUNT ON

DELETE FROM [DEV PORTAL SCREEN SERVER TASK]
WHERE [Query Name]='PER_HRA_Personal_CLI_Search'
GO


SET NOCOUNT ON

DELETE FROM [DEV PORTAL SCREEN SERVER TASK]
WHERE [Screen Name]='PER_HRA_Personal_CLI'
GO


SET NOCOUNT ON

DELETE FROM [DEV PORTAL SCREEN SERVER TASK]
WHERE [Query Name]='PER_HRA_Personal_CLI'
GO


SET NOCOUNT ON

DELETE FROM [DEV PORTAL SCREEN SERVER TASK]
WHERE [Query Name]='PER_HRA_Personal_CLI_SearchResults'
GO

INSERT INTO [DEV PORTAL SCREEN SERVER TASK] ([Screen Name],[Query Name]                         ,[Command],[Action]       ,[Statement]                                                                   ,[Action Sequence],[Active],[Run SubScreen Call])
VALUES (Null                                              ,N'PER_HRA_Personal_CLI_SearchResults',N'SELECT',N'DEV_REDIRECT',N'../DEVForms/DEV PORTAL SCREEN.aspx?Screen=PER_HRA_Personal_CLI&ScreenType=0',1                ,1       ,N'Yes')
GO

----------------------------------------
---MAIL TASK SPACE STARTS HERE---
----------------------------------------

SET NOCOUNT ON

DELETE FROM [DEV PORTAL Mail Tasks]
WHERE [Screen Name]='PER_HRA_Personal_CLI'
GO


SET NOCOUNT ON

DELETE FROM [DEV PORTAL Mail Tasks]
WHERE [Screen Name]='PER_HRA_Personal_CLI_Search'
GO

--------------------------------------
---SCREEN BUTTONS SPACE STARTS HERE---
--------------------------------------

SET NOCOUNT ON

DELETE FROM [DEV PORTAL SCREEN BUTTONS]
WHERE [Screen Name]='PER_HRA_Personal_CLI_Search'
GO


SET NOCOUNT ON

DELETE FROM [DEV PORTAL SCREEN BUTTONS]
WHERE [Screen Name]='PER_HRA_Personal_CLI'
GO

INSERT INTO [DEV PORTAL SCREEN BUTTONS] ([Screen Name],[Image]                               ,[Link]                                                                                      ,[Help]         ,[Target],[Sequence],[Active],[Description]   ,[Add to Menu],[Command Name],[Command Arg])
VALUES (N'PER_HRA_Personal_CLI'                       ,N'../images_default/VacancySearch.gif',N'DEV PORTAL SCREEN.aspx?Screen=PER_HRA_Personal_CLI_Search&ScreenType=0&User=Administrator',N'Search Again',N'_self',1         ,1       ,N'Back 2 Search',N'Top Menu'  ,Null          ,Null)
GO

--------------------------------------
---COMMAND BUTTON SPACE STARTS HERE---
--------------------------------------

SET NOCOUNT ON

DELETE FROM [DEV PORTAL Command Button List]
WHERE [Screen Name]='PER_HRA_Personal_CLI'
GO


SET NOCOUNT ON

DELETE FROM [DEV PORTAL Command Button List]
WHERE [Screen Name]='PER_HRA_Personal_CLI_Search'
GO

--------------------------------------
---CLIENT SCRIPT SPACE STARTS HERE---
--------------------------------------

SET NOCOUNT ON

DELETE FROM [DEV Portal Screen Client Scripts]
WHERE [Screen Name]='PER_HRA_Personal_CLI'
GO


SET NOCOUNT ON

DELETE FROM [DEV Portal Screen Client Scripts]
WHERE [Screen Name]='PER_HRA_Personal_CLI_Search'
GO

----------------------------------------
---SECURITY OBJECTS SPACE STARTS HERE---
----------------------------------------

SET NOCOUNT ON

DELETE FROM [DEV PORTAL SECURITY OBJECTS]
WHERE [Screen Name]='PER_HRA_Personal_CLI'
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name]          ,[Screen List],[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'GULF HR COMPANY HR'                     ,N'PER_HRA_Personal_CLI',Null         ,Null           ,1     ,1    ,1       ,1       ,1     ,1       ,1     ,Null)
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name]          ,[Screen List],[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'DFSA MANAGER FINANCE'                   ,N'PER_HRA_Personal_CLI',Null         ,Null           ,0     ,0    ,0       ,1       ,1     ,1       ,1     ,Null)
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name]          ,[Screen List],[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'DFSA HR ADMINISTRATOR'                  ,N'PER_HRA_Personal_CLI',Null         ,Null           ,1     ,1    ,1       ,1       ,1     ,1       ,1     ,Null)
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name]          ,[Screen List],[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'DFSA HR POLICY'                         ,N'PER_HRA_Personal_CLI',Null         ,Null           ,1     ,1    ,1       ,1       ,1     ,1       ,1     ,Null)
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name]          ,[Screen List],[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'DFSA RECRUITMENT'                       ,N'PER_HRA_Personal_CLI',Null         ,Null           ,1     ,1    ,1       ,1       ,1     ,1       ,1     ,Null)
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name]          ,[Screen List],[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'DFSA HEAD OF HR'                        ,N'PER_HRA_Personal_CLI',Null         ,Null           ,1     ,1    ,1       ,1       ,1     ,1       ,1     ,Null)
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name]          ,[Screen List],[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'GULF HR FINANCE'                        ,N'PER_HRA_Personal_CLI',Null         ,Null           ,0     ,0    ,0       ,1       ,1     ,1       ,1     ,Null)
GO


SET NOCOUNT ON

DELETE FROM [DEV PORTAL SECURITY OBJECTS]
WHERE [Screen Name]='PER_HRA_Personal_CLI_Search'
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name]                 ,[Screen List],[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'GULF HR COMPANY HR'                     ,N'PER_HRA_Personal_CLI_Search',Null         ,Null           ,1     ,0    ,1       ,1       ,1     ,1       ,1     ,Null)
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name]                 ,[Screen List],[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'DFSA MANAGER FINANCE'                   ,N'PER_HRA_Personal_CLI_Search',Null         ,Null           ,1     ,0    ,1       ,1       ,1     ,1       ,1     ,Null)
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name]                 ,[Screen List],[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'DFSA HR ADMINISTRATOR'                  ,N'PER_HRA_Personal_CLI_Search',Null         ,Null           ,1     ,1    ,1       ,1       ,1     ,1       ,1     ,Null)
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name]                 ,[Screen List],[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'DFSA HR POLICY'                         ,N'PER_HRA_Personal_CLI_Search',Null         ,Null           ,1     ,1    ,1       ,1       ,1     ,1       ,1     ,Null)
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name]                 ,[Screen List],[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'DFSA RECRUITMENT'                       ,N'PER_HRA_Personal_CLI_Search',Null         ,Null           ,1     ,1    ,1       ,1       ,1     ,1       ,1     ,Null)
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name]                 ,[Screen List],[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'DFSA HEAD OF HR'                        ,N'PER_HRA_Personal_CLI_Search',Null         ,Null           ,1     ,1    ,1       ,1       ,1     ,1       ,1     ,Null)
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name]                 ,[Screen List],[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'GULF HR FINANCE'                        ,N'PER_HRA_Personal_CLI_Search',Null         ,Null           ,1     ,0    ,1       ,1       ,1     ,1       ,1     ,Null)
GO


SET NOCOUNT ON

DELETE FROM [DEV PORTAL SECURITY OBJECTS]
WHERE [Screen Name]='PER_HRA_Personal_CLI_SearchResults'
GO


SET NOCOUNT ON

DELETE FROM [DEV PORTAL SECURITY OBJECTS]
WHERE [Screen List]='PER_HRA_Personal_CLI'
GO


SET NOCOUNT ON

DELETE FROM [DEV PORTAL SECURITY OBJECTS]
WHERE [Screen List]='PER_HRA_Personal_CLI_Search'
GO


SET NOCOUNT ON

DELETE FROM [DEV PORTAL SECURITY OBJECTS]
WHERE [Screen List]='PER_HRA_Personal_CLI_SearchResults'
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name],[Screen List]                        ,[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'GULF HR COMPANY HR'                     ,Null         ,N'PER_HRA_Personal_CLI_SearchResults',Null           ,1     ,0    ,1       ,1       ,1     ,1       ,1     ,Null)
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name],[Screen List]                        ,[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'DFSA HEAD OF HR'                        ,Null         ,N'PER_HRA_Personal_CLI_SearchResults',Null           ,1     ,0    ,1       ,1       ,1     ,1       ,1     ,Null)
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name],[Screen List]                        ,[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'DFSA HEAD OF HR'                        ,Null         ,N'PER_HRA_Personal_CLI_SearchResults',Null           ,1     ,1    ,1       ,1       ,1     ,1       ,1     ,Null)
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name],[Screen List]                        ,[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'DFSA HEAD OF HR'                        ,Null         ,N'PER_HRA_Personal_CLI_SearchResults',Null           ,1     ,1    ,1       ,1       ,1     ,1       ,1     ,Null)
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name],[Screen List]                        ,[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'DFSA HEAD OF HR'                        ,Null         ,N'PER_HRA_Personal_CLI_SearchResults',Null           ,1     ,1    ,1       ,1       ,1     ,1       ,1     ,Null)
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name],[Screen List]                        ,[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'DFSA HEAD OF HR'                        ,Null         ,N'PER_HRA_Personal_CLI_SearchResults',Null           ,1     ,1    ,1       ,1       ,1     ,1       ,1     ,Null)
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name],[Screen List]                        ,[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'DFSA HEAD OF HR'                        ,Null         ,N'PER_HRA_Personal_CLI_SearchResults',Null           ,1     ,1    ,1       ,1       ,1     ,1       ,1     ,Null)
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name],[Screen List]                        ,[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'DFSA HEAD OF HR'                        ,Null         ,N'PER_HRA_Personal_CLI_SearchResults',Null           ,1     ,1    ,1       ,1       ,1     ,1       ,1     ,Null)
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name],[Screen List]                        ,[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'DFSA HEAD OF HR'                        ,Null         ,N'PER_HRA_Personal_CLI_SearchResults',Null           ,1     ,1    ,1       ,1       ,1     ,1       ,1     ,Null)
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name],[Screen List]                        ,[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'DFSA HEAD OF HR'                        ,Null         ,N'PER_HRA_Personal_CLI_SearchResults',Null           ,1     ,1    ,1       ,1       ,1     ,1       ,1     ,Null)
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name],[Screen List]                        ,[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'DFSA HEAD OF HR'                        ,Null         ,N'PER_HRA_Personal_CLI_SearchResults',Null           ,1     ,1    ,1       ,1       ,1     ,1       ,1     ,Null)
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name],[Screen List]                        ,[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'DFSA HEAD OF HR'                        ,Null         ,N'PER_HRA_Personal_CLI_SearchResults',Null           ,1     ,1    ,1       ,1       ,1     ,1       ,1     ,Null)
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name],[Screen List]                        ,[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'DFSA HEAD OF HR'                        ,Null         ,N'PER_HRA_Personal_CLI_SearchResults',Null           ,1     ,1    ,1       ,1       ,1     ,1       ,1     ,Null)
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name],[Screen List]                        ,[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'DFSA HEAD OF HR'                        ,Null         ,N'PER_HRA_Personal_CLI_SearchResults',Null           ,1     ,1    ,1       ,1       ,1     ,1       ,1     ,Null)
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name],[Screen List]                        ,[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'DFSA HEAD OF HR'                        ,Null         ,N'PER_HRA_Personal_CLI_SearchResults',Null           ,1     ,1    ,1       ,1       ,1     ,1       ,1     ,Null)
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name],[Screen List]                        ,[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'GULF HR FINANCE'                        ,Null         ,N'PER_HRA_Personal_CLI_SearchResults',Null           ,1     ,1    ,1       ,1       ,1     ,1       ,1     ,Null)
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name],[Screen List]                        ,[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'GULF HR FINANCE'                        ,Null         ,N'PER_HRA_Personal_CLI_SearchResults',Null           ,1     ,1    ,1       ,1       ,1     ,1       ,1     ,Null)
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name],[Screen List]                        ,[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'GULF HR FINANCE'                        ,Null         ,N'PER_HRA_Personal_CLI_SearchResults',Null           ,1     ,1    ,1       ,1       ,1     ,1       ,1     ,Null)
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name],[Screen List]                        ,[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'GULF HR FINANCE'                        ,Null         ,N'PER_HRA_Personal_CLI_SearchResults',Null           ,1     ,1    ,1       ,1       ,1     ,1       ,1     ,Null)
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name],[Screen List]                        ,[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'GULF HR FINANCE'                        ,Null         ,N'PER_HRA_Personal_CLI_SearchResults',Null           ,1     ,1    ,1       ,1       ,1     ,1       ,1     ,Null)
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name],[Screen List]                        ,[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'GULF HR FINANCE'                        ,Null         ,N'PER_HRA_Personal_CLI_SearchResults',Null           ,1     ,1    ,1       ,1       ,1     ,1       ,1     ,Null)
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name],[Screen List]                        ,[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'GULF HR FINANCE'                        ,Null         ,N'PER_HRA_Personal_CLI_SearchResults',Null           ,1     ,1    ,1       ,1       ,1     ,1       ,1     ,Null)
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name],[Screen List]                        ,[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'GULF HR FINANCE'                        ,Null         ,N'PER_HRA_Personal_CLI_SearchResults',Null           ,1     ,1    ,1       ,1       ,1     ,1       ,1     ,Null)
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name],[Screen List]                        ,[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'GULF HR FINANCE'                        ,Null         ,N'PER_HRA_Personal_CLI_SearchResults',Null           ,1     ,1    ,1       ,1       ,1     ,1       ,1     ,Null)
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name],[Screen List]                        ,[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'DFSA HEAD OF HR'                        ,Null         ,N'PER_HRA_Personal_CLI_SearchResults',Null           ,1     ,1    ,1       ,1       ,1     ,1       ,1     ,Null)
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name],[Screen List]                        ,[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'DFSA HEAD OF HR'                        ,Null         ,N'PER_HRA_Personal_CLI_SearchResults',Null           ,1     ,1    ,1       ,1       ,1     ,1       ,1     ,Null)
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name],[Screen List]                        ,[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'GULF HR FINANCE'                        ,Null         ,N'PER_HRA_Personal_CLI_SearchResults',Null           ,1     ,1    ,1       ,1       ,1     ,1       ,1     ,Null)
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name],[Screen List]                        ,[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'DFSA HEAD OF HR'                        ,Null         ,N'PER_HRA_Personal_CLI_SearchResults',Null           ,1     ,1    ,1       ,1       ,1     ,1       ,1     ,Null)
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name],[Screen List]                        ,[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'DFSA HEAD OF HR'                        ,Null         ,N'PER_HRA_Personal_CLI_SearchResults',Null           ,1     ,1    ,1       ,1       ,1     ,1       ,1     ,Null)
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name],[Screen List]                        ,[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'DFSA HEAD OF HR'                        ,Null         ,N'PER_HRA_Personal_CLI_SearchResults',Null           ,1     ,1    ,1       ,1       ,1     ,1       ,1     ,Null)
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name],[Screen List]                        ,[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'DFSA HEAD OF HR'                        ,Null         ,N'PER_HRA_Personal_CLI_SearchResults',Null           ,1     ,1    ,1       ,1       ,1     ,1       ,1     ,Null)
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name],[Screen List]                        ,[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'DFSA HEAD OF HR'                        ,Null         ,N'PER_HRA_Personal_CLI_SearchResults',Null           ,1     ,1    ,1       ,1       ,1     ,1       ,1     ,Null)
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name],[Screen List]                        ,[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'DFSA HEAD OF HR'                        ,Null         ,N'PER_HRA_Personal_CLI_SearchResults',Null           ,1     ,1    ,1       ,1       ,1     ,1       ,1     ,Null)
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name],[Screen List]                        ,[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'GULF HR FINANCE'                        ,Null         ,N'PER_HRA_Personal_CLI_SearchResults',Null           ,1     ,1    ,1       ,1       ,1     ,1       ,1     ,Null)
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name],[Screen List]                        ,[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'GULF HR FINANCE'                        ,Null         ,N'PER_HRA_Personal_CLI_SearchResults',Null           ,1     ,1    ,1       ,1       ,1     ,1       ,1     ,Null)
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name],[Screen List]                        ,[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'GULF HR FINANCE'                        ,Null         ,N'PER_HRA_Personal_CLI_SearchResults',Null           ,1     ,1    ,1       ,1       ,1     ,1       ,1     ,Null)
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name],[Screen List]                        ,[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'GULF HR FINANCE'                        ,Null         ,N'PER_HRA_Personal_CLI_SearchResults',Null           ,1     ,1    ,1       ,1       ,1     ,1       ,1     ,Null)
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name],[Screen List]                        ,[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'GULF HR FINANCE'                        ,Null         ,N'PER_HRA_Personal_CLI_SearchResults',Null           ,1     ,1    ,1       ,1       ,1     ,1       ,1     ,Null)
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name],[Screen List]                        ,[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'GULF HR FINANCE'                        ,Null         ,N'PER_HRA_Personal_CLI_SearchResults',Null           ,1     ,1    ,1       ,1       ,1     ,1       ,1     ,Null)
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name],[Screen List]                        ,[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'GULF HR FINANCE'                        ,Null         ,N'PER_HRA_Personal_CLI_SearchResults',Null           ,1     ,1    ,1       ,1       ,1     ,1       ,1     ,Null)
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name],[Screen List]                        ,[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'GULF HR FINANCE'                        ,Null         ,N'PER_HRA_Personal_CLI_SearchResults',Null           ,1     ,1    ,1       ,1       ,1     ,1       ,1     ,Null)
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name],[Screen List]                        ,[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'GULF HR FINANCE'                        ,Null         ,N'PER_HRA_Personal_CLI_SearchResults',Null           ,1     ,1    ,1       ,1       ,1     ,1       ,1     ,Null)
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name],[Screen List]                        ,[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'GULF HR FINANCE'                        ,Null         ,N'PER_HRA_Personal_CLI_SearchResults',Null           ,1     ,1    ,1       ,1       ,1     ,1       ,1     ,Null)
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name],[Screen List]                        ,[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'GULF HR FINANCE'                        ,Null         ,N'PER_HRA_Personal_CLI_SearchResults',Null           ,1     ,1    ,1       ,1       ,1     ,1       ,1     ,Null)
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name],[Screen List]                        ,[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'GULF HR FINANCE'                        ,Null         ,N'PER_HRA_Personal_CLI_SearchResults',Null           ,1     ,1    ,1       ,1       ,1     ,1       ,1     ,Null)
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name],[Screen List]                        ,[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'GULF HR FINANCE'                        ,Null         ,N'PER_HRA_Personal_CLI_SearchResults',Null           ,1     ,1    ,1       ,1       ,1     ,1       ,1     ,Null)
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name],[Screen List]                        ,[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'GULF HR FINANCE'                        ,Null         ,N'PER_HRA_Personal_CLI_SearchResults',Null           ,1     ,1    ,1       ,1       ,1     ,1       ,1     ,Null)
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name],[Screen List]                        ,[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'GULF HR FINANCE'                        ,Null         ,N'PER_HRA_Personal_CLI_SearchResults',Null           ,1     ,1    ,1       ,1       ,1     ,1       ,1     ,Null)
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name],[Screen List]                        ,[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'GULF HR FINANCE'                        ,Null         ,N'PER_HRA_Personal_CLI_SearchResults',Null           ,1     ,1    ,1       ,1       ,1     ,1       ,1     ,Null)
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name],[Screen List]                        ,[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'GULF HR FINANCE'                        ,Null         ,N'PER_HRA_Personal_CLI_SearchResults',Null           ,1     ,1    ,1       ,1       ,1     ,1       ,1     ,Null)
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name],[Screen List]                        ,[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'GULF HR FINANCE'                        ,Null         ,N'PER_HRA_Personal_CLI_SearchResults',Null           ,1     ,1    ,1       ,1       ,1     ,1       ,1     ,Null)
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name],[Screen List]                        ,[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'GULF HR FINANCE'                        ,Null         ,N'PER_HRA_Personal_CLI_SearchResults',Null           ,1     ,1    ,1       ,1       ,1     ,1       ,1     ,Null)
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name],[Screen List]                        ,[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'GULF HR FINANCE'                        ,Null         ,N'PER_HRA_Personal_CLI_SearchResults',Null           ,1     ,1    ,1       ,1       ,1     ,1       ,1     ,Null)
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name],[Screen List]                        ,[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'GULF HR FINANCE'                        ,Null         ,N'PER_HRA_Personal_CLI_SearchResults',Null           ,1     ,1    ,1       ,1       ,1     ,1       ,1     ,Null)
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name],[Screen List]                        ,[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'DFSA MANAGER FINANCE'                   ,Null         ,N'PER_HRA_Personal_CLI_SearchResults',Null           ,1     ,1    ,1       ,1       ,1     ,1       ,1     ,Null)
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name],[Screen List]                        ,[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'DFSA MANAGER FINANCE'                   ,Null         ,N'PER_HRA_Personal_CLI_SearchResults',Null           ,1     ,1    ,1       ,1       ,1     ,1       ,1     ,Null)
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name],[Screen List]                        ,[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'DFSA MANAGER FINANCE'                   ,Null         ,N'PER_HRA_Personal_CLI_SearchResults',Null           ,1     ,1    ,1       ,1       ,1     ,1       ,1     ,Null)
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name],[Screen List]                        ,[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'DFSA MANAGER FINANCE'                   ,Null         ,N'PER_HRA_Personal_CLI_SearchResults',Null           ,1     ,1    ,1       ,1       ,1     ,1       ,1     ,Null)
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name],[Screen List]                        ,[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'DFSA MANAGER FINANCE'                   ,Null         ,N'PER_HRA_Personal_CLI_SearchResults',Null           ,1     ,1    ,1       ,1       ,1     ,1       ,1     ,Null)
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name],[Screen List]                        ,[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'DFSA MANAGER FINANCE'                   ,Null         ,N'PER_HRA_Personal_CLI_SearchResults',Null           ,1     ,1    ,1       ,1       ,1     ,1       ,1     ,Null)
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name],[Screen List]                        ,[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'DFSA MANAGER FINANCE'                   ,Null         ,N'PER_HRA_Personal_CLI_SearchResults',Null           ,1     ,1    ,1       ,1       ,1     ,1       ,1     ,Null)
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name],[Screen List]                        ,[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'DFSA MANAGER FINANCE'                   ,Null         ,N'PER_HRA_Personal_CLI_SearchResults',Null           ,1     ,1    ,1       ,1       ,1     ,1       ,1     ,Null)
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name],[Screen List]                        ,[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'DFSA MANAGER FINANCE'                   ,Null         ,N'PER_HRA_Personal_CLI_SearchResults',Null           ,1     ,1    ,1       ,1       ,1     ,1       ,1     ,Null)
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name],[Screen List]                        ,[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'DFSA MANAGER FINANCE'                   ,Null         ,N'PER_HRA_Personal_CLI_SearchResults',Null           ,1     ,1    ,1       ,1       ,1     ,1       ,1     ,Null)
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name],[Screen List]                        ,[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'DFSA MANAGER FINANCE'                   ,Null         ,N'PER_HRA_Personal_CLI_SearchResults',Null           ,1     ,1    ,1       ,1       ,1     ,1       ,1     ,Null)
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name],[Screen List]                        ,[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'DFSA MANAGER FINANCE'                   ,Null         ,N'PER_HRA_Personal_CLI_SearchResults',Null           ,1     ,1    ,1       ,1       ,1     ,1       ,1     ,Null)
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name],[Screen List]                        ,[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'DFSA MANAGER FINANCE'                   ,Null         ,N'PER_HRA_Personal_CLI_SearchResults',Null           ,1     ,1    ,1       ,1       ,1     ,1       ,1     ,Null)
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name],[Screen List]                        ,[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'DFSA MANAGER FINANCE'                   ,Null         ,N'PER_HRA_Personal_CLI_SearchResults',Null           ,1     ,1    ,1       ,1       ,1     ,1       ,1     ,Null)
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name],[Screen List]                        ,[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'DFSA MANAGER FINANCE'                   ,Null         ,N'PER_HRA_Personal_CLI_SearchResults',Null           ,1     ,1    ,1       ,1       ,1     ,1       ,1     ,Null)
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name],[Screen List]                        ,[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'DFSA MANAGER FINANCE'                   ,Null         ,N'PER_HRA_Personal_CLI_SearchResults',Null           ,1     ,1    ,1       ,1       ,1     ,1       ,1     ,Null)
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name],[Screen List]                        ,[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'DFSA MANAGER FINANCE'                   ,Null         ,N'PER_HRA_Personal_CLI_SearchResults',Null           ,1     ,1    ,1       ,1       ,1     ,1       ,1     ,Null)
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name],[Screen List]                        ,[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'DFSA MANAGER FINANCE'                   ,Null         ,N'PER_HRA_Personal_CLI_SearchResults',Null           ,1     ,1    ,1       ,1       ,1     ,1       ,1     ,Null)
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name],[Screen List]                        ,[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'DFSA MANAGER FINANCE'                   ,Null         ,N'PER_HRA_Personal_CLI_SearchResults',Null           ,1     ,1    ,1       ,1       ,1     ,1       ,1     ,Null)
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name],[Screen List]                        ,[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'DFSA MANAGER FINANCE'                   ,Null         ,N'PER_HRA_Personal_CLI_SearchResults',Null           ,1     ,1    ,1       ,1       ,1     ,1       ,1     ,Null)
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name],[Screen List]                        ,[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'DFSA MANAGER FINANCE'                   ,Null         ,N'PER_HRA_Personal_CLI_SearchResults',Null           ,1     ,1    ,1       ,1       ,1     ,1       ,1     ,Null)
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name],[Screen List]                        ,[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'DFSA MANAGER FINANCE'                   ,Null         ,N'PER_HRA_Personal_CLI_SearchResults',Null           ,1     ,1    ,1       ,1       ,1     ,1       ,1     ,Null)
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name],[Screen List]                        ,[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'DFSA MANAGER FINANCE'                   ,Null         ,N'PER_HRA_Personal_CLI_SearchResults',Null           ,1     ,1    ,1       ,1       ,1     ,1       ,1     ,Null)
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name],[Screen List]                        ,[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'DFSA MANAGER FINANCE'                   ,Null         ,N'PER_HRA_Personal_CLI_SearchResults',Null           ,1     ,1    ,1       ,1       ,1     ,1       ,1     ,Null)
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name],[Screen List]                        ,[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'DFSA MANAGER FINANCE'                   ,Null         ,N'PER_HRA_Personal_CLI_SearchResults',Null           ,1     ,1    ,1       ,1       ,1     ,1       ,1     ,Null)
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name],[Screen List]                        ,[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'DFSA MANAGER FINANCE'                   ,Null         ,N'PER_HRA_Personal_CLI_SearchResults',Null           ,1     ,1    ,1       ,1       ,1     ,1       ,1     ,Null)
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name],[Screen List]                        ,[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'DFSA MANAGER FINANCE'                   ,Null         ,N'PER_HRA_Personal_CLI_SearchResults',Null           ,1     ,1    ,1       ,1       ,1     ,1       ,1     ,Null)
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name],[Screen List]                        ,[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'DFSA MANAGER FINANCE'                   ,Null         ,N'PER_HRA_Personal_CLI_SearchResults',Null           ,1     ,1    ,1       ,1       ,1     ,1       ,1     ,Null)
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name],[Screen List]                        ,[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'DFSA MANAGER FINANCE'                   ,Null         ,N'PER_HRA_Personal_CLI_SearchResults',Null           ,1     ,1    ,1       ,1       ,1     ,1       ,1     ,Null)
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name],[Screen List]                        ,[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'DFSA MANAGER FINANCE'                   ,Null         ,N'PER_HRA_Personal_CLI_SearchResults',Null           ,1     ,1    ,1       ,1       ,1     ,1       ,1     ,Null)
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name],[Screen List]                        ,[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'DFSA MANAGER FINANCE'                   ,Null         ,N'PER_HRA_Personal_CLI_SearchResults',Null           ,1     ,1    ,1       ,1       ,1     ,1       ,1     ,Null)
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name],[Screen List]                        ,[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'DFSA HR ADMINISTRATOR'                  ,Null         ,N'PER_HRA_Personal_CLI_SearchResults',Null           ,1     ,0    ,1       ,1       ,1     ,1       ,1     ,Null)
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name],[Screen List]                        ,[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'DFSA HR ADMINISTRATOR'                  ,Null         ,N'PER_HRA_Personal_CLI_SearchResults',Null           ,1     ,1    ,1       ,1       ,1     ,1       ,1     ,Null)
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name],[Screen List]                        ,[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'DFSA HR ADMINISTRATOR'                  ,Null         ,N'PER_HRA_Personal_CLI_SearchResults',Null           ,1     ,1    ,1       ,1       ,1     ,1       ,1     ,Null)
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name],[Screen List]                        ,[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'DFSA HR ADMINISTRATOR'                  ,Null         ,N'PER_HRA_Personal_CLI_SearchResults',Null           ,1     ,1    ,1       ,1       ,1     ,1       ,1     ,Null)
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name],[Screen List]                        ,[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'DFSA HR ADMINISTRATOR'                  ,Null         ,N'PER_HRA_Personal_CLI_SearchResults',Null           ,1     ,1    ,1       ,1       ,1     ,1       ,1     ,Null)
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name],[Screen List]                        ,[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'DFSA HR ADMINISTRATOR'                  ,Null         ,N'PER_HRA_Personal_CLI_SearchResults',Null           ,1     ,1    ,1       ,1       ,1     ,1       ,1     ,Null)
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name],[Screen List]                        ,[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'DFSA HR ADMINISTRATOR'                  ,Null         ,N'PER_HRA_Personal_CLI_SearchResults',Null           ,1     ,1    ,1       ,1       ,1     ,1       ,1     ,Null)
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name],[Screen List]                        ,[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'DFSA HR ADMINISTRATOR'                  ,Null         ,N'PER_HRA_Personal_CLI_SearchResults',Null           ,1     ,1    ,1       ,1       ,1     ,1       ,1     ,Null)
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name],[Screen List]                        ,[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'DFSA HR ADMINISTRATOR'                  ,Null         ,N'PER_HRA_Personal_CLI_SearchResults',Null           ,1     ,1    ,1       ,1       ,1     ,1       ,1     ,Null)
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name],[Screen List]                        ,[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'DFSA HR ADMINISTRATOR'                  ,Null         ,N'PER_HRA_Personal_CLI_SearchResults',Null           ,1     ,1    ,1       ,1       ,1     ,1       ,1     ,Null)
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name],[Screen List]                        ,[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'DFSA HR ADMINISTRATOR'                  ,Null         ,N'PER_HRA_Personal_CLI_SearchResults',Null           ,1     ,1    ,1       ,1       ,1     ,1       ,1     ,Null)
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name],[Screen List]                        ,[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'DFSA HR ADMINISTRATOR'                  ,Null         ,N'PER_HRA_Personal_CLI_SearchResults',Null           ,1     ,1    ,1       ,1       ,1     ,1       ,1     ,Null)
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name],[Screen List]                        ,[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'DFSA HR ADMINISTRATOR'                  ,Null         ,N'PER_HRA_Personal_CLI_SearchResults',Null           ,1     ,1    ,1       ,1       ,1     ,1       ,1     ,Null)
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name],[Screen List]                        ,[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'DFSA HR ADMINISTRATOR'                  ,Null         ,N'PER_HRA_Personal_CLI_SearchResults',Null           ,1     ,1    ,1       ,1       ,1     ,1       ,1     ,Null)
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name],[Screen List]                        ,[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'DFSA HR ADMINISTRATOR'                  ,Null         ,N'PER_HRA_Personal_CLI_SearchResults',Null           ,1     ,1    ,1       ,1       ,1     ,1       ,1     ,Null)
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name],[Screen List]                        ,[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'DFSA HR ADMINISTRATOR'                  ,Null         ,N'PER_HRA_Personal_CLI_SearchResults',Null           ,1     ,1    ,1       ,1       ,1     ,1       ,1     ,Null)
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name],[Screen List]                        ,[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'DFSA HR ADMINISTRATOR'                  ,Null         ,N'PER_HRA_Personal_CLI_SearchResults',Null           ,1     ,1    ,1       ,1       ,1     ,1       ,1     ,Null)
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name],[Screen List]                        ,[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'DFSA HR ADMINISTRATOR'                  ,Null         ,N'PER_HRA_Personal_CLI_SearchResults',Null           ,1     ,1    ,1       ,1       ,1     ,1       ,1     ,Null)
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name],[Screen List]                        ,[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'DFSA HR ADMINISTRATOR'                  ,Null         ,N'PER_HRA_Personal_CLI_SearchResults',Null           ,1     ,1    ,1       ,1       ,1     ,1       ,1     ,Null)
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name],[Screen List]                        ,[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'DFSA HR ADMINISTRATOR'                  ,Null         ,N'PER_HRA_Personal_CLI_SearchResults',Null           ,1     ,1    ,1       ,1       ,1     ,1       ,1     ,Null)
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name],[Screen List]                        ,[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'DFSA HR ADMINISTRATOR'                  ,Null         ,N'PER_HRA_Personal_CLI_SearchResults',Null           ,1     ,1    ,1       ,1       ,1     ,1       ,1     ,Null)
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name],[Screen List]                        ,[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'DFSA HR ADMINISTRATOR'                  ,Null         ,N'PER_HRA_Personal_CLI_SearchResults',Null           ,1     ,1    ,1       ,1       ,1     ,1       ,1     ,Null)
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name],[Screen List]                        ,[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'DFSA HR POLICY'                         ,Null         ,N'PER_HRA_Personal_CLI_SearchResults',Null           ,1     ,0    ,1       ,1       ,1     ,1       ,1     ,Null)
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name],[Screen List]                        ,[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'DFSA HR POLICY'                         ,Null         ,N'PER_HRA_Personal_CLI_SearchResults',Null           ,1     ,1    ,1       ,1       ,1     ,1       ,1     ,Null)
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name],[Screen List]                        ,[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'DFSA HR POLICY'                         ,Null         ,N'PER_HRA_Personal_CLI_SearchResults',Null           ,1     ,1    ,1       ,1       ,1     ,1       ,1     ,Null)
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name],[Screen List]                        ,[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'DFSA HR POLICY'                         ,Null         ,N'PER_HRA_Personal_CLI_SearchResults',Null           ,1     ,1    ,1       ,1       ,1     ,1       ,1     ,Null)
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name],[Screen List]                        ,[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'DFSA HR POLICY'                         ,Null         ,N'PER_HRA_Personal_CLI_SearchResults',Null           ,1     ,1    ,1       ,1       ,1     ,1       ,1     ,Null)
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name],[Screen List]                        ,[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'DFSA HR POLICY'                         ,Null         ,N'PER_HRA_Personal_CLI_SearchResults',Null           ,1     ,1    ,1       ,1       ,1     ,1       ,1     ,Null)
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name],[Screen List]                        ,[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'DFSA HR POLICY'                         ,Null         ,N'PER_HRA_Personal_CLI_SearchResults',Null           ,1     ,1    ,1       ,1       ,1     ,1       ,1     ,Null)
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name],[Screen List]                        ,[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'DFSA HR POLICY'                         ,Null         ,N'PER_HRA_Personal_CLI_SearchResults',Null           ,1     ,1    ,1       ,1       ,1     ,1       ,1     ,Null)
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name],[Screen List]                        ,[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'DFSA HR POLICY'                         ,Null         ,N'PER_HRA_Personal_CLI_SearchResults',Null           ,1     ,1    ,1       ,1       ,1     ,1       ,1     ,Null)
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name],[Screen List]                        ,[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'DFSA HR POLICY'                         ,Null         ,N'PER_HRA_Personal_CLI_SearchResults',Null           ,1     ,1    ,1       ,1       ,1     ,1       ,1     ,Null)
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name],[Screen List]                        ,[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'DFSA HR POLICY'                         ,Null         ,N'PER_HRA_Personal_CLI_SearchResults',Null           ,1     ,1    ,1       ,1       ,1     ,1       ,1     ,Null)
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name],[Screen List]                        ,[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'DFSA HR POLICY'                         ,Null         ,N'PER_HRA_Personal_CLI_SearchResults',Null           ,1     ,1    ,1       ,1       ,1     ,1       ,1     ,Null)
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name],[Screen List]                        ,[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'DFSA HR POLICY'                         ,Null         ,N'PER_HRA_Personal_CLI_SearchResults',Null           ,1     ,1    ,1       ,1       ,1     ,1       ,1     ,Null)
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name],[Screen List]                        ,[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'DFSA HR POLICY'                         ,Null         ,N'PER_HRA_Personal_CLI_SearchResults',Null           ,1     ,1    ,1       ,1       ,1     ,1       ,1     ,Null)
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name],[Screen List]                        ,[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'DFSA HR POLICY'                         ,Null         ,N'PER_HRA_Personal_CLI_SearchResults',Null           ,1     ,1    ,1       ,1       ,1     ,1       ,1     ,Null)
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name],[Screen List]                        ,[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'DFSA HR POLICY'                         ,Null         ,N'PER_HRA_Personal_CLI_SearchResults',Null           ,1     ,1    ,1       ,1       ,1     ,1       ,1     ,Null)
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name],[Screen List]                        ,[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'DFSA HR POLICY'                         ,Null         ,N'PER_HRA_Personal_CLI_SearchResults',Null           ,1     ,1    ,1       ,1       ,1     ,1       ,1     ,Null)
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name],[Screen List]                        ,[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'DFSA HR POLICY'                         ,Null         ,N'PER_HRA_Personal_CLI_SearchResults',Null           ,1     ,1    ,1       ,1       ,1     ,1       ,1     ,Null)
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name],[Screen List]                        ,[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'DFSA HR POLICY'                         ,Null         ,N'PER_HRA_Personal_CLI_SearchResults',Null           ,1     ,1    ,1       ,1       ,1     ,1       ,1     ,Null)
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name],[Screen List]                        ,[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'DFSA HR POLICY'                         ,Null         ,N'PER_HRA_Personal_CLI_SearchResults',Null           ,1     ,1    ,1       ,1       ,1     ,1       ,1     ,Null)
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name],[Screen List]                        ,[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'DFSA HR POLICY'                         ,Null         ,N'PER_HRA_Personal_CLI_SearchResults',Null           ,1     ,1    ,1       ,1       ,1     ,1       ,1     ,Null)
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name],[Screen List]                        ,[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'DFSA HR POLICY'                         ,Null         ,N'PER_HRA_Personal_CLI_SearchResults',Null           ,1     ,1    ,1       ,1       ,1     ,1       ,1     ,Null)
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name],[Screen List]                        ,[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'DFSA RECRUITMENT'                       ,Null         ,N'PER_HRA_Personal_CLI_SearchResults',Null           ,1     ,0    ,1       ,1       ,1     ,1       ,1     ,Null)
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name],[Screen List]                        ,[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'DFSA RECRUITMENT'                       ,Null         ,N'PER_HRA_Personal_CLI_SearchResults',Null           ,1     ,1    ,1       ,1       ,1     ,1       ,1     ,Null)
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name],[Screen List]                        ,[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'DFSA RECRUITMENT'                       ,Null         ,N'PER_HRA_Personal_CLI_SearchResults',Null           ,1     ,1    ,1       ,1       ,1     ,1       ,1     ,Null)
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name],[Screen List]                        ,[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'DFSA RECRUITMENT'                       ,Null         ,N'PER_HRA_Personal_CLI_SearchResults',Null           ,1     ,1    ,1       ,1       ,1     ,1       ,1     ,Null)
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name],[Screen List]                        ,[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'DFSA RECRUITMENT'                       ,Null         ,N'PER_HRA_Personal_CLI_SearchResults',Null           ,1     ,1    ,1       ,1       ,1     ,1       ,1     ,Null)
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name],[Screen List]                        ,[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'DFSA RECRUITMENT'                       ,Null         ,N'PER_HRA_Personal_CLI_SearchResults',Null           ,1     ,1    ,1       ,1       ,1     ,1       ,1     ,Null)
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name],[Screen List]                        ,[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'DFSA RECRUITMENT'                       ,Null         ,N'PER_HRA_Personal_CLI_SearchResults',Null           ,1     ,1    ,1       ,1       ,1     ,1       ,1     ,Null)
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name],[Screen List]                        ,[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'DFSA RECRUITMENT'                       ,Null         ,N'PER_HRA_Personal_CLI_SearchResults',Null           ,1     ,1    ,1       ,1       ,1     ,1       ,1     ,Null)
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name],[Screen List]                        ,[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'DFSA RECRUITMENT'                       ,Null         ,N'PER_HRA_Personal_CLI_SearchResults',Null           ,1     ,1    ,1       ,1       ,1     ,1       ,1     ,Null)
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name],[Screen List]                        ,[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'DFSA RECRUITMENT'                       ,Null         ,N'PER_HRA_Personal_CLI_SearchResults',Null           ,1     ,1    ,1       ,1       ,1     ,1       ,1     ,Null)
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name],[Screen List]                        ,[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'DFSA RECRUITMENT'                       ,Null         ,N'PER_HRA_Personal_CLI_SearchResults',Null           ,1     ,1    ,1       ,1       ,1     ,1       ,1     ,Null)
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name],[Screen List]                        ,[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'DFSA RECRUITMENT'                       ,Null         ,N'PER_HRA_Personal_CLI_SearchResults',Null           ,1     ,1    ,1       ,1       ,1     ,1       ,1     ,Null)
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name],[Screen List]                        ,[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'DFSA RECRUITMENT'                       ,Null         ,N'PER_HRA_Personal_CLI_SearchResults',Null           ,1     ,1    ,1       ,1       ,1     ,1       ,1     ,Null)
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name],[Screen List]                        ,[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'DFSA RECRUITMENT'                       ,Null         ,N'PER_HRA_Personal_CLI_SearchResults',Null           ,1     ,1    ,1       ,1       ,1     ,1       ,1     ,Null)
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name],[Screen List]                        ,[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'DFSA RECRUITMENT'                       ,Null         ,N'PER_HRA_Personal_CLI_SearchResults',Null           ,1     ,1    ,1       ,1       ,1     ,1       ,1     ,Null)
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name],[Screen List]                        ,[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'DFSA RECRUITMENT'                       ,Null         ,N'PER_HRA_Personal_CLI_SearchResults',Null           ,1     ,1    ,1       ,1       ,1     ,1       ,1     ,Null)
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name],[Screen List]                        ,[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'DFSA RECRUITMENT'                       ,Null         ,N'PER_HRA_Personal_CLI_SearchResults',Null           ,1     ,1    ,1       ,1       ,1     ,1       ,1     ,Null)
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name],[Screen List]                        ,[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'DFSA RECRUITMENT'                       ,Null         ,N'PER_HRA_Personal_CLI_SearchResults',Null           ,1     ,1    ,1       ,1       ,1     ,1       ,1     ,Null)
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name],[Screen List]                        ,[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'DFSA RECRUITMENT'                       ,Null         ,N'PER_HRA_Personal_CLI_SearchResults',Null           ,1     ,1    ,1       ,1       ,1     ,1       ,1     ,Null)
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name],[Screen List]                        ,[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'DFSA RECRUITMENT'                       ,Null         ,N'PER_HRA_Personal_CLI_SearchResults',Null           ,1     ,1    ,1       ,1       ,1     ,1       ,1     ,Null)
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name],[Screen List]                        ,[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'DFSA RECRUITMENT'                       ,Null         ,N'PER_HRA_Personal_CLI_SearchResults',Null           ,1     ,1    ,1       ,1       ,1     ,1       ,1     ,Null)
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name],[Screen List]                        ,[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'DFSA RECRUITMENT'                       ,Null         ,N'PER_HRA_Personal_CLI_SearchResults',Null           ,1     ,1    ,1       ,1       ,1     ,1       ,1     ,Null)
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name],[Screen List]                        ,[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'DFSA HEAD OF HR'                        ,Null         ,N'PER_HRA_Personal_CLI_SearchResults',Null           ,1     ,1    ,1       ,1       ,1     ,1       ,1     ,Null)
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name],[Screen List]                        ,[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'DFSA HEAD OF HR'                        ,Null         ,N'PER_HRA_Personal_CLI_SearchResults',Null           ,1     ,1    ,1       ,1       ,1     ,1       ,1     ,Null)
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name],[Screen List]                        ,[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'GULF HR FINANCE'                        ,Null         ,N'PER_HRA_Personal_CLI_SearchResults',Null           ,1     ,1    ,1       ,1       ,1     ,1       ,1     ,Null)
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name],[Screen List]                        ,[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'DFSA HEAD OF HR'                        ,Null         ,N'PER_HRA_Personal_CLI_SearchResults',Null           ,1     ,1    ,1       ,1       ,1     ,1       ,1     ,Null)
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name],[Screen List]                        ,[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'GULF HR FINANCE'                        ,Null         ,N'PER_HRA_Personal_CLI_SearchResults',Null           ,1     ,1    ,1       ,1       ,1     ,1       ,1     ,Null)
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name],[Screen List]                        ,[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'DFSA HEAD OF HR'                        ,Null         ,N'PER_HRA_Personal_CLI_SearchResults',Null           ,1     ,1    ,1       ,1       ,1     ,1       ,1     ,Null)
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name],[Screen List]                        ,[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'GULF HR FINANCE'                        ,Null         ,N'PER_HRA_Personal_CLI_SearchResults',Null           ,1     ,1    ,1       ,1       ,1     ,1       ,1     ,Null)
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name],[Screen List]                        ,[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'DFSA HEAD OF HR'                        ,Null         ,N'PER_HRA_Personal_CLI_SearchResults',Null           ,1     ,1    ,1       ,1       ,1     ,1       ,1     ,Null)
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name],[Screen List]                        ,[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'GULF HR FINANCE'                        ,Null         ,N'PER_HRA_Personal_CLI_SearchResults',Null           ,1     ,1    ,1       ,1       ,1     ,1       ,1     ,Null)
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name],[Screen List]                        ,[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'DFSA HEAD OF HR'                        ,Null         ,N'PER_HRA_Personal_CLI_SearchResults',Null           ,1     ,1    ,1       ,1       ,1     ,1       ,1     ,Null)
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name],[Screen List]                        ,[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'GULF HR FINANCE'                        ,Null         ,N'PER_HRA_Personal_CLI_SearchResults',Null           ,1     ,1    ,1       ,1       ,1     ,1       ,1     ,Null)
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name],[Screen List]                        ,[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'DFSA HEAD OF HR'                        ,Null         ,N'PER_HRA_Personal_CLI_SearchResults',Null           ,1     ,1    ,1       ,1       ,1     ,1       ,1     ,Null)
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name],[Screen List]                        ,[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'GULF HR FINANCE'                        ,Null         ,N'PER_HRA_Personal_CLI_SearchResults',Null           ,1     ,1    ,1       ,1       ,1     ,1       ,1     ,Null)
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name],[Screen List]                        ,[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'DFSA HEAD OF HR'                        ,Null         ,N'PER_HRA_Personal_CLI_SearchResults',Null           ,1     ,1    ,1       ,1       ,1     ,1       ,1     ,Null)
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name],[Screen List]                        ,[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'GULF HR FINANCE'                        ,Null         ,N'PER_HRA_Personal_CLI_SearchResults',Null           ,1     ,1    ,1       ,1       ,1     ,1       ,1     ,Null)
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name],[Screen List]                        ,[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'DFSA HEAD OF HR'                        ,Null         ,N'PER_HRA_Personal_CLI_SearchResults',Null           ,1     ,1    ,1       ,1       ,1     ,1       ,1     ,Null)
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name],[Screen List]                        ,[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'GULF HR FINANCE'                        ,Null         ,N'PER_HRA_Personal_CLI_SearchResults',Null           ,1     ,1    ,1       ,1       ,1     ,1       ,1     ,Null)
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name],[Screen List]                        ,[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'GULF HR FINANCE'                        ,Null         ,N'PER_HRA_Personal_CLI_SearchResults',Null           ,1     ,1    ,1       ,1       ,1     ,1       ,1     ,Null)
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name],[Screen List]                        ,[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'DFSA HEAD OF HR'                        ,Null         ,N'PER_HRA_Personal_CLI_SearchResults',Null           ,1     ,1    ,1       ,1       ,1     ,1       ,1     ,Null)
GO

INSERT INTO [DEV PORTAL SECURITY OBJECTS] ([Group],[Screen Name],[Screen List]                        ,[External Page],[Edit],[Add],[Delete],[Search],[List],[Filter],[View],[Report])
VALUES (N'GULF HR FINANCE'                        ,Null         ,N'PER_HRA_Personal_CLI_SearchResults',Null           ,1     ,1    ,1       ,1       ,1     ,1       ,1     ,Null)
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
If Exists (SELECT * FROM dbo.sysobjects WHERE id = object_id('PER_HRA_Personal_CLI_Search List Proc') 
					and OBJECTPROPERTY(id, N'IsProcedure') = 1)
Drop Proc dbo.[PER_HRA_Personal_CLI_Search List Proc]
GO




  
  
   Create Proc dbo.    [PER_HRA_Personal_CLI_Search List Proc]  
@Dummy nvarchar(50)=''  
AS  
SELECT  
'' as [Employee],  
'NO' as [Terminated]  
   
   
   
 



GO
----------------------------------------
---SEARCH LIST PROC SPACE STARTS HERE---
----------------------------------------
If Exists (SELECT * FROM dbo.sysobjects WHERE id = object_id('PER_HRA_Personal_CLI_SearchResult List Proc') 
					and OBJECTPROPERTY(id, N'IsProcedure') = 1)
Drop Proc dbo.[PER_HRA_Personal_CLI_SearchResult List Proc]
GO



Create Proc dbo.        [PER_HRA_Personal_CLI_SearchResult List Proc]
@SearchField nvarchar(50)=NULL,
@SearchFieldTerminated nvarchar (50),
@Company int,

--System Fields
@ScreenType nvarchar(15)  = 'FORM',
@Rows Int = 0,
@CommandName nvarchar(50)=NULL, --Command Selected from the Front End
@DEV_ID Int  = NULL, --Current Session Variable Value
@User nvarchar(50)  = NULL
AS

IF @Searchfield is null
SELECT TOP 5000
A.[employee] as [DEV_ID], 
[Full Name],
[Department]
, [Job Title]
, convert(nvarchar(11),[Date of Birth], 113) as 'Date of Birth'
, [Work Telephone Number] as [Work]
, [Mobile Phone Number] as [Mobile]
, [E-Mail Address] as [EMail]
, A.[Nationality]
--, [Home Base Currency] as 'Curr'
, convert(nvarchar(11),A.[Verified Date],113) as 'Updated'

FROM [PER HRA Personal] A
INNER JOIN [CO_SRC_Pension_VIEW] B
ON A.[Employee] = B.[Employee]

INNER JOIN [PER HRA Personal Employment] E 
ON A.[Employee]=E.[Employee]

WHERE [Company Resource] = @Company
AND CASE WHEN @SearchFieldTerminated = 'False' THEN '31 Dec 9999' ELSE convert(nvarchar(11),E.[Termination Date],113) END =convert(nvarchar(11),E.[Termination Date],113)

ORDER BY A.[Verified Date] DESC
ELSE
SELECT TOP 5000
A.[employee] as [DEV_ID], 
[Full Name],
[Department]
, [Job Title]
, convert(nvarchar(11),[Date of Birth], 113) as 'Date of Birth'
, [Work Telephone Number] as [Work]
, [Mobile Phone Number] as [Mobile]
, [E-Mail Address] as [EMail]
, A.[Nationality]
--, [Home Base Currency] as 'Curr'

FROM [PER HRA Personal] A
INNER JOIN [CO_SRC_Pension_VIEW] B
ON A.[Employee] = B.[Employee]

INNER JOIN [PER HRA Personal Employment] E 
ON A.[Employee]=E.[Employee]

WHERE ([Name] Like '%' + IsNull(@SearchField,'') + '%'
OR [Department] Like '%' + IsNull(@SearchField,'') + '%'
OR [Job Title] Like '%' + IsNull(@SearchField,'') + '%'
OR [Division] Like '%' + IsNull(@SearchField,'') + '%'
OR [Company] Like '%' + IsNull(@SearchField,'') + '%')
AND [Company Resource] = @Company
AND CASE WHEN @SearchFieldTerminated = 'False' THEN '31 Dec 9999' ELSE convert(nvarchar(11),E.[Termination Date],113) END =convert(nvarchar(11),E.[Termination Date],113)

ORDER BY [Name]







GO
------------------------------------------
---SEARCH DELETE PROC SPACE STARTS HERE---
------------------------------------------
If Exists (SELECT * FROM dbo.sysobjects WHERE id = object_id('PER_HRA_Personal_CLI_SearchResult Delete Proc') 
					and OBJECTPROPERTY(id, N'IsProcedure') = 1)
Drop Proc dbo.[PER_HRA_Personal_CLI_SearchResult Delete Proc]
GO









Create Proc dbo.        [PER_HRA_Personal_CLI_SearchResult Delete Proc]
@ID Int
AS

DELETE FROM [PER HRA Personal] WHERE [employee] = @ID

SELECT @ID as [DELETED_ID]








GO
------------------------------------------
---     LIST PROC SPACE STARTS HERE    ---
------------------------------------------
If Exists (SELECT * FROM dbo.sysobjects WHERE id = object_id('PER_HRA_Personal_CLI List Proc') 
					and OBJECTPROPERTY(id, N'IsProcedure') = 1)
Drop Proc dbo.[PER_HRA_Personal_CLI List Proc]
GO









Create Proc dbo.        [PER_HRA_Personal_CLI List Proc]
@ID Int,

--System Provided Values
@ScreenType nvarchar(15)  = 'FORM',--EDITGRID or FORM
@Rows Int = 0,
@CommandName nvarchar(50)=NULL, --Command Selected from the Front End
@DEV_ID Int  = NULL, --Current Session Variable Value
@User nvarchar(50)  = NULL
AS

declare @test nvarchar (4000)

EXEC [DEV PORTAL Get Audit Trail] 'PER HRA Personal', @ID, 'Employee', @ChangeOut = @Test OUTPUT


Declare @Range nvarchar(50)

SET @Range = '1-' + Convert(nvarchar(20),@Rows)

SELECT
@Test as 'Audit', 
[Number],[Reference],[Type],[Family Name],[Given Name],[Middle Name],[Other Names],[Initials],[Title],[Preferred Name],[Home Language],[Home Telephone Number],[Work Telephone Number],[Mobile Phone Number],[Pager Number],[E-Mail Address],[Trading Name],[Fax Number],[Physical Address Line 1],[Physical Address Line 2],[Physical Address Line 3],[Physical Address Line 4],[Physical Address Postal Code],[Physical Address City],[Physical Address Country],[Postal Address Line 1],[Postal Address Line 2],[Postal Address Line 3],[Postal Address Line 4],[Postal Address Postal Code],[Postal Address Country],[Race],[Gender],[Religion],[Disabled],[Type of Disability],[Date of Birth],[ID Number],[Passport Number],[Nationality],[Home Base Currency],[Marital Status],[Marital Date],[Ethnic Group],[Entity],[Employment Status],[Report Order],
[Show Terminated],
[Nearest Airport],
[Ex Gratia],
[Verified Date],
[Verified User] as [DEV_User],
A.[employee] as [DEV_ID],
A.[employee] as [DEV_OrderClause],
A.[Extended Permissions]
FROM
[PER HRA Personal] A

WHERE A.[employee] = @ID
AND not (IsNull(@CommandName,'') = 'DEV_ADD' And IsNull(@ScreenType,'')='FORM')

UNION ALL

SELECT
null as [Audit],
Null as [Number],Null as [Reference],Null as [Type],Null as [Family Name],Null as [Given Name],Null as [Middle Name],Null as [Other Names],Null as [Initials],Null as [Title],Null as [Preferred Name],Null as [Home Language],Null as [Home Telephone Number],Null as [Work Telephone Number],Null as [Mobile Phone Number],Null as [Pager Number],Null as [E-Mail AddreRss],Null as [Trading Name],Null as [Fax Number],Null as [Physical Address Line 1],Null as [Physical Address Line 2],Null as [Physical Address Line 3],Null as [Physical Address Line 4],Null as [Physical Address Postal Code],Null as [Physical Address City],Null as [Physical Address Country],Null as [Postal Address Line 1],Null as [Postal Address Line 2],Null as [Postal Address Line 3],Null as [Postal Address Line 4],Null as [Postal Address Postal Code],Null as [Postal Address Country],Null as [Race],Null as [Gender],Null as [Religion],Null as [Disabled],Null as [Type of Disability],Null as [Date of Birth],Null as [ID Number],Null as [Passport Number],Null as [Nationality],Null as [Home Base Currency],Null as [Marital Status],Null as [Marital Date],Null as [Ethnic Group],Null as [Entity],Null as [Employment Status],Null as [Report Order],
null as [Show Terminated],
Null as [Nearest Airport],
Null as [Ex Gratia],
Null as [Verified Date],
@user as [DEV_User],
Null as [DEV_ID],
9999999 as [DEV_OrderClause],
Null as [Extended Permissions]
FROM
createranges(@Range) Ranges

order by  [DEV_OrderClause] DESC








GO
------------------------------------------
---   UPDATE PROC SPACE STARTS HERE    ---
------------------------------------------
If Exists (SELECT * FROM dbo.sysobjects WHERE id = object_id('PER_HRA_Personal_CLI Update Proc') 
					and OBJECTPROPERTY(id, N'IsProcedure') = 1)
Drop Proc dbo.[PER_HRA_Personal_CLI Update Proc]
GO









Create Proc dbo.        [PER_HRA_Personal_CLI Update Proc]
@ID Int,
--All Fields Required for Update
@Number nvarchar(50),@Reference nvarchar(100),@Type nvarchar(50),@FamilyName nvarchar(50),@GivenName nvarchar(50),@MiddleName nvarchar(50),@OtherNames nvarchar(50),@Initials nvarchar(10),@Title nvarchar(10),@PreferredName nvarchar(50),@HomeLanguage nvarchar(50),@HomeTelephoneNumber nvarchar(50),@WorkTelephoneNumber nvarchar(50),@MobilePhoneNumber nvarchar(50),@PagerNumber nvarchar(50),@EMailAddress nvarchar(99),@TradingName nvarchar(3),@FaxNumber nvarchar(50),@PhysicalAddressLine1 nvarchar(35),@PhysicalAddressLine2 nvarchar(35),@PhysicalAddressLine3 nvarchar(35),@PhysicalAddressLine4 nvarchar(35),@PhysicalAddressPostalCode nvarchar(10),@PhysicalAddressCity nvarchar(50),@PhysicalAddressCountry nvarchar(50),@PostalAddressLine1 nvarchar(35),@PostalAddressLine2 nvarchar(35),@PostalAddressLine3 nvarchar(35),@PostalAddressLine4 nvarchar(35),@PostalAddressPostalCode nvarchar(20),@PostalAddressCountry nvarchar(50),@Race nvarchar(50),@Gender nvarchar(50),@Religion nvarchar(50),@Disabled nvarchar(10),@TypeofDisability nvarchar(50),@DateofBirth datetime,@IDNumber nvarchar(13),@PassportNumber nvarchar(13),@Nationality nvarchar(50),@Citizenship nvarchar(50),@MaritalStatus nvarchar(10),@MaritalDate datetime,@EthnicGroup nvarchar(50),@Entity int,@EmploymentStatus nvarchar(50),@ReportOrder int,
@ShowTerminated nvarchar(10),
@Airport int,
@Gratia numeric(18,2),
@ExtendedPermissions nvarchar(10),
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
SELECT [employee] FROM [PER HRA Personal] A
WHERE [employee] = @DEV_ID)

BEGIN --Update
UPDATE [PER HRA Personal]
SET 
[Number] = @Number,[Reference] = @Reference,[Type] = @Type,[Family Name] = @FamilyName,[Given Name] = @GivenName,[Middle Name] = @MiddleName,[Other Names] = @OtherNames,[Initials] = @Initials,[Title] = @Title,[Preferred Name] = @PreferredName,[Home Language] = @HomeLanguage,[Home Telephone Number] = @HomeTelephoneNumber,[Work Telephone Number] = @WorkTelephoneNumber,[Mobile Phone Number] = @MobilePhoneNumber,[Pager Number] = @PagerNumber,[E-Mail Address] = @EMailAddress,[Trading Name] = @TradingName,[Fax Number] = @FaxNumber,[Physical Address Line 1] = @PhysicalAddressLine1,[Physical Address Line 2] = @PhysicalAddressLine2,[Physical Address Line 3] = @PhysicalAddressLine3,[Physical Address Line 4] = @PhysicalAddressLine4,[Physical Address Postal Code] = @PhysicalAddressPostalCode,[Physical Address City] = @PhysicalAddressCity,[Physical Address Country] = @PhysicalAddressCountry,[Postal Address Line 1] = @PostalAddressLine1,[Postal Address Line 2] = @PostalAddressLine2,[Postal Address Line 3] = @PostalAddressLine3,[Postal Address Line 4] = @PostalAddressLine4,[Postal Address Postal Code] = @PostalAddressPostalCode,[Postal Address Country] = @PostalAddressCountry,[Race] = @Race,[Gender] = @Gender,[Religion] = @Religion,[Disabled] = @Disabled,[Type of Disability] = @TypeofDisability,[Date of Birth] = @DateofBirth,[ID Number] = @IDNumber,[Passport Number] = @PassportNumber,[Nationality] = @Nationality,[Home Base Currency] = @Citizenship,[Marital Status] = @MaritalStatus,[Marital Date] = @MaritalDate,[Ethnic Group] = @EthnicGroup,[Entity] = @Entity,[Employment Status] = @EmploymentStatus,[Report Order] = @ReportOrder,
[Show Terminated] = @Showterminated,
[Nearest Airport] = @Airport,
[Ex Gratia] = @Gratia,
[Verified Date] = GetDate(),
[Verified User] = @User,
[Extended Permissions] = @ExtendedPermissions 
WHERE [employee] = @DEV_ID

END 
ELSE -- Insert
BEGIN
INSERT INTO
[PER HRA Personal]
(
[Number],[Reference],[Type],[Family Name],[Given Name],[Middle Name],[Other Names],[Initials],[Title],[Preferred Name],[Home Language],[Home Telephone Number],[Work Telephone Number],[Mobile Phone Number],[Pager Number],[E-Mail Address],[Trading Name],[Fax Number],[Physical Address Line 1],[Physical Address Line 2],[Physical Address Line 3],[Physical Address Line 4],[Physical Address Postal Code],[Physical Address City],[Physical Address Country],[Postal Address Line 1],[Postal Address Line 2],[Postal Address Line 3],[Postal Address Line 4],[Postal Address Postal Code],[Postal Address Country],[Race],[Gender],[Religion],[Disabled],[Type of Disability],[Date of Birth],[ID Number],[Passport Number],[Nationality],[Home Base Currency],[Marital Status],[Marital Date],[Ethnic Group],[Entity],[Employment Status],[Report Order],
[Show Terminated],
[Nearest Airport],
[Ex Gratia],
[Verified User],
[Extended Permissions]
)
VALUES
(
@Number,@Reference,@Type,@FamilyName,@GivenName,@MiddleName,@OtherNames,@Initials,@Title,@PreferredName,@HomeLanguage,@HomeTelephoneNumber,@WorkTelephoneNumber,@MobilePhoneNumber,@PagerNumber,@EMailAddress,@TradingName,@FaxNumber,@PhysicalAddressLine1,@PhysicalAddressLine2,@PhysicalAddressLine3,@PhysicalAddressLine4,@PhysicalAddressPostalCode,@PhysicalAddressCity,@PhysicalAddressCountry,@PostalAddressLine1,@PostalAddressLine2,@PostalAddressLine3,@PostalAddressLine4,@PostalAddressPostalCode,@PostalAddressCountry,@Race,@Gender,@Religion,@Disabled,@TypeofDisability,@DateofBirth,@IDNumber,@PassportNumber,@Nationality,@Citizenship,@MaritalStatus,@MaritalDate,@EthnicGroup,@Entity,@EmploymentStatus,@ReportOrder,
@Showterminated,
@Airport,
@Gratia,
@User,
@ExtendedPermissions
)

SELECT @DEV_ID = SCOPE_IDENTITY()

END

SELECT @DEV_ID as [DEV_ID]
EXEC [PER HRA Personal AUDIT PROC] @DEV_ID
RETURN
END








GO
------------------------------------------
---   DELETE PROC SPACE STARTS HERE    ---
------------------------------------------
If Exists (SELECT * FROM dbo.sysobjects WHERE id = object_id('PER_HRA_Personal_CLI Delete Proc') 
					and OBJECTPROPERTY(id, N'IsProcedure') = 1)
Drop Proc dbo.[PER_HRA_Personal_CLI Delete Proc]
GO









Create Proc dbo.        [PER_HRA_Personal_CLI Delete Proc]
@ID Int
AS

DELETE FROM [PER HRA Personal] WHERE [employee] = @ID

SELECT @ID as [DELETED_ID]








GO
