USE [ReadersServiceApi]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 01.11.2024 19:22:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Readers]    Script Date: 01.11.2024 19:22:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Readers](
	[Id_User] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Date_Birth] [datetime2](7) NOT NULL,
	[Login] [nvarchar](max) NOT NULL,
	[Password] [nvarchar](max) NOT NULL,
	[Id_Role] [int] NULL,
	[Profile_Photo] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Readers] PRIMARY KEY CLUSTERED 
(
	[Id_User] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 01.11.2024 19:22:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[Id_Role] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[Id_Role] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20241025154934_first', N'8.0.10')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20241027182945_dadad', N'8.0.10')
GO
SET IDENTITY_INSERT [dbo].[Readers] ON 

INSERT [dbo].[Readers] ([Id_User], [Name], [Date_Birth], [Login], [Password], [Id_Role], [Profile_Photo]) VALUES (1, N'fara', CAST(N'2006-12-11T00:00:00.0000000' AS DateTime2), N'fara', N'123', 1, N'https://localhost:7270/api/Photos/photo/photo.png')
INSERT [dbo].[Readers] ([Id_User], [Name], [Date_Birth], [Login], [Password], [Id_Role], [Profile_Photo]) VALUES (2, N'user', CAST(N'2010-01-01T00:00:00.0000000' AS DateTime2), N'user', N'123', 2, N'')
INSERT [dbo].[Readers] ([Id_User], [Name], [Date_Birth], [Login], [Password], [Id_Role], [Profile_Photo]) VALUES (3, N'test', CAST(N'2024-09-29T17:24:08.3420000' AS DateTime2), N'test', N'test', 1, N'')
INSERT [dbo].[Readers] ([Id_User], [Name], [Date_Birth], [Login], [Password], [Id_Role], [Profile_Photo]) VALUES (4, N'misha', CAST(N'2024-09-29T17:30:03.7810000' AS DateTime2), N'misha', N'misha', 2, N'')
INSERT [dbo].[Readers] ([Id_User], [Name], [Date_Birth], [Login], [Password], [Id_Role], [Profile_Photo]) VALUES (5, N'ivan', CAST(N'2010-10-01T00:00:00.0000000' AS DateTime2), N'ivan', N'ivan', 2, N'')
INSERT [dbo].[Readers] ([Id_User], [Name], [Date_Birth], [Login], [Password], [Id_Role], [Profile_Photo]) VALUES (6, N'name', CAST(N'2006-12-11T00:00:00.0000000' AS DateTime2), N'name', N'name', 2, N'')
INSERT [dbo].[Readers] ([Id_User], [Name], [Date_Birth], [Login], [Password], [Id_Role], [Profile_Photo]) VALUES (7, N'Ильдар Фаррахов', CAST(N'2006-12-11T00:00:00.0000000' AS DateTime2), N'123', N'fara', 1, N'')
SET IDENTITY_INSERT [dbo].[Readers] OFF
GO
SET IDENTITY_INSERT [dbo].[Roles] ON 

INSERT [dbo].[Roles] ([Id_Role], [Name]) VALUES (1, N'admin')
INSERT [dbo].[Roles] ([Id_Role], [Name]) VALUES (2, N'reader')
SET IDENTITY_INSERT [dbo].[Roles] OFF
GO
ALTER TABLE [dbo].[Readers] ADD  DEFAULT (N'') FOR [Profile_Photo]
GO
ALTER TABLE [dbo].[Readers]  WITH CHECK ADD  CONSTRAINT [FK_Readers_Roles_Id_Role] FOREIGN KEY([Id_Role])
REFERENCES [dbo].[Roles] ([Id_Role])
GO
ALTER TABLE [dbo].[Readers] CHECK CONSTRAINT [FK_Readers_Roles_Id_Role]
GO
