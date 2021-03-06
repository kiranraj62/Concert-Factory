USE [FoxGloveDb]
GO
/****** Object:  Table [dbo].[UserReviews]    Script Date: 03/07/2019 15:45:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UserReviews](
	[User_Id] [int] NULL,
	[Reviews] [varchar](500) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UserReg]    Script Date: 03/07/2019 15:45:27 ******/
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
INSERT [dbo].[UserReg] ([User_ID], [First_Name], [Middle_name], [Last_name], [Per_address], [Com_address], [City], [District], [Pincode], [Gender], [Mobile], [Telephone], [Email], [ID_Proof], [Status]) VALUES (5002, N'Kiran', N'', N'Raj       ', N'qwerty', N'1233w', N'kottayam', N'Kottayam', CAST(451236 AS Numeric(18, 0)), N'Male', CAST(7895655489 AS Numeric(18, 0)), CAST(6045126111 AS Numeric(18, 0)), N'kr@gmail.com', N'Photos/Screenshot (52).png', N'APPROVED')
INSERT [dbo].[UserReg] ([User_ID], [First_Name], [Middle_name], [Last_name], [Per_address], [Com_address], [City], [District], [Pincode], [Gender], [Mobile], [Telephone], [Email], [ID_Proof], [Status]) VALUES (5001, N'Hari', N'Krishnan', N'K B       ', N'har', N'hariiiiiii', N'thiruvalla', N'Pathanamthitta', CAST(784512 AS Numeric(18, 0)), N'Male', CAST(9048828451 AS Numeric(18, 0)), CAST(451269866 AS Numeric(18, 0)), N'hk@gmail.com', N'Photos/FB_IMG_1530455777937.jpg', N'APPROVED')
INSERT [dbo].[UserReg] ([User_ID], [First_Name], [Middle_name], [Last_name], [Per_address], [Com_address], [City], [District], [Pincode], [Gender], [Mobile], [Telephone], [Email], [ID_Proof], [Status]) VALUES (5003, N'gishnu ', N'', N'r         ', N'fkgyglhhfiulkbjgdfghj', N'ssxXa', N'Thiruvalla', N'Pathanamthitta', CAST(689110 AS Numeric(18, 0)), N'Male', CAST(7567475745 AS Numeric(18, 0)), CAST(7567475745 AS Numeric(18, 0)), N'grn@gmail.com', N'Photos/IMG_20171129_193749.jpg', N'APPROVED')
/****** Object:  Table [dbo].[Login]    Script Date: 03/07/2019 15:45:27 ******/
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
INSERT [dbo].[Login] ([Username], [Password], [UserType], [Id]) VALUES (N'Admin', N'123', N'Admin', 0)
INSERT [dbo].[Login] ([Username], [Password], [UserType], [Id]) VALUES (N'kr@gmail.com', N'kir', N'User', 5002)
INSERT [dbo].[Login] ([Username], [Password], [UserType], [Id]) VALUES (N'kiranraj3132@gmail.com', N'963', N'Band', 1003)
INSERT [dbo].[Login] ([Username], [Password], [UserType], [Id]) VALUES (N'agamband@gmail.com', N'56', N'Band', 1004)
INSERT [dbo].[Login] ([Username], [Password], [UserType], [Id]) VALUES (N'hk@gmail.com', N'DON', N'User', 5001)
INSERT [dbo].[Login] ([Username], [Password], [UserType], [Id]) VALUES (N'grn@gmail.com', N'1234', N'User', 5003)
/****** Object:  Table [dbo].[Booking_Details]    Script Date: 03/07/2019 15:45:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Booking_Details](
	[User_ID] [int] NULL,
	[Booking_ID] [int] NULL,
	[Event_Type] [varchar](50) NULL,
	[Event_Date] [varchar](50) NULL,
	[Band_Name] [varchar](50) NULL,
	[Venue_Address] [varchar](150) NULL,
	[Name_of_show] [varchar](50) NULL,
	[Full_Name] [varchar](50) NULL,
	[ContactNO] [numeric](18, 0) NULL,
	[Email] [varchar](50) NULL,
	[Place] [varchar](50) NULL,
	[Duration] [varchar](50) NULL,
	[Transportation_Cost] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BandReg]    Script Date: 03/07/2019 15:45:27 ******/
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
	[RATE] [numeric](18, 0) NULL,
	[Description] [varchar](500) NULL,
	[Logo] [varchar](50) NULL,
	[Status] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[BandReg] ([Band_ID], [Band_Name], [Band_Mail_ID], [License], [Telephone], [Per_Address], [Com_Address], [City], [State], [Postal_Code], [Country], [Managers_Name], [Managers_Phone], [Type_of_Music], [Band_type], [Number_of_Members], [RATE], [Description], [Logo], [Status]) VALUES (1002, N'Agam', N'agamband@gmail.com', N'451236', CAST(487956233 AS Numeric(18, 0)), N'Agam the band', N'Agam', N'trivandrum', N'Kerala', CAST(451236 AS Numeric(18, 0)), N'india', N'Harish Sivaramakrishnan', CAST(7845698987 AS Numeric(18, 0)), N'Classical Rock', N'Orchestra', CAST(11 AS Numeric(18, 0)), NULL, NULL, N'Photos/images.jpg', N'APPROVED')
INSERT [dbo].[BandReg] ([Band_ID], [Band_Name], [Band_Mail_ID], [License], [Telephone], [Per_Address], [Com_Address], [City], [State], [Postal_Code], [Country], [Managers_Name], [Managers_Phone], [Type_of_Music], [Band_type], [Number_of_Members], [RATE], [Description], [Logo], [Status]) VALUES (1003, N'Foxglove', N'kiranraj3132@gmail.com', N'123', CAST(9633727995 AS Numeric(18, 0)), N'Chakkungal Puthuppambu Madappally P.O Muthalapra Changanacherry Kottayam', N'Chakkungal Puthuppambu Madappally P.O Muthalapra Changanacherry Kottayam', N'Mammoodu', N'Kerala', CAST(686546 AS Numeric(18, 0)), N'India', N'kiran', CAST(9633727992 AS Numeric(18, 0)), N'Rock', N'Group', CAST(10 AS Numeric(18, 0)), CAST(170000 AS Numeric(18, 0)), N'Thaikkudam Bridge is a Kerala-based music band, founded and formed in 2013 .The band first became famous through the musical show Music Mojo, which is telecast on Kappa TV and their own composition "Fish Rock", which became popular through social networking sites and YouTube. The band does not focus on any specific genre and has composed in many different genres.', N'Photos/ew.jpg', N'APPROVED')
/****** Object:  Table [dbo].[BandMedia]    Script Date: 03/07/2019 15:45:27 ******/
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
INSERT [dbo].[BandMedia] ([Band_Id], [Band_Fname]) VALUES (1001, N'pics/guitar-pedalboarddf.jpg')
