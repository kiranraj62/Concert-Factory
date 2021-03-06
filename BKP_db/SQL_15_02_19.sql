USE [FoxGloveDb]
GO
/****** Object:  Table [dbo].[UserReg]    Script Date: 02/15/2019 15:33:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UserReg](
	[User_ID] [int] NULL,
	[First_Name] [varchar](50) NULL,
	[Middle_name] [varchar](50) NULL,
	[Last_name] [nchar](10) NULL,
	[Per_address] [varchar](150) NULL,
	[Com_address] [varchar](150) NULL,
	[City] [varchar](50) NULL,
	[District] [varchar](50) NULL,
	[Pincode] [numeric](18, 0) NULL,
	[Gender] [varchar](50) NULL,
	[Mobile] [numeric](18, 0) NULL,
	[Telephone] [numeric](18, 0) NULL,
	[Email] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
	[ID_Proof] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Login]    Script Date: 02/15/2019 15:33:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Login](
	[Username] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
	[UserType] [varchar](50) NULL,
	[Id] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BandReg]    Script Date: 02/15/2019 15:33:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BandReg](
	[Band_ID] [int] NULL,
	[Band_Name] [varchar](50) NULL,
	[Band_Mail_ID] [varchar](50) NULL,
	[License] [varchar](50) NULL,
	[Telephone] [numeric](18, 0) NULL,
	[Per_Address] [varchar](100) NULL,
	[Com_Address] [varchar](100) NULL,
	[City] [varchar](50) NULL,
	[State] [varchar](50) NULL,
	[Postal_Code] [numeric](18, 0) NULL,
	[Country] [varchar](50) NULL,
	[Managers_Name] [varchar](50) NULL,
	[Managers_Phone] [numeric](18, 0) NULL,
	[Type_of_Music] [varchar](50) NULL,
	[Band_type] [varchar](50) NULL,
	[Number_of_Members] [numeric](18, 0) NULL,
	[Status] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
