USE [CodePulseDB]
GO
/****** Object:  Table [dbo].[BlogPostCategory]    Script Date: 17-04-2025 10:08:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BlogPostCategory](
	[BlogPostsId] [uniqueidentifier] NOT NULL,
	[CategoriesId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_BlogPostCategory] PRIMARY KEY CLUSTERED 
(
	[BlogPostsId] ASC,
	[CategoriesId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[BlogPostCategory] ([BlogPostsId], [CategoriesId]) VALUES (N'3d53c560-8b3b-4bc3-b06f-08dcaa244dff', N'c644fcf4-d8fd-4493-3c5c-08dc9fe2b7e6')
INSERT [dbo].[BlogPostCategory] ([BlogPostsId], [CategoriesId]) VALUES (N'3d53c560-8b3b-4bc3-b06f-08dcaa244dff', N'7072890a-cf2b-4f62-d989-08dcaa12feaf')
INSERT [dbo].[BlogPostCategory] ([BlogPostsId], [CategoriesId]) VALUES (N'88787f31-1511-4f3e-5365-08dcaa230927', N'5954e14d-8767-40cd-d98a-08dcaa12feaf')
GO
/****** Object:  Index [IX_BlogPostCategory_CategoriesId]    Script Date: 17-04-2025 10:08:43 PM ******/
CREATE NONCLUSTERED INDEX [IX_BlogPostCategory_CategoriesId] ON [dbo].[BlogPostCategory]
(
	[CategoriesId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[BlogPostCategory]  WITH CHECK ADD  CONSTRAINT [FK_BlogPostCategory_BlogPosts_BlogPostsId] FOREIGN KEY([BlogPostsId])
REFERENCES [dbo].[BlogPosts] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[BlogPostCategory] CHECK CONSTRAINT [FK_BlogPostCategory_BlogPosts_BlogPostsId]
GO
ALTER TABLE [dbo].[BlogPostCategory]  WITH CHECK ADD  CONSTRAINT [FK_BlogPostCategory_Categories_CategoriesId] FOREIGN KEY([CategoriesId])
REFERENCES [dbo].[Categories] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[BlogPostCategory] CHECK CONSTRAINT [FK_BlogPostCategory_Categories_CategoriesId]
GO
