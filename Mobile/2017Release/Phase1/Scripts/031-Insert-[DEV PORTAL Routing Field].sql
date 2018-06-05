SET NOCOUNT ON

DELETE FROM [DEV PORTAL Routing Fields]
WHERE [Object] = 'HC Document'
GO

INSERT INTO [DEV PORTAL Routing Fields] ([Entity],[Routing],[Object]      ,[Sequence],[Description]   ,[Field]         ,[Type]  ,[Mail],[WF]  ,[Encrypt])
VALUES (1000                                     ,Null     ,N'HC Document',1         ,N'Employee Name',N'Employee Name',N'LABEL',N'Yes',N'Yes',N'No')
GO

INSERT INTO [DEV PORTAL Routing Fields] ([Entity],[Routing],[Object]      ,[Sequence],[Description]     ,[Field]           ,[Type]  ,[Mail],[WF]  ,[Encrypt])
VALUES (1000                                     ,Null     ,N'HC Document',2         ,N'Employee Number',N'Employee Number',N'LABEL',N'Yes',N'Yes',N'No')
GO

INSERT INTO [DEV PORTAL Routing Fields] ([Entity],[Routing],[Object]      ,[Sequence],[Description]        ,[Field]              ,[Type]  ,[Mail],[WF]  ,[Encrypt])
VALUES (1000                                     ,Null     ,N'HC Document',3         ,N'Distributor Number',N'Distributor Number',N'LABEL',N'Yes',N'Yes',N'No')
GO

INSERT INTO [DEV PORTAL Routing Fields] ([Entity],[Routing],[Object]      ,[Sequence],[Description]        ,[Field]              ,[Type]  ,[Mail],[WF]  ,[Encrypt])
VALUES (1000                                     ,Null     ,N'HC Document',4         ,N'Date of Request'   ,N'Date of Request'   ,N'LABEL',N'Yes',N'Yes',N'No')
GO

INSERT INTO [DEV PORTAL Routing Fields] ([Entity],[Routing],[Object]      ,[Sequence],[Description]        ,[Field]              ,[Type]  ,[Mail],[WF]  ,[Encrypt])
VALUES (1000                                     ,Null     ,N'HC Document',5         ,N'Type'              ,N'Type'              ,N'LABEL',N'Yes',N'Yes',N'No')
GO

INSERT INTO [DEV PORTAL Routing Fields] ([Entity],[Routing],[Object]      ,[Sequence],[Description]        ,[Field]              ,[Type]  ,[Mail],[WF]  ,[Encrypt])
VALUES (1000                                     ,Null     ,N'HC Document',6         ,N'Dependant'         ,N'Dependant'         ,N'LABEL',N'Yes',N'Yes',N'No')
GO

INSERT INTO [DEV PORTAL Routing Fields] ([Entity],[Routing],[Object]      ,[Sequence],[Description]        ,[Field]              ,[Type]  ,[Mail],[WF]  ,[Encrypt])
VALUES (1000                                     ,Null     ,N'HC Document',7         ,N'Comments'          ,N'Comments'          ,N'LABEL',N'Yes',N'Yes',N'No')
GO

INSERT INTO [DEV PORTAL Routing Fields] ([Entity],[Routing],[Object]      ,[Sequence],[Description]        ,[Field]              ,[Type]  ,[Mail],[WF]  ,[Encrypt])
VALUES (1000                                     ,Null     ,N'HC Document',8         ,N'Bank Name'         ,N'Bank Name'         ,N'LABEL',N'Yes',N'Yes',N'No')
GO

INSERT INTO [DEV PORTAL Routing Fields] ([Entity],[Routing],[Object]      ,[Sequence],[Description]        ,[Field]              ,[Type]  ,[Mail],[WF]  ,[Encrypt])
VALUES (1000                                     ,Null     ,N'HC Document',9         ,N'Purpose'           ,N'Purpose'           ,N'LABEL',N'Yes',N'Yes',N'No')
GO

INSERT INTO [DEV PORTAL Routing Fields] ([Entity],[Routing],[Object]      ,[Sequence],[Description]        ,[Field]              ,[Type]  ,[Mail],[WF]  ,[Encrypt])
VALUES (1000                                     ,Null     ,N'HC Document',10        ,N'Embassy'           ,N'Embassy'           ,N'LABEL',N'Yes',N'Yes',N'No')
GO

INSERT INTO [DEV PORTAL Routing Fields] ([Entity],[Routing],[Object]      ,[Sequence],[Description]        ,[Field]              ,[Type]  ,[Mail],[WF]  ,[Encrypt])
VALUES (1000                                     ,Null     ,N'HC Document',11        ,N'Status'            ,N'Status'            ,N'LABEL',N'Yes',N'Yes',N'No')
GO

