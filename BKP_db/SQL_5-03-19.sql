USE [FoxGloveDb]
GO
/****** Object:  Table [dbo].[UserReviews]    Script Date: 03/05/2019 15:27:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UserReviews](
	[Reviews] [varchar](500) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[UserReviews] ([Reviews]) VALUES (N'kcjbajcbakdchoasidjoisjvposkvsp[mvsvs ')
INSERT [dbo].[UserReviews] ([Reviews]) VALUES (N'kcjbajcbakdchoasidjoisjvposkvsp[mvsvs ')
/****** Object:  Table [dbo].[UserReg]    Script Date: 03/05/2019 15:27:29 ******/
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
	[ID_Proof] [varchar](50) NULL,
	[Status] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Login]    Script Date: 03/05/2019 15:27:29 ******/
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
INSERT [dbo].[Login] ([Username], [Password], [UserType], [Id]) VALUES (N'kiranraj3132@gmail.com', N'123', N'User', 5001)
INSERT [dbo].[Login] ([Username], [Password], [UserType], [Id]) VALUES (N'Admin', N'123', N'Admin', 0)
INSERT [dbo].[Login] ([Username], [Password], [UserType], [Id]) VALUES (N'kiranraj3132@gmail.com', N'145', N'Band', 1001)
INSERT [dbo].[Login] ([Username], [Password], [UserType], [Id]) VALUES (N'mmm', N'789', N'Band', 1002)
/****** Object:  Table [dbo].[BandReg]    Script Date: 03/05/2019 15:27:29 ******/
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
	[Band_type] [varchar](50) NOT NULL,
	[Number_of_Members] [numeric](18, 0) NULL,
	[Status] [varchar](50) NULL,
	[Logo] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[BandReg] ([Band_ID], [Band_Name], [Band_Mail_ID], [License], [Telephone], [Per_Address], [Com_Address], [City], [State], [Postal_Code], [Country], [Managers_Name], [Managers_Phone], [Type_of_Music], [Band_type], [Number_of_Members], [Status], [Logo]) VALUES (1001, N'Foxglove', N'kiranraj3132@gmail.com', N'60664586', CAST(9633727992 AS Numeric(18, 0)), N'Chakkungal Puthuppambu Madappally P.O Muthalapra Changanacherry Kottayam', N'Chakkungal Puthuppambu Madappally P.O Muthalapra Changanacherry Kottayam', N'Mammoodu', N'Kerala', CAST(686546 AS Numeric(18, 0)), N'India', N'kiran', CAST(332145697 AS Numeric(18, 0)), N'Rock', N'Orchestra', CAST(18 AS Numeric(18, 0)), N'APPROVED', NULL)
INSERT [dbo].[BandReg] ([Band_ID], [Band_Name], [Band_Mail_ID], [License], [Telephone], [Per_Address], [Com_Address], [City], [State], [Postal_Code], [Country], [Managers_Name], [Managers_Phone], [Type_of_Music], [Band_type], [Number_of_Members], [Status], [Logo]) VALUES (1002, N'qwerty', N'lo9y77', N'1452', CAST(666666666 AS Numeric(18, 0)), N'ddddd', N'ddd', N'hkj', N'jgkjgk', CAST(785533333 AS Numeric(18, 0)), N'india', N'ki', CAST(4569785 AS Numeric(18, 0)), N'Metal', N'Orchestra', CAST(14 AS Numeric(18, 0)), N'Photos/580b57fcd9996e24bc43c543.png', N'Pending')
/****** Object:  Table [dbo].[BandMedia]    Script Date: 03/05/2019 15:27:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BandMedia](
	[Band_Id] [int] NULL,
	[Band_Fname] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[BandMedia] ([Band_Id], [Band_Fname]) VALUES (1002, N'pics/580b57fcd9996e24bc43c543.png')
