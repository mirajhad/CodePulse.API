USE [CodePulseDB]
GO
/****** Object:  Table [dbo].[BlogPosts]    Script Date: 17-04-2025 10:08:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BlogPosts](
	[Id] [uniqueidentifier] NOT NULL,
	[Title] [nvarchar](max) NOT NULL,
	[ShortDescription] [nvarchar](max) NOT NULL,
	[Content] [nvarchar](max) NOT NULL,
	[FeaturedImageUrl] [nvarchar](max) NOT NULL,
	[UrlHandle] [nvarchar](max) NOT NULL,
	[PublishedDate] [datetime2](7) NOT NULL,
	[Author] [nvarchar](max) NOT NULL,
	[IsVisible] [bit] NOT NULL,
 CONSTRAINT [PK_BlogPosts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[BlogPosts] ([Id], [Title], [ShortDescription], [Content], [FeaturedImageUrl], [UrlHandle], [PublishedDate], [Author], [IsVisible]) VALUES (N'88787f31-1511-4f3e-5365-08dcaa230927', N'Rerum dignissimos es', N'Quam in consequatur', N'Qui molestiae pariat', N'Ut aut exercitation fdfd', N'Quas mollit quia lau', CAST(N'1989-02-02T00:00:00.0000000' AS DateTime2), N'Vel quo molestias vi', 0)
INSERT [dbo].[BlogPosts] ([Id], [Title], [ShortDescription], [Content], [FeaturedImageUrl], [UrlHandle], [PublishedDate], [Author], [IsVisible]) VALUES (N'3d53c560-8b3b-4bc3-b06f-08dcaa244dff', N'Laborum Aut quo eum', N'In rerum explicabo ', N'Sint dolorum commodi', N'https://localhost:7000/Images/Rina Boyd.jpeg', N'Repudiandae et persp', CAST(N'2011-09-17T00:00:00.0000000' AS DateTime2), N'Eius ut consequuntur', 1)
GO
