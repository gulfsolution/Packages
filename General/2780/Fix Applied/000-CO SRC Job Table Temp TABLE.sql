


DROP TABLE [dbo].[CO SRC Job Table Temp]
GO

CREATE TABLE [dbo].[CO SRC Job Table Temp] (
	[Job] int not null identity(1,1),
	[Employee] int null,
	[Interval] int null,
	[Company Resource] int null,
	[Leave Scheme] nvarchar(100) null,
	[Verified Date] datetime not null default(getdate()),
	[Verified Created] datetime not null default(getdate()), 
	[Verified User] nvarchar(50) not null default ('Audit'),
	[Verified Status] nvarchar(10) not null default('Yes')
)



