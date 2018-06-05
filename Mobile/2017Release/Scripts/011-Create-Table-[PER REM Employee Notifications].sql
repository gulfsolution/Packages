/****** Object:  Table [dbo].[PER REM Employee Notifications]    Script Date: 4/30/2018 6:25:35 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[PER REM Employee Notifications](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Employee] [int] NULL,
	[Type] [nvarchar](50) NOT NULL,
	[Detail] [nvarchar](350) NULL,
	[Info Date] [datetime] NULL,
	[Start Date] [datetime] NULL,
	[End Date] [datetime] NULL,
	[Active] [nvarchar](5) NOT NULL CONSTRAINT [DF_PER REM Employee Notifications_Active]  DEFAULT ('Yes'),
	[Applied to All] [nvarchar](5) NOT NULL CONSTRAINT [DF_PER REM Employee Notifications_Applied to All]  DEFAULT ('No'),
	[Verified Date] [datetime] NOT NULL CONSTRAINT [DF_PER REM Employee Notifications_Verified Date]  DEFAULT (getdate()),
	[Verified Status] [nvarchar](50) NOT NULL CONSTRAINT [DF_PER REM Employee Notifications_Verified Status]  DEFAULT ('Yes'),
	[Verified User] [nvarchar](50) NOT NULL CONSTRAINT [DF_PER REM Employee Notifications_Verified User]  DEFAULT (N'Audit'),
	[Verified Created] [datetime] NOT NULL CONSTRAINT [DF_PER REM Employee Notifications_Verified Created]  DEFAULT (getdate()),
 CONSTRAINT [PK_PER REM Employee Notifications] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[PER REM Employee Notifications]  WITH CHECK ADD CHECK  (([Active]='No' OR [Active]='Yes'))
GO

ALTER TABLE [dbo].[PER REM Employee Notifications]  WITH CHECK ADD CHECK  (([Applied to All]='No' OR [Applied to All]='Yes'))
GO

