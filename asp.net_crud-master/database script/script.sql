USE [productDetails]
GO
/****** Object:  Table [dbo].[productMaster]    Script Date: 11/17/2021 12:30:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[productMaster](
	[productID] [int] IDENTITY(1,1) NOT NULL,
	[productName] [varchar](50) NOT NULL,
	[catID] [int] Not NULL,
 CONSTRAINT [PK_productMaster] PRIMARY KEY CLUSTERED 
(
	[productID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[catMaster]    Script Date: 11/17/2021 12:30:09 ******/
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
/****** Object:  ForeignKey [FK_productMaster_productMaster]    Script Date: 11/17/2021 12:30:09 ******/
ALTER TABLE [dbo].[productMaster]  WITH CHECK ADD  CONSTRAINT [FK_productMaster_productMaster] FOREIGN KEY([catID])
REFERENCES [dbo].[productMaster] ([productID])
GO
ALTER TABLE [dbo].[productMaster] CHECK CONSTRAINT [FK_productMaster_productMaster]
GO
