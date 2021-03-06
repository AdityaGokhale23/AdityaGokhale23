USE [master]
GO
/****** Object:  Database [data]    Script Date: 12/07/2021 18:23:43 ******/
CREATE DATABASE [data] ON  PRIMARY 
( NAME = N'data', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10.SQLEXPRESS\MSSQL\DATA\data.mdf' , SIZE = 2304KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'data_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10.SQLEXPRESS\MSSQL\DATA\data_log.LDF' , SIZE = 504KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [data] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [data].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [data] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [data] SET ANSI_NULLS OFF
GO
ALTER DATABASE [data] SET ANSI_PADDING OFF
GO
ALTER DATABASE [data] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [data] SET ARITHABORT OFF
GO
ALTER DATABASE [data] SET AUTO_CLOSE ON
GO
ALTER DATABASE [data] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [data] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [data] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [data] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [data] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [data] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [data] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [data] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [data] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [data] SET  ENABLE_BROKER
GO
ALTER DATABASE [data] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [data] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [data] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [data] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [data] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [data] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [data] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [data] SET  READ_WRITE
GO
ALTER DATABASE [data] SET RECOVERY SIMPLE
GO
ALTER DATABASE [data] SET  MULTI_USER
GO
ALTER DATABASE [data] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [data] SET DB_CHAINING OFF
GO
USE [data]
GO
/****** Object:  Table [dbo].[productMaster]    Script Date: 12/07/2021 18:23:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[productMaster](
	[productID] [int] IDENTITY(1,1) NOT NULL,
	[productName] [varchar](50) NOT NULL,
	[catID] [int] NOT NULL,
 CONSTRAINT [PK_productMaster] PRIMARY KEY CLUSTERED 
(
	[productID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[productMaster] ON
INSERT [dbo].[productMaster] ([productID], [productName], [catID]) VALUES (2, N'aditya', 2)
INSERT [dbo].[productMaster] ([productID], [productName], [catID]) VALUES (3, N'dslr', 4)
INSERT [dbo].[productMaster] ([productID], [productName], [catID]) VALUES (4, N'Monitors', 1)
INSERT [dbo].[productMaster] ([productID], [productName], [catID]) VALUES (5, N'Mouse ', 1)
INSERT [dbo].[productMaster] ([productID], [productName], [catID]) VALUES (6, N'scanner ', 1)
INSERT [dbo].[productMaster] ([productID], [productName], [catID]) VALUES (7, N'CPU', 1)
INSERT [dbo].[productMaster] ([productID], [productName], [catID]) VALUES (8, N'Keyboard ', 1)
INSERT [dbo].[productMaster] ([productID], [productName], [catID]) VALUES (9, N'Adaptor ', 1)
INSERT [dbo].[productMaster] ([productID], [productName], [catID]) VALUES (10, N'battery ', 1)
INSERT [dbo].[productMaster] ([productID], [productName], [catID]) VALUES (11, N'chargers ', 1)
INSERT [dbo].[productMaster] ([productID], [productName], [catID]) VALUES (12, N'sony 700d', 4)
INSERT [dbo].[productMaster] ([productID], [productName], [catID]) VALUES (13, N'canon EOS', 4)
INSERT [dbo].[productMaster] ([productID], [productName], [catID]) VALUES (14, N'NIKON D90', 4)
INSERT [dbo].[productMaster] ([productID], [productName], [catID]) VALUES (15, N'CANON 3000d', 4)
INSERT [dbo].[productMaster] ([productID], [productName], [catID]) VALUES (16, N'CANON200d', 4)
INSERT [dbo].[productMaster] ([productID], [productName], [catID]) VALUES (17, N'SONY PIXEL', 4)
SET IDENTITY_INSERT [dbo].[productMaster] OFF
/****** Object:  Table [dbo].[catMaster]    Script Date: 12/07/2021 18:23:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[catMaster](
	[catID] [int] IDENTITY(1,1) NOT NULL,
	[catName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_catMaster] PRIMARY KEY CLUSTERED 
(
	[catID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[catMaster] ON
INSERT [dbo].[catMaster] ([catID], [catName]) VALUES (1, N'Computer')
INSERT [dbo].[catMaster] ([catID], [catName]) VALUES (2, N'Storage')
INSERT [dbo].[catMaster] ([catID], [catName]) VALUES (3, N'Acssories')
INSERT [dbo].[catMaster] ([catID], [catName]) VALUES (4, N'Digital Camera')
INSERT [dbo].[catMaster] ([catID], [catName]) VALUES (5, N'Camera Aceesories')
SET IDENTITY_INSERT [dbo].[catMaster] OFF
