ALTER TABLE dbo.[PER HRA Personal] ADD
	[Extended Permissions] nvarchar(10) NULL
GO
ALTER TABLE dbo.[PER HRA Personal] ADD CONSTRAINT
	[DF_PER HRA Personal_Extended Permissions] DEFAULT ('No') FOR [Extended Permissions]
GO

ALTER TABLE dbo.[PER HRA Personal Audit] ADD
	[Extended Permissions] nvarchar(10) NULL
GO
ALTER TABLE dbo.[PER HRA Personal Audit] ADD CONSTRAINT
	[DF_PER HRA Personal_Extended Permissions audit] DEFAULT ('No') FOR [Extended Permissions]
GO