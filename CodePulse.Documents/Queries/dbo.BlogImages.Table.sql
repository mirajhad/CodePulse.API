USE [CodePulseDB]
GO
/****** Object:  Table [dbo].[BlogImages]    Script Date: 17-04-2025 10:08:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BlogImages](
	[Id] [uniqueidentifier] NOT NULL,
	[FileName] [nvarchar](max) NOT NULL,
	[FileExtension] [nvarchar](max) NOT NULL,
	[Title] [nvarchar](max) NOT NULL,
	[Url] [nvarchar](max) NOT NULL,
	[DateCreated] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_BlogImages] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[BlogImages] ([Id], [FileName], [FileExtension], [Title], [Url], [DateCreated]) VALUES (N'a78ccc54-c26c-4ac0-766f-08dcaa131344', N'Rina Boyd', N'.jpeg', N'Quis eum et quaerat ', N'https://localhost:7000/Images/Rina Boyd.jpeg', CAST(N'2024-07-22T11:26:48.3829326' AS DateTime2))
GO
