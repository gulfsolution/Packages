/****** Object:  Table [dbo].[EmployeeHierarchy]    Script Date: 3/13/2018 1:27:34 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[EmployeeHierarchy](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Employee] [int] NOT NULL,
	[User] [nvarchar](250) NOT NULL,
 CONSTRAINT [PK_EmployeeHierarchy] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

