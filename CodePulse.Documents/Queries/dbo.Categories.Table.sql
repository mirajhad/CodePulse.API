USE [CodePulseDB]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 17-04-2025 10:08:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[UrlHandle] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[Categories] ([Id], [Name], [UrlHandle]) VALUES (N'c644fcf4-d8fd-4493-3c5c-08dc9fe2b7e6', N'Flavia Greene test', N'Provident et vel es test')
INSERT [dbo].[Categories] ([Id], [Name], [UrlHandle]) VALUES (N'7072890a-cf2b-4f62-d989-08dcaa12feaf', N'Drake Rush', N'Fugiatdoloremnon ')
INSERT [dbo].[Categories] ([Id], [Name], [UrlHandle]) VALUES (N'5954e14d-8767-40cd-d98a-08dcaa12feaf', N'Driscoll Medina', N'In saepe in perspici')
INSERT [dbo].[Categories] ([Id], [Name], [UrlHandle]) VALUES (N'3eb54c9c-1a82-4aef-f8fd-08dcaa2426be', N'Hunter Austin', N'Sunt sed veniam off')
INSERT [dbo].[Categories] ([Id], [Name], [UrlHandle]) VALUES (N'9920f47d-ae85-4818-0a16-08dcac234629', N'Nicholas Porter', N'Qui pariatur Ducimu')
INSERT [dbo].[Categories] ([Id], [Name], [UrlHandle]) VALUES (N'5b6d7e49-4def-4e3c-0a17-08dcac234629', N'Indigo Oneal', N'Est')
INSERT [dbo].[Categories] ([Id], [Name], [UrlHandle]) VALUES (N'9a91e5e0-a0f0-4544-bac9-08dcadad6fa4', N'Jonah Lester', N'Doloribus quos totam')
GO
