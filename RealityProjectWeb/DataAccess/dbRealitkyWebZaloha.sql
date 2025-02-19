
USE dbReality
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 17.01.2024 19:36:25 ******/
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
/****** Object:  Table [dbo].[tbAdvertisementPhotos]    Script Date: 17.01.2024 19:36:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbAdvertisementPhotos](
	[AdvertisementsId] [uniqueidentifier] NOT NULL,
	[GalleryId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_tbAdvertisementPhotos] PRIMARY KEY CLUSTERED 
(
	[AdvertisementsId] ASC,
	[GalleryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbAdvertisements]    Script Date: 17.01.2024 19:36:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbAdvertisements](
	[Id] [uniqueidentifier] NOT NULL,
	[HomeType] [int] NOT NULL,
	[IsLuxury] [bit] NOT NULL,
	[InsideSize] [float] NOT NULL,
	[OutsideSize] [float] NULL,
	[Price] [float] NOT NULL,
	[Electricity] [int] NOT NULL,
	[Content] [nvarchar](max) NULL,
	[IdPhoto] [uniqueidentifier] NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[AddressId] [uniqueidentifier] NOT NULL,
	[ViewsCount] [int] NOT NULL,
 CONSTRAINT [PK_tbAdvertisements] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbCities]    Script Date: 17.01.2024 19:36:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbCities](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[PostCode] [nvarchar](6) NULL,
	[DistrictId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_tbCities] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbDistrict]    Script Date: 17.01.2024 19:36:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbDistrict](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Kraj] [int] NOT NULL,
 CONSTRAINT [PK_tbDistrict] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbGroupParameters]    Script Date: 17.01.2024 19:36:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbGroupParameters](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_tbGroupParameters] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbLocation]    Script Date: 17.01.2024 19:36:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbLocation](
	[Id] [uniqueidentifier] NOT NULL,
	[Street] [nvarchar](max) NOT NULL,
	[Floor] [int] NOT NULL,
	[CityId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_tbLocation] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbParameterAdvertisement]    Script Date: 17.01.2024 19:36:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbParameterAdvertisement](
	[AdvertisementsId] [uniqueidentifier] NOT NULL,
	[ParametersId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_tbParameterAdvertisement] PRIMARY KEY CLUSTERED 
(
	[AdvertisementsId] ASC,
	[ParametersId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbParameters]    Script Date: 17.01.2024 19:36:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbParameters](
	[Id] [uniqueidentifier] NOT NULL,
	[Value] [nvarchar](max) NOT NULL,
	[GroupId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_tbParameters] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbPhotos]    Script Date: 17.01.2024 19:36:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbPhotos](
	[Id] [uniqueidentifier] NOT NULL,
	[Type] [int] NOT NULL,
	[Size] [float] NULL,
	[AdvertisementId] [uniqueidentifier] NULL,
	[UserId] [uniqueidentifier] NULL,
 CONSTRAINT [PK_tbPhotos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbRequest]    Script Date: 17.01.2024 19:36:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbRequest](
	[Id] [uniqueidentifier] NOT NULL,
	[UserId] [uniqueidentifier] NULL,
	[AdvertisementId] [uniqueidentifier] NOT NULL,
	[Content] [nvarchar](max) NOT NULL,
	[Email] [nvarchar](max) NOT NULL,
	[Phone] [nvarchar](max) NOT NULL,
	[CreateTime] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_tbRequest] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbRoles]    Script Date: 17.01.2024 19:36:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbRoles](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[IsValid] [bit] NOT NULL,
 CONSTRAINT [PK_tbRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbUser]    Script Date: 17.01.2024 19:36:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbUser](
	[Id] [uniqueidentifier] NOT NULL,
	[Username] [nvarchar](max) NOT NULL,
	[FirstName] [nvarchar](max) NOT NULL,
	[LastName] [nvarchar](max) NOT NULL,
	[Password] [nvarchar](max) NOT NULL,
	[Email] [nvarchar](max) NOT NULL,
	[Phone] [nvarchar](max) NULL,
	[IsEmailConfirmed] [bit] NOT NULL,
	[IsBlocked] [bit] NOT NULL,
	[RoleId] [uniqueidentifier] NOT NULL,
	[IsValid] [bit] NOT NULL,
	[ProfilePicId] [uniqueidentifier] NULL,
 CONSTRAINT [PK_tbUser] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231202232256_Initial', N'6.0.25')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231206152930_AddUserRoles', N'6.0.25')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231206161112_AddRequest', N'6.0.25')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231210171029_ProfilePicturesAndPhotoType', N'6.0.25')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231210174013_removedPhotoNameAndPath', N'6.0.25')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231211103201_GroupsAndParameters', N'6.0.25')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231214161452_AddLocations', N'6.0.25')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231214165509_postCodeNull', N'6.0.25')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231214171530_addViewsCount', N'6.0.25')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240102152618_addCreateDatetimeToRequests', N'6.0.25')
GO
INSERT [dbo].[tbAdvertisementPhotos] ([AdvertisementsId], [GalleryId]) VALUES (N'e51e3f95-241f-4868-ae77-3832aae6dfde', N'dafa736b-5b77-4177-aa69-1510633d2cf3')
INSERT [dbo].[tbAdvertisementPhotos] ([AdvertisementsId], [GalleryId]) VALUES (N'97635060-ed88-4f0d-b725-b469b2723e35', N'ad1bafef-5d25-46e1-a877-1648aed3072b')
INSERT [dbo].[tbAdvertisementPhotos] ([AdvertisementsId], [GalleryId]) VALUES (N'1d43aad0-f939-4ed3-8273-990eca5ec395', N'0f3dde33-c2d5-44df-8e21-1e7eb6ed6710')
INSERT [dbo].[tbAdvertisementPhotos] ([AdvertisementsId], [GalleryId]) VALUES (N'e51e3f95-241f-4868-ae77-3832aae6dfde', N'ff609796-7249-403c-87b2-26d347f26da8')
INSERT [dbo].[tbAdvertisementPhotos] ([AdvertisementsId], [GalleryId]) VALUES (N'cda64343-0dbd-4c5b-b09c-e9a7a4cca614', N'5a113924-ff0e-45a5-8812-2eb0298bd433')
INSERT [dbo].[tbAdvertisementPhotos] ([AdvertisementsId], [GalleryId]) VALUES (N'e51e3f95-241f-4868-ae77-3832aae6dfde', N'45bb334c-1597-4c7b-8295-37ba6df08c16')
INSERT [dbo].[tbAdvertisementPhotos] ([AdvertisementsId], [GalleryId]) VALUES (N'465aa1ff-c292-4e35-9feb-a44b0d03249f', N'2f86360c-a010-4684-a0f7-421fc7a2f07c')
INSERT [dbo].[tbAdvertisementPhotos] ([AdvertisementsId], [GalleryId]) VALUES (N'cda64343-0dbd-4c5b-b09c-e9a7a4cca614', N'c889216e-13c5-4760-a37f-46e455e6120c')
INSERT [dbo].[tbAdvertisementPhotos] ([AdvertisementsId], [GalleryId]) VALUES (N'465aa1ff-c292-4e35-9feb-a44b0d03249f', N'8ccf2df5-9bd7-4ac3-b112-49865d0135e3')
INSERT [dbo].[tbAdvertisementPhotos] ([AdvertisementsId], [GalleryId]) VALUES (N'5e1284d9-5f0d-448b-a0fc-739a63bc2bfd', N'59b62977-6aef-4516-8df2-4b862fdffed9')
INSERT [dbo].[tbAdvertisementPhotos] ([AdvertisementsId], [GalleryId]) VALUES (N'e51e3f95-241f-4868-ae77-3832aae6dfde', N'fd3c6c78-0f7d-4801-a49b-5d40e15cf4b5')
INSERT [dbo].[tbAdvertisementPhotos] ([AdvertisementsId], [GalleryId]) VALUES (N'c56cc180-3e81-4834-a4da-b61108f9ec5a', N'641e2812-af9f-4597-b37d-5e0647cd836b')
INSERT [dbo].[tbAdvertisementPhotos] ([AdvertisementsId], [GalleryId]) VALUES (N'cda64343-0dbd-4c5b-b09c-e9a7a4cca614', N'a70c64a6-b45f-4ba7-b6b8-6e6492003936')
INSERT [dbo].[tbAdvertisementPhotos] ([AdvertisementsId], [GalleryId]) VALUES (N'1d43aad0-f939-4ed3-8273-990eca5ec395', N'413962d6-d8f3-4bec-a1fc-7396d94a1381')
INSERT [dbo].[tbAdvertisementPhotos] ([AdvertisementsId], [GalleryId]) VALUES (N'cda64343-0dbd-4c5b-b09c-e9a7a4cca614', N'afc08d6e-8717-4dcf-bebe-74b9eccc3e03')
INSERT [dbo].[tbAdvertisementPhotos] ([AdvertisementsId], [GalleryId]) VALUES (N'91296794-5937-4ab6-baa6-8f109ffc0be6', N'99edf33a-db0d-497b-b91f-7520415f9b15')
INSERT [dbo].[tbAdvertisementPhotos] ([AdvertisementsId], [GalleryId]) VALUES (N'cda64343-0dbd-4c5b-b09c-e9a7a4cca614', N'97ced2e0-e86f-441b-9d9f-7a0fe3d0ee4a')
INSERT [dbo].[tbAdvertisementPhotos] ([AdvertisementsId], [GalleryId]) VALUES (N'97635060-ed88-4f0d-b725-b469b2723e35', N'eb4fad9e-da32-4e7f-b373-8a99b6910d09')
INSERT [dbo].[tbAdvertisementPhotos] ([AdvertisementsId], [GalleryId]) VALUES (N'5e1284d9-5f0d-448b-a0fc-739a63bc2bfd', N'6a354203-0369-444e-b10d-9a10757773a3')
INSERT [dbo].[tbAdvertisementPhotos] ([AdvertisementsId], [GalleryId]) VALUES (N'97635060-ed88-4f0d-b725-b469b2723e35', N'2780a92f-1edf-412e-b4f3-a46c61af66a0')
INSERT [dbo].[tbAdvertisementPhotos] ([AdvertisementsId], [GalleryId]) VALUES (N'91296794-5937-4ab6-baa6-8f109ffc0be6', N'7a2e6f88-a212-4e24-afe1-abac3ceeae1f')
INSERT [dbo].[tbAdvertisementPhotos] ([AdvertisementsId], [GalleryId]) VALUES (N'c56cc180-3e81-4834-a4da-b61108f9ec5a', N'5f5dd868-a2e2-4833-97e1-b87204d25d56')
INSERT [dbo].[tbAdvertisementPhotos] ([AdvertisementsId], [GalleryId]) VALUES (N'c56cc180-3e81-4834-a4da-b61108f9ec5a', N'48834cc0-fa2c-4b53-a5ea-bab9cf27a972')
INSERT [dbo].[tbAdvertisementPhotos] ([AdvertisementsId], [GalleryId]) VALUES (N'1d43aad0-f939-4ed3-8273-990eca5ec395', N'5666f8e2-eb6d-4e35-9584-be832ff9baa7')
INSERT [dbo].[tbAdvertisementPhotos] ([AdvertisementsId], [GalleryId]) VALUES (N'1d43aad0-f939-4ed3-8273-990eca5ec395', N'914e728d-a6f8-4e88-a629-c7a31c9fb7b0')
INSERT [dbo].[tbAdvertisementPhotos] ([AdvertisementsId], [GalleryId]) VALUES (N'1d43aad0-f939-4ed3-8273-990eca5ec395', N'427f654c-03eb-4900-9e2c-c7ef027ffbcf')
INSERT [dbo].[tbAdvertisementPhotos] ([AdvertisementsId], [GalleryId]) VALUES (N'5e1284d9-5f0d-448b-a0fc-739a63bc2bfd', N'207aea21-4846-42c1-bbd3-cad87a55fada')
INSERT [dbo].[tbAdvertisementPhotos] ([AdvertisementsId], [GalleryId]) VALUES (N'97635060-ed88-4f0d-b725-b469b2723e35', N'9f7b934d-f1d4-446d-b737-cc5851b45b3a')
INSERT [dbo].[tbAdvertisementPhotos] ([AdvertisementsId], [GalleryId]) VALUES (N'91296794-5937-4ab6-baa6-8f109ffc0be6', N'cba25a0e-2a9d-4e27-8a91-ddc81b138343')
INSERT [dbo].[tbAdvertisementPhotos] ([AdvertisementsId], [GalleryId]) VALUES (N'c56cc180-3e81-4834-a4da-b61108f9ec5a', N'1de5e615-db50-4440-87b2-dff067735411')
INSERT [dbo].[tbAdvertisementPhotos] ([AdvertisementsId], [GalleryId]) VALUES (N'5e1284d9-5f0d-448b-a0fc-739a63bc2bfd', N'8c64acb1-5921-4caa-bc0c-ec74eee272eb')
INSERT [dbo].[tbAdvertisementPhotos] ([AdvertisementsId], [GalleryId]) VALUES (N'e51e3f95-241f-4868-ae77-3832aae6dfde', N'5427226b-060b-49dc-a97c-ee72906fc23c')
INSERT [dbo].[tbAdvertisementPhotos] ([AdvertisementsId], [GalleryId]) VALUES (N'5e1284d9-5f0d-448b-a0fc-739a63bc2bfd', N'38c3ed1d-c4f9-4417-8431-efa1bf688b09')
INSERT [dbo].[tbAdvertisementPhotos] ([AdvertisementsId], [GalleryId]) VALUES (N'97635060-ed88-4f0d-b725-b469b2723e35', N'f7fe7adf-8734-4f17-bbcf-efc9f8e681f2')
INSERT [dbo].[tbAdvertisementPhotos] ([AdvertisementsId], [GalleryId]) VALUES (N'465aa1ff-c292-4e35-9feb-a44b0d03249f', N'b7e9be27-ffeb-446d-9cf2-efd3014c5742')
INSERT [dbo].[tbAdvertisementPhotos] ([AdvertisementsId], [GalleryId]) VALUES (N'c56cc180-3e81-4834-a4da-b61108f9ec5a', N'34ccf911-8853-4701-a5ab-fcb51eb1bc9f')
GO
INSERT [dbo].[tbAdvertisements] ([Id], [HomeType], [IsLuxury], [InsideSize], [OutsideSize], [Price], [Electricity], [Content], [IdPhoto], [UserId], [AddressId], [ViewsCount]) VALUES (N'e51e3f95-241f-4868-ae77-3832aae6dfde', 1, 1, 250, 15, 250000, 0, N'Stojí na konci útulné uličky, omývaným světlem slunce. Jeho modrá barva září jako záblesk naděje, láká každého kolemjdoucího k odpočinku a klidu. Okna zdobí kytky a z každého z nich se line teplo a pohoda.', NULL, N'b8af32f5-fa32-43bd-8de4-7cfeaf953330', N'54c0c6c6-f3d4-4082-808b-08dc109af596', 0)
INSERT [dbo].[tbAdvertisements] ([Id], [HomeType], [IsLuxury], [InsideSize], [OutsideSize], [Price], [Electricity], [Content], [IdPhoto], [UserId], [AddressId], [ViewsCount]) VALUES (N'5e1284d9-5f0d-448b-a0fc-739a63bc2bfd', 0, 1, 115, 0, 150000, 1, N'Stavba vznešená jako sen, s pozlacenými detaily na každém rohu. Jeho terasy nabízejí výhled na nekonečné moře a okolní krajinu, zatímco každá místnost září krásou a elegancí. Zlatý palác je spojen s dávnou historií a přesto září čerstvostí.', NULL, N'b8af32f5-fa32-43bd-8de4-7cfeaf953330', N'2fcc2294-0e3b-49e4-8089-08dc109af596', 7)
INSERT [dbo].[tbAdvertisements] ([Id], [HomeType], [IsLuxury], [InsideSize], [OutsideSize], [Price], [Electricity], [Content], [IdPhoto], [UserId], [AddressId], [ViewsCount]) VALUES (N'91296794-5937-4ab6-baa6-8f109ffc0be6', 2, 0, 15, 150, 150000, 3, N'Skrytá mezi stromy, tato chaloupka z kamene a dřeva působí jako brána do jiného světa. Každá místnost vypadá jako vytržená z pohádky, s krbem, který vyzařuje teplo a pohodu do celého prostoru.', NULL, N'b8af32f5-fa32-43bd-8de4-7cfeaf953330', N'4c36af52-e317-4a3e-d96c-08dc0ba4e944', 8)
INSERT [dbo].[tbAdvertisements] ([Id], [HomeType], [IsLuxury], [InsideSize], [OutsideSize], [Price], [Electricity], [Content], [IdPhoto], [UserId], [AddressId], [ViewsCount]) VALUES (N'1d43aad0-f939-4ed3-8273-990eca5ec395', 0, 0, 150, 0, 15000, 0, N'Září moderností a inovací. Jeho skleněná střecha propouští světlo do každého koutu, zatímco minimalistický design přináší do života harmonii a jednoduchost.', NULL, N'b8af32f5-fa32-43bd-8de4-7cfeaf953330', N'486c4b61-be57-41bc-8086-08dc109af596', 0)
INSERT [dbo].[tbAdvertisements] ([Id], [HomeType], [IsLuxury], [InsideSize], [OutsideSize], [Price], [Electricity], [Content], [IdPhoto], [UserId], [AddressId], [ViewsCount]) VALUES (N'465aa1ff-c292-4e35-9feb-a44b0d03249f', 0, 0, 51, 21, 10000, 2, N'Tato vila z doby koloniální expanze zaujme svojí elegancí a exotickou krásou. Okolní zahrada je plná pestrých květin a palmových stromů, což dává domu vzduch dobrodružství a relaxace.', NULL, N'a84ca855-5c45-44fe-af79-08dbfa577aff', N'3e87f9a2-ce21-4125-b1c2-4d3cad028be6', 6)
INSERT [dbo].[tbAdvertisements] ([Id], [HomeType], [IsLuxury], [InsideSize], [OutsideSize], [Price], [Electricity], [Content], [IdPhoto], [UserId], [AddressId], [ViewsCount]) VALUES (N'97635060-ed88-4f0d-b725-b469b2723e35', 2, 0, 85, 15, 10000, 2, N'Malý, ale plný šarmu, tento domeček stojí na břehu jezera a nabízí výhled na klidnou hladinu vody. Jeho prosté vybavení však vyzařuje pohodu a uklidňující atmosféru.', NULL, N'b8af32f5-fa32-43bd-8de4-7cfeaf953330', N'495271e8-7e68-4c22-8087-08dc109af596', 6)
INSERT [dbo].[tbAdvertisements] ([Id], [HomeType], [IsLuxury], [InsideSize], [OutsideSize], [Price], [Electricity], [Content], [IdPhoto], [UserId], [AddressId], [ViewsCount]) VALUES (N'c56cc180-3e81-4834-a4da-b61108f9ec5a', 2, 1, 85, 15, 199000, 4, N'Nachází se na vrcholu mrakodrapu a nabízí úžasný výhled na město pod sebou. Jeho luxusní vybavení a prosklené stěny dodávají prostoru dynamiku a eleganci.', NULL, N'b8af32f5-fa32-43bd-8de4-7cfeaf953330', N'c71f72ec-2221-4dab-808a-08dc109af596', 0)
INSERT [dbo].[tbAdvertisements] ([Id], [HomeType], [IsLuxury], [InsideSize], [OutsideSize], [Price], [Electricity], [Content], [IdPhoto], [UserId], [AddressId], [ViewsCount]) VALUES (N'cda64343-0dbd-4c5b-b09c-e9a7a4cca614', 1, 0, 89, 15, 20000, 1, N'Střídmost a harmonie oživují každý kout této chaty. Zahrada s bonsaji a koi rybníkem dodává domu klid a rovnováhu, zatímco tatami podlahy a minimalistický nábytek vtahují hosty do ducha Japonska.', NULL, N'b8af32f5-fa32-43bd-8de4-7cfeaf953330', N'9d282dc3-b888-4760-8088-08dc109af596', 0)
GO
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'4601b292-786e-4acc-8bcb-002ac67710bc', N'Kardašova Řečice', NULL, N'509d8d58-3a8a-43da-8a4c-4ab9771c1639')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'23c617aa-346b-41c0-baf4-00d5e4c34868', N'Kasejovice', NULL, N'ed79ca87-17be-4818-b36a-33edc2c5792d')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'96e0af9c-937e-4118-8d25-00e821db1cfb', N'Polná', NULL, N'b8cd8008-82ba-46db-97cc-5ab1c1d8dc9b')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'7175fea4-3a63-4287-a229-01aa98818780', N'Kynšperk nad Ohří', NULL, N'33f2561d-5b92-425f-8501-c45e7e614db9')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'966d9bb7-13ee-4dc4-b30f-01c0790c7290', N'Libčice nad Vltavou', NULL, N'dba48ff1-aa60-4f29-9d15-5cb55c445ae2')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'40c62816-6df6-42da-8a99-023bc6aa7a7a', N'Bílovec', NULL, N'e512730f-4139-48d1-8e75-2d083435564a')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'efd927ae-6b45-4168-a62c-035b8d79befd', N'Kladruby', NULL, N'3c543323-9c04-4cc7-9cbf-9ce2f651fe23')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'8e4e3b3d-2e68-45ae-9a29-03b53409afab', N'Ledeč nad Sázavou', NULL, N'5b092bf6-95c3-4080-b559-90d49a619e51')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'801eb4c8-8bdd-40d3-98c0-03f1ce8a244b', N'Frýdlant', NULL, N'7d97991f-08bb-42ec-a8ad-2d5ce3c5a49f')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'dcd97857-3bae-4929-9173-049429714b36', N'Štramberk', NULL, N'e512730f-4139-48d1-8e75-2d083435564a')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'c49b6aad-e21d-4946-85e0-05090e5fc604', N'Kunštát', NULL, N'c6aace4f-21c5-441e-b8ef-41fef4773be5')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'10678cda-ce39-4c1f-b486-054b28582843', N'Vyšší Brod', NULL, N'f1bdb9c5-8532-46d6-b5e7-57b11e4e4d4e')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'2e123e51-4aaa-49bd-8d1e-05d44ff8dfe6', N'Litomyšl', NULL, N'8e2474e4-419d-40d8-af89-a6c5755ee68d')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'71fc9289-3533-4f94-bc75-05d6726735bc', N'Špindlerův Mlýn', NULL, N'04ce93c6-79f6-4dc7-9046-118050f1f52c')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'98b34eee-d424-42a7-afd0-05e1ff993d34', N'Sezemice', NULL, N'a8741af1-f76a-44e9-aa19-cb6c6e3bf6f9')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'96ac94f5-10d2-425e-a804-06119f593e13', N'Osek', NULL, N'4d72c278-4cde-4ac6-8765-8463a0c5f9b6')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'cdf09412-1aa1-471b-a772-061310da4903', N'Dobříš', NULL, N'a46b2ef5-f009-4e1c-a6ef-ea9a91667c24')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'7d04869f-6566-45f2-9712-0697089b6fb1', N'Sobotka', NULL, N'b3516507-3afd-434f-ba8e-dbd37aa110fa')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'2d899ead-5533-4c6a-bb80-06f0c9c64118', N'Studénka', NULL, N'e512730f-4139-48d1-8e75-2d083435564a')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'd11cfb32-3485-4aaa-88e6-072d8010b250', N'Týn nad Vltavou', NULL, N'92256402-4724-4305-a6ca-4df35086d7ac')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'b4c0bb7b-ef68-4fa2-8c79-077fe7d62218', N'Dvůr Králové nad Labem', NULL, N'04ce93c6-79f6-4dc7-9046-118050f1f52c')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'affa545f-00b8-4d94-a395-080561947740', N'Lomnice nad Lužnicí', NULL, N'509d8d58-3a8a-43da-8a4c-4ab9771c1639')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'cbee0ad7-5d6c-4b7b-aee4-0893f26a088a', N'Horšovský Týn', NULL, N'f6fef133-cc42-44c4-b65b-7e42c14fab88')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'584ea2f8-76c3-42cc-8b36-08ec9f2701c9', N'Hradec Králové', NULL, N'6ae77e4e-0da2-43a8-b615-bc0f68cc0ce2')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'e0d44ee2-20bf-4320-80bf-0962ac270e09', N'Zlaté Hory', NULL, N'3dba0bd0-f3fb-4b6d-bf6c-c9c4705b8c21')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'ae9e81e8-ee1e-4888-8888-0a11dd80549c', N'Týnec nad Sázavou', NULL, N'8867ebfa-5b4b-4b1d-9244-3feff5cccc1e')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'663a9481-d9ab-46e3-9cab-0a4d7e4ba690', N'Mýto', NULL, N'0f456bc2-4cd0-44ee-abce-281bf830a79f')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'695067c4-a03b-42cd-a335-0a7a0c308f85', N'Nové Město nad Metují', NULL, N'3c5e757b-4b01-4fc6-86bf-828167b202ff')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'0c96d1e2-87c5-4ba7-a233-0a9005f74ef6', N'Jablonec nad Nisou', NULL, N'943b2ee6-0639-4e3f-81e4-5f14179c5c50')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'95386973-544c-4723-897c-0b1be5c515fb', N'Hostivice', NULL, N'dba48ff1-aa60-4f29-9d15-5cb55c445ae2')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'e1209c97-1a65-493e-b3d2-0b93506639bb', N'Štětí', NULL, N'e5d9ca34-c228-407d-b20a-b4f94b5ac5c5')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'5079cb9f-9ca5-4e83-9089-0bcfa3c6b333', N'Pohořelice', NULL, N'f03d7a01-992e-4491-9d40-a389de23a24b')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'2f46ee38-7a10-40d3-bfbf-0bd49f9c89ea', N'Mladá Vožice', NULL, N'96c4a666-896b-4993-bb06-208983f59146')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'2b4c2ea1-abf8-43ee-a29e-0c1635a9be2b', N'Mšeno', NULL, N'51dcf722-92c9-4b3d-aa22-a5908075abb7')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'07f54f5d-7928-4eaa-96f5-0df1c6cd3b7f', N'Velešín', NULL, N'f1bdb9c5-8532-46d6-b5e7-57b11e4e4d4e')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'9aa44a01-6be5-4f7b-b0f1-0e07f18cc94d', N'Nový Knín', NULL, N'a46b2ef5-f009-4e1c-a6ef-ea9a91667c24')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'19470c89-005d-4f55-9d8d-0e0ac57c07c8', N'Blšany', NULL, N'5789d178-5a9d-48ca-9c74-59c3efce532f')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'440e129a-84e4-4066-b8ec-0e604e5946ed', N'Podivín', NULL, N'50c65cec-c13b-4551-9c93-7c93d7495ca5')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'73788f93-5c6d-40ee-9a9d-0f384c6df6bf', N'Všeruby', NULL, N'9774164e-66ae-4227-89e7-8e304ff26a15')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'00844445-9177-4e74-8767-0f7a95f3679b', N'Nejdek', NULL, N'9b162c45-856e-4130-8637-d52d50d29728')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'22b193f7-ea8f-4c53-9ec4-1004fca3e220', N'Nýrsko', NULL, N'e08b64d8-6b1c-4f53-a762-e1afd5ccb66b')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'1a9179ff-4bea-4769-ac05-10e81e913e59', N'Kladno', NULL, N'cb9c4c5d-561b-4d47-a8b7-bf0cacc3a7d6')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'905656e9-7706-4da7-8f87-10fb4122163c', N'Brandýs nad Labem-Stará Boleslav', NULL, N'a7d4eac5-d033-4c98-9d70-532d49c2c06f')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'1447af06-3fef-4b52-85ac-117b902db16a', N'Spálené Poříčí', NULL, N'ed79ca87-17be-4818-b36a-33edc2c5792d')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'b9e1cc3e-61b9-4023-8f35-118cfdeb14dc', N'Vratimov', NULL, N'971c5360-1bb0-4ce2-80c3-2d6901e72b15')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'a5660baa-72f2-4d2a-8bc7-11aa45d71d1b', N'Krásná Hora nad Vltavou', NULL, N'a46b2ef5-f009-4e1c-a6ef-ea9a91667c24')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'6d4236ca-6907-469f-9cc0-11b381d0a176', N'Horažďovice', NULL, N'e08b64d8-6b1c-4f53-a762-e1afd5ccb66b')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'9a396a21-e938-4620-a60b-11f961a3fb0c', N'Jemnice', NULL, N'93bf7742-8fc1-4e68-b623-ac2d660e3317')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'1792c243-f68b-4cd3-9362-12c9c393cd9b', N'Kravaře', NULL, N'e1f5cdb2-57f2-4ef1-bd18-089723df66ec')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'61f01e4d-bad6-4799-85f1-12f34c854f2c', N'Šluknov', NULL, N'fe000b9d-1fde-4e3c-839e-c59fd3c30756')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'c13bdcc4-ab6c-4fd3-8a63-136fd51de753', N'Rumburk', NULL, N'fe000b9d-1fde-4e3c-839e-c59fd3c30756')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'65e43634-91b7-4539-ba5f-13c5e61205be', N'Dubňany', NULL, N'5aaf2c45-7ef2-45db-97e8-dc65283f9e99')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'cce41a63-23fa-4660-98eb-13f720b648c1', N'Borovany', NULL, N'92256402-4724-4305-a6ca-4df35086d7ac')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'214473f5-7457-4c82-aee9-1568efae4c63', N'Bruntál', NULL, N'3a287cdd-398e-4c31-bebc-1bacc7d96d47')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'96953a90-0ba4-4b92-bc01-169b8fc313be', N'Velká Bíteš', NULL, N'e8dd2116-5fe8-4f2f-80ee-ed7cac534588')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'476adee8-ee35-469e-99f5-16afeff6ae0f', N'Žulová', NULL, N'3dba0bd0-f3fb-4b6d-bf6c-c9c4705b8c21')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'3efc66f6-046e-473e-b7fc-172de3e50b11', N'Hořice', NULL, N'b3516507-3afd-434f-ba8e-dbd37aa110fa')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'13e86ac7-f845-44c2-b9fe-17597c6dab16', N'Kuřim', NULL, N'f03d7a01-992e-4491-9d40-a389de23a24b')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'08bbbc61-bc30-46fb-9415-17b6c885e557', N'Františkovy Lázně', NULL, N'7a5f4056-85a6-4cb8-bbca-a65ef045d2e6')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'63527716-7a5e-45a6-a6a0-181b6e974091', N'Opočno', NULL, N'6139302e-762a-491f-837b-75c3ace49df4')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'c3e2052f-a74f-409d-994c-1831079d53d0', N'Velká Bystřice', NULL, N'f5fca20e-fb1e-4f6e-8a0f-159633bc97e2')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'e25f51a0-33e3-4457-a421-1874ecac000a', N'Cvikov', NULL, N'4b716149-1210-40ab-b2f2-83da874258a3')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'bfdff85f-96d0-427e-aa6a-189e285dfa91', N'Rýmařov', NULL, N'3a287cdd-398e-4c31-bebc-1bacc7d96d47')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'd4b9e8b1-4307-411e-b005-190087dbba79', N'Žlutice', NULL, N'9b162c45-856e-4130-8637-d52d50d29728')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'd263cc34-768c-4b99-818b-195293c0e528', N'Valašské Meziříčí', NULL, N'c41a1e58-0e90-44ba-8203-38bf44af7425')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'0b858cfc-4e42-4511-b3a8-195db51cf39f', N'Česká Skalice', NULL, N'3c5e757b-4b01-4fc6-86bf-828167b202ff')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'346512ae-8215-41ad-9351-19c13fadde69', N'Jesenice', NULL, N'c0c13d2c-44f7-4572-a74e-a07370571bf2')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'b4646c97-0520-49f9-a65a-19cd766eba9e', N'Rokycany', NULL, N'0f456bc2-4cd0-44ee-abce-281bf830a79f')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'8d541231-79de-4ca0-bd9b-1a26dd712f87', N'Hostouň', NULL, N'f6fef133-cc42-44c4-b65b-7e42c14fab88')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'b0fa1b0f-0ec4-4a6b-bc13-1a3def892414', N'Černošice', NULL, N'dba48ff1-aa60-4f29-9d15-5cb55c445ae2')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'6dbde366-f7e1-43b3-87e6-1a7b3542eca6', N'Uničov', NULL, N'f5fca20e-fb1e-4f6e-8a0f-159633bc97e2')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'14c8ae60-83d2-454d-b772-1ad111b5de41', N'Brumov-Bylnice', NULL, N'4fffb9bc-7493-48d2-a9bd-5a9147e00403')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'b7409b12-6e52-4afd-b717-1af92aec9987', N'Lázně Bělohrad', NULL, N'b3516507-3afd-434f-ba8e-dbd37aa110fa')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'c5abcedd-dc09-429b-80ab-1b44222b0545', N'Tovačov', NULL, N'1d932786-5457-412c-89f2-f5388cb72b6c')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'2b4753e0-1f9c-4455-8012-1b6f83b63f81', N'Sedlec-Prčice', NULL, N'a46b2ef5-f009-4e1c-a6ef-ea9a91667c24')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'8683ad20-a4ca-424c-b5f2-1b83a8ccbcf8', N'Stochov', NULL, N'cb9c4c5d-561b-4d47-a8b7-bf0cacc3a7d6')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'e3beffa4-04f7-4d14-a013-1bb3f013c06c', N'Pečky', NULL, N'fd1aada2-399d-4c1b-972b-1259e9d0ff6b')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'927c9709-9955-4366-8a0e-1cd63db41a84', N'Nové Hrady', NULL, N'92256402-4724-4305-a6ca-4df35086d7ac')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'45445018-3b30-4c15-bba5-1d22591f29d6', N'Šumperk', NULL, N'4d0d2b99-e118-46ab-83bc-5e234a202b33')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'4dd47224-205d-47ee-8231-1dc2749ee918', N'Lovosice', NULL, N'be7d4d9a-fde3-4ef7-9680-b9eacae7dbab')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'9f7eb5b1-bc49-4c3a-80f0-1ef44f93a759', N'Buštěhrad', NULL, N'cb9c4c5d-561b-4d47-a8b7-bf0cacc3a7d6')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'6bfef6c3-247d-481c-9b1f-1fa0095ed068', N'Mnichovice', NULL, N'a7d4eac5-d033-4c98-9d70-532d49c2c06f')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'fae39d1f-915a-4e93-aa21-1fc76f078f87', N'Koryčany', NULL, N'1c81dec4-f396-49ff-8151-9ee7514adcf5')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'3d5c92ee-55b5-4741-8c97-2029314dbcf1', N'Olešnice', NULL, N'c6aace4f-21c5-441e-b8ef-41fef4773be5')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'a99b2ace-e1bf-4a89-985d-203e5b699b5d', N'Černošín', NULL, N'3c543323-9c04-4cc7-9cbf-9ce2f651fe23')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'c9fa2234-efc2-458a-ae80-20b5292d7f2e', N'Adamov', NULL, N'c6aace4f-21c5-441e-b8ef-41fef4773be5')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'e11e2699-ec14-45dd-8108-20f08b347f29', N'Třebenice', NULL, N'e5d9ca34-c228-407d-b20a-b4f94b5ac5c5')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'96059c5c-a7e4-4ebe-9da8-20f647d4aeda', N'Rotava', NULL, N'33f2561d-5b92-425f-8501-c45e7e614db9')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'2b1962cc-b39f-4684-9051-2146539e3445', N'Hrob', NULL, N'4d72c278-4cde-4ac6-8765-8463a0c5f9b6')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'570e9bb4-7628-456d-8e8d-21af024518b8', N'Humpolec', NULL, N'88687350-0a1e-41a3-bfd0-5d31dfd38d84')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'b8bc53d4-21fc-4e75-b06d-22031d95992b', N'Holešov', NULL, N'1c81dec4-f396-49ff-8151-9ee7514adcf5')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'370832f5-0ee6-44de-b916-2245a0b5f79e', N'Kralupy nad Vltavou', NULL, N'51dcf722-92c9-4b3d-aa22-a5908075abb7')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'c06c75f0-7ab2-4b4a-b20e-2283b15e64c6', N'Týnec nad Labem', NULL, N'fd1aada2-399d-4c1b-972b-1259e9d0ff6b')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'2e77cf0d-2d01-4728-ac89-22c15a415d75', N'Břidličná', NULL, N'3a287cdd-398e-4c31-bebc-1bacc7d96d47')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'fffb7e32-0fd0-4c86-8560-22fd3d9e7329', N'Klášterec nad Ohří', NULL, N'f213a1af-d80c-411e-a322-b4f13590c2bc')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'cb79b0bf-742a-40e3-b4b4-2315607fdde0', N'Dobřany', NULL, N'ed79ca87-17be-4818-b36a-33edc2c5792d')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'a42806ec-2af6-4f2b-9947-232b8e249b2d', N'Hulín', NULL, N'1c81dec4-f396-49ff-8151-9ee7514adcf5')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'7a3632d9-4ab1-40e7-bad8-235ca887356c', N'Nýřany', NULL, N'9774164e-66ae-4227-89e7-8e304ff26a15')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'cb81ba6c-cd93-4513-b830-2386413b2f87', N'Chýnov', NULL, N'96c4a666-896b-4993-bb06-208983f59146')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'a1466b76-670c-4cfe-bf72-2455d4775d0a', N'Nepomuk', NULL, N'ed79ca87-17be-4818-b36a-33edc2c5792d')
GO
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'ee789a73-442b-4549-8ff4-2530546136a9', N'Chyše', NULL, N'9b162c45-856e-4130-8637-d52d50d29728')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'212878da-7f1b-415e-b6e7-2563a27face9', N'Meziboří', NULL, N'651ec49f-0322-4f81-886d-0cf544cec9f7')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'25f2bd57-c814-475a-a065-25885a0e453c', N'Světlá nad Sázavou', NULL, N'5b092bf6-95c3-4080-b559-90d49a619e51')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'996de0e7-ee72-4054-97e5-267924a83b54', N'Domažlice', NULL, N'f6fef133-cc42-44c4-b65b-7e42c14fab88')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'2d47538b-eb3c-4d2a-a90b-2702d91f1da6', N'Nový Jičín', NULL, N'e512730f-4139-48d1-8e75-2d083435564a')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'024bcb40-2b90-46b8-91f8-27368f9d40f8', N'Hrušovany nad Jevišovkou', NULL, N'731b986f-6edc-4118-a3d1-c87ea4d5f2c6')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'08772e37-6618-473a-bfc7-2760c6494cd9', N'Železný Brod', NULL, N'943b2ee6-0639-4e3f-81e4-5f14179c5c50')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'ee9c6185-ae7e-4f8f-830e-27c9f1156460', N'Varnsdorf', NULL, N'fe000b9d-1fde-4e3c-839e-c59fd3c30756')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'256adc1e-e840-4b2a-aaec-2829d468a451', N'Žirovnice', NULL, N'88687350-0a1e-41a3-bfd0-5d31dfd38d84')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'd1e4e8cd-1c81-4fa1-9b36-2949f7e6b3ac', N'Bojkovice', NULL, N'fac3445f-c492-410c-bd60-0756ff304582')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'c5a23973-6506-4fc6-bdce-29f5b1e30f10', N'Aš', NULL, N'7a5f4056-85a6-4cb8-bbca-a65ef045d2e6')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'109cd0e5-41e7-4338-972b-2a0822d1b5a0', N'Moravský Krumlov', NULL, N'731b986f-6edc-4118-a3d1-c87ea4d5f2c6')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'aaded920-1e34-4dc9-ade1-2acbb4eb5e0a', N'Jistebnice', NULL, N'96c4a666-896b-4993-bb06-208983f59146')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'dbb0c794-d72d-49dc-bfca-2add7eab72c2', N'Libochovice', NULL, N'e5d9ca34-c228-407d-b20a-b4f94b5ac5c5')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'6fdbb76a-97f8-42c7-831a-2b1480d7cb8c', N'Miletín', NULL, N'b3516507-3afd-434f-ba8e-dbd37aa110fa')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'b84f687d-dc6f-41eb-ad15-2b59860a9f69', N'Červená Řečice', NULL, N'88687350-0a1e-41a3-bfd0-5d31dfd38d84')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'cb1cb636-5ad2-40af-8132-2ba3b2004b45', N'Luhačovice', NULL, N'4fffb9bc-7493-48d2-a9bd-5a9147e00403')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'e9db5b36-ffd1-4054-ae4f-2c7ea65104da', N'Nové Sedlo', NULL, N'33f2561d-5b92-425f-8501-c45e7e614db9')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'953a3e3e-3d3b-42fd-b657-2d215d1964fe', N'Nová Včelnice', NULL, N'509d8d58-3a8a-43da-8a4c-4ab9771c1639')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'd03d523a-575e-4af7-81d6-2d2afadca0f9', N'Dubá', NULL, N'4b716149-1210-40ab-b2f2-83da874258a3')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'5bb27770-93b1-4f0c-aef8-2d4c9a25bef3', N'Náměšť nad Oslavou', NULL, N'93bf7742-8fc1-4e68-b623-ac2d660e3317')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'd851c532-543b-4b35-b548-2d7d2b69b081', N'Manětín', NULL, N'9774164e-66ae-4227-89e7-8e304ff26a15')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'c8222ad3-de1e-47df-b589-2ee37dde63e3', N'Hlučín', NULL, N'e1f5cdb2-57f2-4ef1-bd18-089723df66ec')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'd40eb189-0c99-45f1-a0bf-2f2d71cd6a01', N'Telč', NULL, N'b8cd8008-82ba-46db-97cc-5ab1c1d8dc9b')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'cb1d61b0-2f99-4356-9cdd-2f3ed7d9c291', N'Kryry', NULL, N'5789d178-5a9d-48ca-9c74-59c3efce532f')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'adc60f6d-ee97-4adb-a43e-2f934598b36e', N'Česká Lípa', NULL, N'4b716149-1210-40ab-b2f2-83da874258a3')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'c4ec30f3-14ee-4b2c-b2ee-2fd8db347e67', N'Úpice', NULL, N'04ce93c6-79f6-4dc7-9046-118050f1f52c')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'1e272fa6-c67b-4993-8282-3008020238d9', N'Rabí', NULL, N'e08b64d8-6b1c-4f53-a762-e1afd5ccb66b')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'6d1dba4d-a019-4ec0-b166-3076674fee03', N'Český Krumlov', NULL, N'f1bdb9c5-8532-46d6-b5e7-57b11e4e4d4e')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'01877a3b-9e9e-453b-8140-3277189ce746', N'Raspenava', NULL, N'7d97991f-08bb-42ec-a8ad-2d5ce3c5a49f')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'1efc4508-0b33-4f5e-a926-32b2f4c201c3', N'Strakonice', NULL, N'be7d4d9a-fde3-4ef7-9680-b9eacae7dbab')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'144e2d98-3602-4134-a70d-33371aa04a82', N'Horní Jiřetín', NULL, N'651ec49f-0322-4f81-886d-0cf544cec9f7')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'c6518979-95f1-4a58-8ae4-336782a1d520', N'Rájec-Jestřebí', NULL, N'c6aace4f-21c5-441e-b8ef-41fef4773be5')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'ea850cd8-9243-472a-9f7b-3377017caf9e', N'Březová', NULL, N'33f2561d-5b92-425f-8501-c45e7e614db9')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'4e589b79-6438-4fc4-8be5-34277824e549', N'Verneřice', NULL, N'fe000b9d-1fde-4e3c-839e-c59fd3c30756')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'df6a1392-ea1d-4872-a8bd-34b0a54aa4c8', N'Velké Meziříčí', NULL, N'e8dd2116-5fe8-4f2f-80ee-ed7cac534588')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'87cff997-3faa-4f22-b2cd-34c078156b74', N'Plumlov', NULL, N'996e5369-9a3d-43c5-bd0f-4f48e0fccfe1')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'cebf6652-d705-4b3b-aa8c-356417ce954f', N'Lipník nad Bečvou', NULL, N'1d932786-5457-412c-89f2-f5388cb72b6c')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'c3efdca8-d20f-4560-898a-359eb649eab7', N'Králův Dvůr', NULL, N'3c7ccdc8-4755-43b9-a198-71e4c2e6995b')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'2b7d4091-a9f5-45af-a469-35bf459d8180', N'Rtyně v Podkrkonoší', NULL, N'04ce93c6-79f6-4dc7-9046-118050f1f52c')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'3d4425f6-123f-4e84-8505-363b49e7fff4', N'Fryšták', NULL, N'4fffb9bc-7493-48d2-a9bd-5a9147e00403')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'240e1b98-dcdb-486e-a21c-36a6015d13c5', N'Boží Dar', NULL, N'9b162c45-856e-4130-8637-d52d50d29728')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'78db1395-eed2-47a9-b7e3-36ef316aef58', N'Strmilov', NULL, N'509d8d58-3a8a-43da-8a4c-4ab9771c1639')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'f29943c4-cd12-4f62-8450-37dfee8b93cf', N'Rokytnice v Orlických horách', NULL, N'6139302e-762a-491f-837b-75c3ace49df4')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'2a2f36b6-14da-427a-88a7-392525497687', N'Chomutov', NULL, N'f213a1af-d80c-411e-a322-b4f13590c2bc')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'2069fc75-0bc7-4e31-a0d9-39ca8a9bd847', N'Ivanovice na Hané', NULL, N'80b59a04-bde9-4d4d-88f4-08ca917af61b')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'9bb89fe3-359d-4e38-b536-39cc49201f78', N'Šlapanice', NULL, N'f03d7a01-992e-4491-9d40-a389de23a24b')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'5a5bebfc-f1e9-4155-b0ea-39f8c56da798', N'Litovel', NULL, N'f5fca20e-fb1e-4f6e-8a0f-159633bc97e2')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'9d0c140c-bc60-4e52-affe-3a4e9adbe544', N'Jaroměř', NULL, N'3c5e757b-4b01-4fc6-86bf-828167b202ff')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'352d5b1a-1d35-479f-bc5b-3ad779c26ecc', N'Chrastava', NULL, N'7d97991f-08bb-42ec-a8ad-2d5ce3c5a49f')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'd503901d-a5d6-4f26-897e-3adbf8e30026', N'Hora Svaté Kateřiny', NULL, N'651ec49f-0322-4f81-886d-0cf544cec9f7')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'2c766739-0c02-486a-8bf9-3b586b18e0df', N'Orlová', NULL, N'7151a028-4172-4f87-891b-8fcdc5da0512')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'ada5baef-14b7-4942-91ed-3c5ddf22b393', N'Valtice', NULL, N'50c65cec-c13b-4551-9c93-7c93d7495ca5')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'9f9e8060-0a4d-4e89-970a-3d18ef5250ed', N'Klatovy', NULL, N'e08b64d8-6b1c-4f53-a762-e1afd5ccb66b')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'51787c11-3622-4c2a-a6e5-3dced83eb166', N'Lomnice nad Popelkou', NULL, N'75d9c303-317b-47c6-a74d-16c9f9860ed5')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'7a02b413-98b2-47f9-8f14-3ef030395416', N'Lázně Kynžvart', NULL, N'7a5f4056-85a6-4cb8-bbca-a65ef045d2e6')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'66527cd0-3a44-45a6-b7e0-3f32f7a68be4', N'Sedlice', NULL, N'be7d4d9a-fde3-4ef7-9680-b9eacae7dbab')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'790a5e5e-f5ad-48c8-af5e-3f6500abb709', N'Vrchlabí', NULL, N'04ce93c6-79f6-4dc7-9046-118050f1f52c')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'70959105-a459-40fd-b88b-3f83a85b1e8b', N'Moravská Třebová', NULL, N'8e2474e4-419d-40d8-af89-a6c5755ee68d')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'2504471a-d9e0-4848-935d-3f9cad30538e', N'Prostějov', NULL, N'996e5369-9a3d-43c5-bd0f-4f48e0fccfe1')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'f4fb1713-9a30-4781-87c3-3fe14ddc02ce', N'Větřní', NULL, N'f1bdb9c5-8532-46d6-b5e7-57b11e4e4d4e')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'876b3dcf-1e0f-42cc-b693-4026df1fe14a', N'Nový Bydžov', NULL, N'6ae77e4e-0da2-43a8-b615-bc0f68cc0ce2')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'6f5be970-db70-49f8-9e1f-404c2a3311fc', N'Zásmuky', NULL, N'fd1aada2-399d-4c1b-972b-1259e9d0ff6b')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'056195e5-cba5-491b-aa48-405e48ed6f8d', N'Vroutek', NULL, N'5789d178-5a9d-48ca-9c74-59c3efce532f')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'7caede6c-d490-47c2-ba6e-40661b7b9193', N'Nové Město na Moravě', NULL, N'e8dd2116-5fe8-4f2f-80ee-ed7cac534588')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'eecd8a83-d6d8-468d-b250-408cc13651c2', N'Kolín', NULL, N'fd1aada2-399d-4c1b-972b-1259e9d0ff6b')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'6e4ad25e-2bc8-4170-9ab4-429bc08c2248', N'Soběslav', NULL, N'96c4a666-896b-4993-bb06-208983f59146')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'bafe84ec-7d52-43f4-81fa-42a88d9703bc', N'Třinec', NULL, N'426219ab-7df2-4e7b-9761-cdf222810b49')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'93fe688e-6718-4710-b000-4386e8a74091', N'Vlachovo Březí', NULL, N'52710db2-9fad-4a17-8695-d22f610a535b')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'39524c77-93ac-465b-9694-442845800568', N'Jablonec nad Jizerou', NULL, N'75d9c303-317b-47c6-a74d-16c9f9860ed5')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'2916666e-3240-4708-99f9-44882a583a3a', N'Janské Lázně', NULL, N'04ce93c6-79f6-4dc7-9046-118050f1f52c')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'0d490251-d57a-407e-8220-456f1a70d7e9', N'Bílina', NULL, N'4d72c278-4cde-4ac6-8765-8463a0c5f9b6')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'd267594d-9895-4e47-bab2-45d7d651fc32', N'Broumov', NULL, N'3c5e757b-4b01-4fc6-86bf-828167b202ff')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'db82370f-3a65-43c7-a23b-45e5c8eb17be', N'Deštná', NULL, N'509d8d58-3a8a-43da-8a4c-4ab9771c1639')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'a5f0d19f-372e-4894-9957-464854a7f5d0', N'Vsetín', NULL, N'c41a1e58-0e90-44ba-8203-38bf44af7425')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'f265980e-2827-4374-b8ff-46ac3f20a6c5', N'Holice', NULL, N'a8741af1-f76a-44e9-aa19-cb6c6e3bf6f9')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'26d26abd-d3ab-46cc-a795-46c3f4a9941f', N'Ostrava', NULL, N'971c5360-1bb0-4ce2-80c3-2d6901e72b15')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'c653f8d8-6d3c-4835-b33d-46e8730dbb90', N'Mladá Boleslav', NULL, N'aaf3c0cd-8c97-4e1a-bb9b-e4f281d5e8d6')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'848810c2-0c7f-4494-9c85-479851c14562', N'Nové Strašecí', NULL, N'c0c13d2c-44f7-4572-a74e-a07370571bf2')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'3f7e80e6-233e-4955-b3ad-482058f94ab0', N'Trhový Štěpánov', NULL, N'8867ebfa-5b4b-4b1d-9244-3feff5cccc1e')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'544d06a6-943e-4595-96fb-48781ade97f2', N'Kdyně', NULL, N'f6fef133-cc42-44c4-b65b-7e42c14fab88')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'd6952c92-1903-4203-a58d-4878d7b34800', N'Chýně', NULL, N'dba48ff1-aa60-4f29-9d15-5cb55c445ae2')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'0aa79fd7-f512-4238-ba3c-48a3e26d8159', N'Liběchov', NULL, N'51dcf722-92c9-4b3d-aa22-a5908075abb7')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'cddbab87-6a28-460f-a97d-48dc33fd2326', N'Černovice', NULL, N'88687350-0a1e-41a3-bfd0-5d31dfd38d84')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'f593bb9a-27e1-43f8-8e1a-4904bd31e046', N'Ronov nad Doubravou', NULL, N'0b9c7ad9-dd81-4785-a6c1-150994bfb002')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'513a3c6d-ad10-42f4-9ee4-4933a20a1ceb', N'Žacléř', NULL, N'04ce93c6-79f6-4dc7-9046-118050f1f52c')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'510eeb21-81c4-41b3-96c5-499d5052b907', N'Slavičín', NULL, N'4fffb9bc-7493-48d2-a9bd-5a9147e00403')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'e2b70d0d-9f1b-480a-8bac-4a0542cd6c8c', N'Planá nad Lužnicí', NULL, N'96c4a666-896b-4993-bb06-208983f59146')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'0d13f55d-ca0a-4822-a899-4c19da7a2bea', N'Veverská Bítýška', NULL, N'f03d7a01-992e-4491-9d40-a389de23a24b')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'f63c38b1-0f93-4822-9945-4ce8b07ecac4', N'Praha', NULL, N'82149be8-f84a-4682-9d7a-f2d6e398152e')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'76178518-ba6c-44db-90e7-4cededa86110', N'Hostinné', NULL, N'04ce93c6-79f6-4dc7-9046-118050f1f52c')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'1a912803-ba5c-46b4-8611-4dbe2415cbb3', N'Bor', NULL, N'3c543323-9c04-4cc7-9cbf-9ce2f651fe23')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'd959538c-03a9-42f6-b853-4ddfd546de14', N'Ústí nad Orlicí', NULL, N'84b975b7-36a4-4be8-a1cd-cf856720740b')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'fefb777a-8392-4303-98b5-4e0c642c92c0', N'Benešov', NULL, N'8867ebfa-5b4b-4b1d-9244-3feff5cccc1e')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'cf6fa160-752e-4d9c-b96e-4f0a31daf592', N'Turnov', NULL, N'75d9c303-317b-47c6-a74d-16c9f9860ed5')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'f6f08ede-2ec9-4816-9626-4fd8cfd69f46', N'Sázava', NULL, N'8867ebfa-5b4b-4b1d-9244-3feff5cccc1e')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'd808ab11-6901-4f4a-bd4c-51371d5a57d2', N'Chotěboř', NULL, N'5b092bf6-95c3-4080-b559-90d49a619e51')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'fb95ad4d-643c-41d4-af2d-51ed3bbc06c5', N'Kamenice nad Lipou', NULL, N'88687350-0a1e-41a3-bfd0-5d31dfd38d84')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'58ce2741-a713-4ab3-8055-524ebfaf5263', N'Železnice', NULL, N'b3516507-3afd-434f-ba8e-dbd37aa110fa')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'1f215820-e162-4527-afda-531a44b31586', N'Police nad Metují', NULL, N'3c5e757b-4b01-4fc6-86bf-828167b202ff')
GO
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'6a174799-dabb-415f-b56d-5354419e21aa', N'Horní Planá', NULL, N'f1bdb9c5-8532-46d6-b5e7-57b11e4e4d4e')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'cf99e87e-20f2-4bd9-a168-53ad38561800', N'Planá', NULL, N'3c543323-9c04-4cc7-9cbf-9ce2f651fe23')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'2901e914-1171-430f-94b8-53be453c685a', N'Habartov', NULL, N'33f2561d-5b92-425f-8501-c45e7e614db9')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'ac8bdd60-607a-4fdc-9db4-53d4e9d058dc', N'Třešť', NULL, N'b8cd8008-82ba-46db-97cc-5ab1c1d8dc9b')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'30c53740-5f7e-498d-bcef-55a486eb9564', N'Jílové u Prahy', NULL, N'dba48ff1-aa60-4f29-9d15-5cb55c445ae2')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'71a45e2c-ee05-4db0-8504-565a94b9a665', N'Litvínov', NULL, N'651ec49f-0322-4f81-886d-0cf544cec9f7')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'11621304-47d4-4698-94b0-56698ab0f33f', N'Město Albrechtice', NULL, N'3a287cdd-398e-4c31-bebc-1bacc7d96d47')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'50e1f6ca-e667-4c29-9967-56839d57d51d', N'Kašperské Hory', NULL, N'e08b64d8-6b1c-4f53-a762-e1afd5ccb66b')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'aab9c3d4-9604-4c3d-8047-568a2e295513', N'Lanžhot', NULL, N'50c65cec-c13b-4551-9c93-7c93d7495ca5')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'f19e6d90-4a1e-4e67-b950-573665d2b2ec', N'Třemošná', NULL, N'9774164e-66ae-4227-89e7-8e304ff26a15')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'4b527441-da7d-41f4-9e0f-576c931ea3e9', N'Sadská', NULL, N'ee805001-6515-4313-88cf-b234591d91df')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'f6e43c2c-927d-45df-84d9-58ae10f8475a', N'Vizovice', NULL, N'4fffb9bc-7493-48d2-a9bd-5a9147e00403')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'2ca3f18b-b70c-4634-a543-595190f69d6a', N'Tachov', NULL, N'3c543323-9c04-4cc7-9cbf-9ce2f651fe23')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'6b4928d3-c4eb-46a9-bcf8-595204dc10a2', N'Chlumec', NULL, N'88fcedd4-b1dc-4a56-889f-5e30bf51e493')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'ace5cae5-18d0-4d0e-92fc-597a61cdffc9', N'Horní Cerekev', NULL, N'88687350-0a1e-41a3-bfd0-5d31dfd38d84')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'78239e85-7f5e-4f00-8fff-59869a12c473', N'Hroznětín', NULL, N'9b162c45-856e-4130-8637-d52d50d29728')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'8a16ab4d-c539-4561-8737-5a1155336cd4', N'Velké Pavlovice', NULL, N'50c65cec-c13b-4551-9c93-7c93d7495ca5')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'e589469b-b4f1-4656-bee7-5a2d7082dc47', N'Pyšely', NULL, N'8867ebfa-5b4b-4b1d-9244-3feff5cccc1e')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'5ae41685-e20d-468b-bcb4-5a5019157c91', N'Jičín', NULL, N'b3516507-3afd-434f-ba8e-dbd37aa110fa')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'824efdec-097d-46c4-b072-5addcb43e08d', N'Netolice', NULL, N'52710db2-9fad-4a17-8695-d22f610a535b')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'fff07333-37f6-4217-b179-5bb86874c525', N'Mělník', NULL, N'51dcf722-92c9-4b3d-aa22-a5908075abb7')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'd22cc610-abca-4ed7-9a71-5c5fba46d589', N'Ústí nad Labem', NULL, N'88fcedd4-b1dc-4a56-889f-5e30bf51e493')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'c3694466-df2b-48a9-8a88-5d5db195e800', N'Teplice', NULL, N'4d72c278-4cde-4ac6-8765-8463a0c5f9b6')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'58885095-19d2-4ffe-8cbb-5d623379db09', N'Letovice', NULL, N'c6aace4f-21c5-441e-b8ef-41fef4773be5')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'd4feb2af-3d60-4b8c-b53b-5d6c1b365a03', N'Doksy', NULL, N'4b716149-1210-40ab-b2f2-83da874258a3')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'fa1de215-9c3a-44c2-b63b-5d819ebbc88e', N'Ždánice', NULL, N'5aaf2c45-7ef2-45db-97e8-dc65283f9e99')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'48f6b771-0148-458d-bce4-5f735f790359', N'Krásno', NULL, N'33f2561d-5b92-425f-8501-c45e7e614db9')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'7ca2b1b0-3d5f-4042-b4fa-600a79e64e3d', N'Seč', NULL, N'0b9c7ad9-dd81-4785-a6c1-150994bfb002')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'615db508-dd29-49ab-b65e-609a1897e5b8', N'Rokytnice nad Jizerou', NULL, N'75d9c303-317b-47c6-a74d-16c9f9860ed5')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'5f0c7972-5b5c-449d-948c-60e872d45cb2', N'Městec Králové', NULL, N'ee805001-6515-4313-88cf-b234591d91df')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'd6ae6f99-7434-4e71-88c1-61280cad042d', N'Loučná pod Klínovcem', NULL, N'f213a1af-d80c-411e-a322-b4f13590c2bc')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'834da272-2cd5-4b5d-a400-619bb3b7424a', N'Rožďalovice', NULL, N'ee805001-6515-4313-88cf-b234591d91df')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'6ad5e80a-a13e-477f-849c-61fbcde58ae8', N'Polička', NULL, N'8e2474e4-419d-40d8-af89-a6c5755ee68d')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'b891d8fa-0ef1-4730-930b-627221a2888f', N'Hanušovice', NULL, N'4d0d2b99-e118-46ab-83bc-5e234a202b33')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'34003c87-10ae-492e-92e2-627f63e80283', N'Vejprty', NULL, N'f213a1af-d80c-411e-a322-b4f13590c2bc')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'215c762c-fbf1-4a13-8631-62ab9513f5ed', N'Louny', NULL, N'5789d178-5a9d-48ca-9c74-59c3efce532f')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'a905858e-be1d-412b-b066-62bff8219a0b', N'Chrast', NULL, N'0b9c7ad9-dd81-4785-a6c1-150994bfb002')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'67917bb7-a026-47b7-b4ca-630e8a22b774', N'Vracov', NULL, N'5aaf2c45-7ef2-45db-97e8-dc65283f9e99')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'817b6f0f-eae5-499d-9447-635c746a9056', N'Benátky nad Jizerou', NULL, N'aaf3c0cd-8c97-4e1a-bb9b-e4f281d5e8d6')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'75345589-7ad3-42a3-9d4e-63995f5d249b', N'Stráž pod Ralskem', NULL, N'4b716149-1210-40ab-b2f2-83da874258a3')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'894cc6d4-48e1-4fe6-b109-64473b6644f9', N'Hoštka', NULL, N'e5d9ca34-c228-407d-b20a-b4f94b5ac5c5')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'b536350c-2ad6-4e35-8b8f-64b12f796942', N'Dobřichovice', NULL, N'dba48ff1-aa60-4f29-9d15-5cb55c445ae2')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'268385db-6a6c-4317-8c52-66beafb95461', N'Jeseník', NULL, N'3dba0bd0-f3fb-4b6d-bf6c-c9c4705b8c21')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'2113827c-11d3-4b58-9b78-67724c28f3a4', N'Bohušovice nad Ohří', NULL, N'e5d9ca34-c228-407d-b20a-b4f94b5ac5c5')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'c5a48d4d-8d13-4f2f-bfeb-67b66dd62db8', N'Paskov', NULL, N'426219ab-7df2-4e7b-9761-cdf222810b49')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'ee9e52f0-725d-41d9-8595-682c7b766e6f', N'Kopidlno', NULL, N'b3516507-3afd-434f-ba8e-dbd37aa110fa')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'fbab7c0a-dcea-4c96-94d3-68fbceeed16b', N'Rožmitál pod Třemšínem', NULL, N'a46b2ef5-f009-4e1c-a6ef-ea9a91667c24')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'a4df04d8-9337-4f46-8f02-69ed9d21c72d', N'Mirošov', NULL, N'0f456bc2-4cd0-44ee-abce-281bf830a79f')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'a525fdfb-c6a9-4b51-9824-69f5c099e0b8', N'Jihlava', NULL, N'b8cd8008-82ba-46db-97cc-5ab1c1d8dc9b')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'8a6b302e-d499-4aeb-9fb8-6a6fa0b1835f', N'Protivín', NULL, N'00622233-8c10-4dd3-ba29-38191baa7ac0')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'f92ec30c-a9db-4c50-98fa-6b1ce1ad191a', N'Frýdlant nad Ostravicí', NULL, N'426219ab-7df2-4e7b-9761-cdf222810b49')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'0cc0b52b-9387-48ca-91bc-6b5e13db5551', N'Hostomice', NULL, N'3c7ccdc8-4755-43b9-a198-71e4c2e6995b')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'da672f5a-ba94-44d8-b0e6-6b926c9ba654', N'Červený Kostelec', NULL, N'3c5e757b-4b01-4fc6-86bf-828167b202ff')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'74b0b909-b99b-414d-88e5-6bbb79ab7e28', N'Vysoké nad Jizerou', NULL, N'75d9c303-317b-47c6-a74d-16c9f9860ed5')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'fc18eaa6-83c7-4aec-88a8-6becee107594', N'Odry', NULL, N'e512730f-4139-48d1-8e75-2d083435564a')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'd7c9642b-6523-46b6-b159-6c361f8a32bd', N'Poběžovice', NULL, N'f6fef133-cc42-44c4-b65b-7e42c14fab88')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'b78e06cc-0f97-4189-9e46-6d3b8879e1bb', N'Kostelec na Hané', NULL, N'996e5369-9a3d-43c5-bd0f-4f48e0fccfe1')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'064f9556-733d-4183-a724-6f52c9608972', N'Prachatice', NULL, N'52710db2-9fad-4a17-8695-d22f610a535b')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'9e2850af-c0dc-4bf9-b34e-6fc7d50e6fb3', N'Postoloprty', NULL, N'5789d178-5a9d-48ca-9c74-59c3efce532f')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'473f9b1e-0b2b-40a7-8e54-701dadf507c5', N'Chropyně', NULL, N'1c81dec4-f396-49ff-8151-9ee7514adcf5')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'e9315146-d460-4757-b345-708dcf490f18', N'Švihov', NULL, N'e08b64d8-6b1c-4f53-a762-e1afd5ccb66b')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'76033f42-63e2-4a45-a587-7101eeca0ad9', N'Úsov', NULL, N'4d0d2b99-e118-46ab-83bc-5e234a202b33')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'6435d068-ab3a-4c1b-8058-723f51e659e0', N'Benešov nad Ploučnicí', NULL, N'fe000b9d-1fde-4e3c-839e-c59fd3c30756')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'9ff5acb7-4138-47e1-97bc-724428990fa0', N'Český Dub', NULL, N'7d97991f-08bb-42ec-a8ad-2d5ce3c5a49f')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'11c22dd9-bc44-4f13-8b4f-7291a2afc766', N'Nový Bor', NULL, N'4b716149-1210-40ab-b2f2-83da874258a3')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'65a66ae2-48b8-4840-8d58-72e5c0412c4c', N'Potštát', NULL, N'1d932786-5457-412c-89f2-f5388cb72b6c')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'36352b59-cd86-44ad-9a68-736f01f94c1e', N'Horní Benešov', NULL, N'3a287cdd-398e-4c31-bebc-1bacc7d96d47')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'bc3ea32e-ad7c-4cd7-91d7-743e0ac50b93', N'Hronov', NULL, N'3c5e757b-4b01-4fc6-86bf-828167b202ff')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'cdd61d0f-cebd-41d7-84ae-744a148aa3d8', N'Vimperk', NULL, N'52710db2-9fad-4a17-8695-d22f610a535b')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'e6516f29-e423-450a-8e1e-74c5842e3e4f', N'Podbořany', NULL, N'5789d178-5a9d-48ca-9c74-59c3efce532f')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'f2d5f438-67b0-467d-a4a6-75a3104a185b', N'Tišnov', NULL, N'f03d7a01-992e-4491-9d40-a389de23a24b')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'd2fcec07-cc33-47be-9707-76f855a6a68e', N'Ralsko', NULL, N'4b716149-1210-40ab-b2f2-83da874258a3')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'46a9dd7f-698a-4762-8f38-7718b619f027', N'Napajedla', NULL, N'4fffb9bc-7493-48d2-a9bd-5a9147e00403')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'34759f0a-366c-4dd3-b602-776048c78ae9', N'Mirotice', NULL, N'00622233-8c10-4dd3-ba29-38191baa7ac0')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'99a0680b-24f5-4019-8d02-783d52cbd986', N'Karolinka', NULL, N'c41a1e58-0e90-44ba-8203-38bf44af7425')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'95a4beeb-f88f-4d27-88c0-7850882c325d', N'Abertamy', NULL, N'9b162c45-856e-4130-8637-d52d50d29728')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'10a8a223-46dd-4e3a-be66-7880f2c4ef0a', N'Svratka', NULL, N'e8dd2116-5fe8-4f2f-80ee-ed7cac534588')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'13d01776-e66b-4612-b0a4-789391ae391d', N'Dolní Poustevna', NULL, N'fe000b9d-1fde-4e3c-839e-c59fd3c30756')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'2952c139-6864-4860-b837-78b4c40bd1e7', N'Přeštice', NULL, N'ed79ca87-17be-4818-b36a-33edc2c5792d')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'4049c3eb-d864-4aa1-b1f6-792231e2550b', N'Luby', NULL, N'7a5f4056-85a6-4cb8-bbca-a65ef045d2e6')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'21b6ad85-8453-4d18-a8e4-7987f8058c3d', N'Třeboň', NULL, N'509d8d58-3a8a-43da-8a4c-4ab9771c1639')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'52f0de7d-3605-437e-9041-79c3e9613040', N'Štíty', NULL, N'4d0d2b99-e118-46ab-83bc-5e234a202b33')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'39fe850f-2467-4f15-8c46-79c6ff6c8c1e', N'Karlovy Vary', NULL, N'9b162c45-856e-4130-8637-d52d50d29728')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'c186bc7d-c88f-4af4-81ab-79eabc865eb8', N'Březnice', NULL, N'a46b2ef5-f009-4e1c-a6ef-ea9a91667c24')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'f63746e4-ff00-4291-a368-7a119647696f', N'Vrbno pod Pradědem', NULL, N'3a287cdd-398e-4c31-bebc-1bacc7d96d47')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'499028d4-1b88-4cd9-a28b-7a7db5be09d3', N'Mikulov', NULL, N'50c65cec-c13b-4551-9c93-7c93d7495ca5')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'406cd0e4-6897-42ea-afc0-7ac73e18020c', N'Havířov', NULL, N'7151a028-4172-4f87-891b-8fcdc5da0512')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'5d8187d4-8468-48f4-ac0e-7aee65b03786', N'Brušperk', NULL, N'426219ab-7df2-4e7b-9761-cdf222810b49')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'2d9646fc-f70f-418c-8608-7b2e4f9ad937', N'Město Touškov', NULL, N'9774164e-66ae-4227-89e7-8e304ff26a15')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'0dd4b77f-bbca-4778-ac51-7b6faa55c3f1', N'Brtnice', NULL, N'b8cd8008-82ba-46db-97cc-5ab1c1d8dc9b')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'e684114a-5cda-4ea3-9f46-7bd72357819c', N'Němčice nad Hanou', NULL, N'996e5369-9a3d-43c5-bd0f-4f48e0fccfe1')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'16a52a3e-8ced-4049-81e5-7bf19e0f3a07', N'Hrádek', NULL, N'0f456bc2-4cd0-44ee-abce-281bf830a79f')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'4bbd3823-2af0-4e0f-b2c8-7bfc5aeb9f98', N'Votice', NULL, N'8867ebfa-5b4b-4b1d-9244-3feff5cccc1e')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'584d880f-14f3-4d34-8b96-7c14939e0e0a', N'Pacov', NULL, N'88687350-0a1e-41a3-bfd0-5d31dfd38d84')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'2a2565a7-cf9b-4228-8aed-7c65403077f2', N'Jaroměřice nad Rokytnou', NULL, N'93bf7742-8fc1-4e68-b623-ac2d660e3317')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'ccd346d0-b6dd-4efc-a865-7c6cd0369cdc', N'Dačice', NULL, N'509d8d58-3a8a-43da-8a4c-4ab9771c1639')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'26fd2eaf-c2b3-4ec3-bbca-7c90d8a58342', N'Velký Šenov', NULL, N'fe000b9d-1fde-4e3c-839e-c59fd3c30756')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'f0dc9e2f-21bc-47b5-a1b6-7ec082deac64', N'Kožlany', NULL, N'9774164e-66ae-4227-89e7-8e304ff26a15')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'68b17b6f-054d-4eec-828e-7f41c45e668d', N'Budišov nad Budišovkou', NULL, N'e1f5cdb2-57f2-4ef1-bd18-089723df66ec')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'2df9fa04-491e-49e3-859e-7fa0d002fd39', N'Úvaly', NULL, N'a7d4eac5-d033-4c98-9d70-532d49c2c06f')
GO
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'6e28b41b-eec5-43e4-8961-7ffb477c4590', N'Cheb', NULL, N'7a5f4056-85a6-4cb8-bbca-a65ef045d2e6')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'ffbf62ee-9278-4a41-bc87-80237a655146', N'Jílové', NULL, N'fe000b9d-1fde-4e3c-839e-c59fd3c30756')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'14fa2ac4-286f-4bf4-b03f-804632a0815a', N'Rejštejn', NULL, N'e08b64d8-6b1c-4f53-a762-e1afd5ccb66b')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'acf10988-b84f-46d9-a1b9-807a099cfe20', N'Jevíčko', NULL, N'8e2474e4-419d-40d8-af89-a6c5755ee68d')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'db991cf5-e7c5-4d96-b167-80e5e0f8fbb3', N'Přimda', NULL, N'3c543323-9c04-4cc7-9cbf-9ce2f651fe23')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'0c626140-a6e8-48ea-8143-814a83f72329', N'Vamberk', NULL, N'6139302e-762a-491f-837b-75c3ace49df4')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'2606843d-2a02-4a06-9a40-81c2aba074ed', N'Žandov', NULL, N'4b716149-1210-40ab-b2f2-83da874258a3')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'14bcdeaa-17b1-44b5-84d4-81f5ac29d80c', N'Přerov', NULL, N'1d932786-5457-412c-89f2-f5388cb72b6c')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'82f5ecaa-335c-492d-a359-83d56c80a123', N'Dolní Kounice', NULL, N'f03d7a01-992e-4491-9d40-a389de23a24b')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'b426779d-2c7b-4e5a-b9d4-847a0ef02385', N'Heřmanův Městec', NULL, N'0b9c7ad9-dd81-4785-a6c1-150994bfb002')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'0719fe96-43b4-47d8-b8e6-8545ef855583', N'Bavorov', NULL, N'be7d4d9a-fde3-4ef7-9680-b9eacae7dbab')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'c77db8ed-2794-4250-8964-858959ebdc31', N'Nová Role', NULL, N'9b162c45-856e-4130-8637-d52d50d29728')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'0a70b0d3-feb9-4086-8d08-85e632c4063e', N'Ostrov', NULL, N'9b162c45-856e-4130-8637-d52d50d29728')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'f96ad37c-6f09-494f-bb83-86786cd0328e', N'Bystřice', NULL, N'8867ebfa-5b4b-4b1d-9244-3feff5cccc1e')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'7a39974f-1ced-4a13-9fd0-86c5cecf9105', N'Jilemnice', NULL, N'75d9c303-317b-47c6-a74d-16c9f9860ed5')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'78060c2a-8231-4672-8152-8828db25281f', N'Ivančice', NULL, N'f03d7a01-992e-4491-9d40-a389de23a24b')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'2854d2a8-f3d9-41de-8699-882c2b623f0c', N'Bohumín', NULL, N'7151a028-4172-4f87-891b-8fcdc5da0512')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'9c990d70-aa86-422f-a27e-88afbff175d4', N'Děčín', NULL, N'fe000b9d-1fde-4e3c-839e-c59fd3c30756')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'beb804f8-4f7f-44a0-80c8-8942dfa9418f', N'Český Těšín', NULL, N'7151a028-4172-4f87-891b-8fcdc5da0512')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'577ea961-02fd-426d-801f-8ac360e55377', N'Radnice', NULL, N'0f456bc2-4cd0-44ee-abce-281bf830a79f')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'3653a6d6-9a35-45df-a2e1-8ad00fbb5d32', N'Zruč nad Sázavou', NULL, N'19402871-a40c-41bc-9c74-f759d04f80aa')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'acea0d0a-6315-4ce0-b2ad-8be6713668b7', N'Stříbro', NULL, N'3c543323-9c04-4cc7-9cbf-9ce2f651fe23')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'd37b0464-de80-420d-a5c1-8c4183becbf2', N'Plánice', NULL, N'e08b64d8-6b1c-4f53-a762-e1afd5ccb66b')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'4f099a51-68e9-41da-b9df-8c79cbe254b2', N'Hustopeče', NULL, N'50c65cec-c13b-4551-9c93-7c93d7495ca5')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'acff61f0-a3aa-43a8-a807-8c9018b3a1ae', N'Veselí nad Moravou', NULL, N'5aaf2c45-7ef2-45db-97e8-dc65283f9e99')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'bf837cc7-1200-42ff-86ca-8caced247bad', N'Rousínov', NULL, N'80b59a04-bde9-4d4d-88f4-08ca917af61b')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'2285da43-09c2-4a4b-a53f-8dd5709fdf77', N'Mníšek pod Brdy', NULL, N'dba48ff1-aa60-4f29-9d15-5cb55c445ae2')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'ade61791-2ed9-434e-8a23-8dfb670c8ba4', N'Kostelec nad Orlicí', NULL, N'6139302e-762a-491f-837b-75c3ace49df4')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'2dbddda7-aff0-4a51-b4a8-8ec1c0feb6ae', N'Mariánské Lázně', NULL, N'7a5f4056-85a6-4cb8-bbca-a65ef045d2e6')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'2ca96ea9-1f43-449f-9bee-8f8f225b5b6f', N'Zábřeh', NULL, N'4d0d2b99-e118-46ab-83bc-5e234a202b33')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'04febf16-29f3-4655-ac54-904eb1634378', N'Loket', NULL, N'33f2561d-5b92-425f-8501-c45e7e614db9')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'845c2a6e-956e-48a6-89b1-9092b6956fa3', N'Klecany', NULL, N'a7d4eac5-d033-4c98-9d70-532d49c2c06f')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'da1aff5d-b0c5-4006-9d1a-9179d5aa0512', N'Suchdol nad Lužnicí', NULL, N'509d8d58-3a8a-43da-8a4c-4ab9771c1639')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'9ac075e0-1527-482d-83f5-91ae05f1f4d7', N'Chvaletice', NULL, N'a8741af1-f76a-44e9-aa19-cb6c6e3bf6f9')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'9def88b6-b499-44cc-af1f-927ac80be62d', N'Neveklov', NULL, N'8867ebfa-5b4b-4b1d-9244-3feff5cccc1e')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'7fba0af1-ab65-4b77-9d70-92d07652dbe0', N'Staré Město', NULL, N'fac3445f-c492-410c-bd60-0756ff304582')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'9c62e58d-9300-45c3-a9e5-931fdcd45e78', N'Jablonné nad Orlicí', NULL, N'84b975b7-36a4-4be8-a1cd-cf856720740b')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'475dfc27-a167-4a7b-b49d-938d0116b85c', N'Bělčice', NULL, N'be7d4d9a-fde3-4ef7-9680-b9eacae7dbab')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'e21d4f4b-cad5-4dc3-b857-941ad704cf71', N'Horní Slavkov', NULL, N'33f2561d-5b92-425f-8501-c45e7e614db9')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'ffa5cc83-f2e0-4768-a311-954875ee8155', N'Vodňany', NULL, N'be7d4d9a-fde3-4ef7-9680-b9eacae7dbab')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'5c298bbd-4902-4928-bc9e-95647c8f9a1d', N'Pec pod Sněžkou', NULL, N'04ce93c6-79f6-4dc7-9046-118050f1f52c')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'f98de270-15a8-4eb5-a084-9741ee0b0e2d', N'Osečná', NULL, N'7d97991f-08bb-42ec-a8ad-2d5ce3c5a49f')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'070ce8b9-27f2-4af1-a905-97dca6cc1d01', N'Zbýšov', NULL, N'f03d7a01-992e-4491-9d40-a389de23a24b')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'5d6203fe-25ae-4ca0-91be-98021d654019', N'Kosmonosy', NULL, N'aaf3c0cd-8c97-4e1a-bb9b-e4f281d5e8d6')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'c78dd3e0-dc8d-4f11-b2c8-98c0529d83a9', N'Blatná', NULL, N'be7d4d9a-fde3-4ef7-9680-b9eacae7dbab')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'a06f7ce1-bff4-4a0e-80b5-99689792478e', N'Oslavany', NULL, N'f03d7a01-992e-4491-9d40-a389de23a24b')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'a9e23876-f7b9-4f94-8e40-99a811a181ab', N'Přibyslav', NULL, N'5b092bf6-95c3-4080-b559-90d49a619e51')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'89790d8b-68b2-4237-b60a-99d364b02f2e', N'Unhošť', NULL, N'be7d4d9a-fde3-4ef7-9680-b9eacae7dbab')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'6191ad4c-e1b1-4497-8a25-99e00ca371d6', N'Náchod', NULL, N'3c5e757b-4b01-4fc6-86bf-828167b202ff')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'1144fc27-f599-41c0-ad59-9a0c8f1a7e02', N'Nasavrky', NULL, N'0b9c7ad9-dd81-4785-a6c1-150994bfb002')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'975260cc-3a24-4690-9baf-9a13257d0f10', N'Teplá', NULL, N'7a5f4056-85a6-4cb8-bbca-a65ef045d2e6')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'82f8ef52-eacf-487d-b38e-9b575223a76c', N'Rudná', NULL, N'dba48ff1-aa60-4f29-9d15-5cb55c445ae2')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'a26dd27b-4e33-4eca-9d39-9b5e1f6ef57b', N'Vítkov', NULL, N'e1f5cdb2-57f2-4ef1-bd18-089723df66ec')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'92cf186d-3320-4dba-a3e1-9bc0e26d5804', N'Vlašim', NULL, N'8867ebfa-5b4b-4b1d-9244-3feff5cccc1e')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'8838024b-49da-4282-9cec-9c1c205d8210', N'Vidnava', NULL, N'3dba0bd0-f3fb-4b6d-bf6c-c9c4705b8c21')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'04921da0-30d4-4de8-b005-9c56d5805d05', N'Úštěk', NULL, N'e5d9ca34-c228-407d-b20a-b4f94b5ac5c5')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'34267618-5b3b-488f-86da-9dbd52bdab55', N'Hrádek nad Nisou', NULL, N'7d97991f-08bb-42ec-a8ad-2d5ce3c5a49f')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'126810ef-ea34-4993-aff9-9de03ec2b15a', N'Jevišovice', NULL, N'731b986f-6edc-4118-a3d1-c87ea4d5f2c6')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'ed82a66a-6763-4511-9ef7-9df387f945e7', N'Rychnov nad Kněžnou', NULL, N'6139302e-762a-491f-837b-75c3ace49df4')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'e5a81a70-6c8e-4a8c-ba83-9dfecbab29a4', N'Opava', NULL, N'e1f5cdb2-57f2-4ef1-bd18-089723df66ec')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'79df6deb-f7d5-4b39-bed1-9e7853a28ae3', N'Harrachov', NULL, N'943b2ee6-0639-4e3f-81e4-5f14179c5c50')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'92445a5d-93f4-474b-aa99-9e9877a95162', N'Veltrusy', NULL, N'51dcf722-92c9-4b3d-aa22-a5908075abb7')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'657af412-f13e-4ce9-846a-9f1b2dc094af', N'Mirovice', NULL, N'00622233-8c10-4dd3-ba29-38191baa7ac0')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'8085228a-93a8-4cfd-a7f4-9f7ac2d5a69a', N'Blovice', NULL, N'ed79ca87-17be-4818-b36a-33edc2c5792d')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'fae46b53-d4c0-4cdb-9341-a0aa494189db', N'Boskovice', NULL, N'c6aace4f-21c5-441e-b8ef-41fef4773be5')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'4d482bfe-f4bf-4777-b802-a0db7385308d', N'Borohrádek', NULL, N'6139302e-762a-491f-837b-75c3ace49df4')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'c9833eca-02db-42e7-9436-a17a6e9527cc', N'Králíky', NULL, N'84b975b7-36a4-4be8-a1cd-cf856720740b')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'1ebc4c2a-a9ff-49f2-8f1c-a1ba002af8ed', N'Moravské Budějovice', NULL, N'93bf7742-8fc1-4e68-b623-ac2d660e3317')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'5615ec52-1999-48d8-98d6-a20543b6f4f0', N'Kamenický Šenov', NULL, N'4b716149-1210-40ab-b2f2-83da874258a3')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'c1ca033b-632c-41fa-8cbf-a26c205585df', N'Tanvald', NULL, N'943b2ee6-0639-4e3f-81e4-5f14179c5c50')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'284529d5-a11e-4ece-b0b8-a2a45d33ab01', N'Pilníkov', NULL, N'04ce93c6-79f6-4dc7-9046-118050f1f52c')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'82391366-0b9c-4532-b60a-a2e8e89a9d65', N'Brno', NULL, N'26068977-b905-43f3-90ed-1a96106bdd94')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'99ec90fb-8224-4139-bb8b-a323f2435cbf', N'Krásná Lípa', NULL, N'fe000b9d-1fde-4e3c-839e-c59fd3c30756')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'bc48cb92-ad46-4954-99c1-a3266597e296', N'Starý Plzenec', NULL, N'5c370898-d5fb-4f60-8f19-32f93e4e6acd')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'acfd3549-37b2-4f80-bdbd-a3508471bdd0', N'Měčín', NULL, N'e08b64d8-6b1c-4f53-a762-e1afd5ccb66b')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'17d0bd50-2ab3-4115-8c98-a3a0ebbc4470', N'Příbram', NULL, N'a46b2ef5-f009-4e1c-a6ef-ea9a91667c24')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'b3ad30af-1eb1-4ef1-beed-a3bab344a400', N'Mimoň', NULL, N'4b716149-1210-40ab-b2f2-83da874258a3')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'2327ee7e-8130-4d29-bbad-a5263ce999e2', N'Žďár nad Sázavou', NULL, N'e8dd2116-5fe8-4f2f-80ee-ed7cac534588')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'ce1c52fe-9c9d-4a5d-815a-a563eab46dbd', N'Kaplice', NULL, N'f1bdb9c5-8532-46d6-b5e7-57b11e4e4d4e')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'4f22f143-c0b2-44c1-91cc-a57f87ba662c', N'Vysoké Mýto', NULL, N'84b975b7-36a4-4be8-a1cd-cf856720740b')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'ded474e7-c09a-426b-9859-a5ca31217b30', N'Libušín', NULL, N'cb9c4c5d-561b-4d47-a8b7-bf0cacc3a7d6')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'78a2ddd7-f343-4658-a85d-a646772d1b0c', N'Husinec', NULL, N'52710db2-9fad-4a17-8695-d22f610a535b')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'95e92eb4-90c3-457c-ac8e-a745f1516f91', N'Třemošnice', NULL, N'0b9c7ad9-dd81-4785-a6c1-150994bfb002')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'dd42c7c5-eb1d-4a08-8d25-a7b3c7c7596b', N'Hranice', NULL, N'7a5f4056-85a6-4cb8-bbca-a65ef045d2e6')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'dd8a1941-0c37-4f81-a690-a7f9a31d530e', N'Desná', NULL, N'943b2ee6-0639-4e3f-81e4-5f14179c5c50')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'eda499ec-95ac-4c15-a5b7-a90c325f1dcc', N'Volary', NULL, N'52710db2-9fad-4a17-8695-d22f610a535b')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'2745bccd-1060-439a-878c-a9ca8f5c3a8c', N'Havlíčkův Brod', NULL, N'5b092bf6-95c3-4080-b559-90d49a619e51')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'10acc3fc-ee9f-49f5-a140-ac3fd0c3cee8', N'Česká Kamenice', NULL, N'fe000b9d-1fde-4e3c-839e-c59fd3c30756')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'6fee1acd-8781-49b5-980f-ac60d6bee930', N'Roztoky', NULL, N'dba48ff1-aa60-4f29-9d15-5cb55c445ae2')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'f480c026-1624-49d4-a99e-ac91a53bb357', N'Krnov', NULL, N'3a287cdd-398e-4c31-bebc-1bacc7d96d47')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'86f5fd10-b779-4c01-8d97-ad296e90499a', N'Sušice', NULL, N'e08b64d8-6b1c-4f53-a762-e1afd5ccb66b')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'bbab97ba-0d84-4381-988c-addc4e681ba6', N'Žamberk', NULL, N'84b975b7-36a4-4be8-a1cd-cf856720740b')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'96d12a06-d50c-4b6e-ae45-ae3dce2df524', N'Skalná', NULL, N'7a5f4056-85a6-4cb8-bbca-a65ef045d2e6')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'edb87bb1-bf63-4244-831e-ae4a36a0b69c', N'Plasy', NULL, N'9774164e-66ae-4227-89e7-8e304ff26a15')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'5b967a94-5639-41aa-ab30-ae66aee92740', N'Jablonné v Podještědí', NULL, N'7d97991f-08bb-42ec-a8ad-2d5ce3c5a49f')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'bccfc58c-7998-4fa0-a453-aec476fdde24', N'Kadaň', NULL, N'f213a1af-d80c-411e-a322-b4f13590c2bc')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'a00b8732-4331-4400-b406-af3932792472', N'Duchcov', NULL, N'4d72c278-4cde-4ac6-8765-8463a0c5f9b6')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'2e7155d5-fe20-4840-a564-af3ade8312b2', N'Hranice', NULL, N'1d932786-5457-412c-89f2-f5388cb72b6c')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'816e2746-1302-4b21-8254-af4f058c0a74', N'Šenov', NULL, N'971c5360-1bb0-4ce2-80c3-2d6901e72b15')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'c2d9b3a6-4909-4bda-9371-afbaf1a9b129', N'Milovice', NULL, N'ee805001-6515-4313-88cf-b234591d91df')
GO
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'dcea2b4a-6463-42b0-94cc-afbf593b621c', N'Hrochův Týnec', NULL, N'0b9c7ad9-dd81-4785-a6c1-150994bfb002')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'66bf03c5-6702-48e0-bb52-b097b41508fc', N'Dobruška', NULL, N'6139302e-762a-491f-837b-75c3ace49df4')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'0bdb4e9d-9a9f-4db3-acea-b1897c6505b9', N'Budyně nad Ohří', NULL, N'e5d9ca34-c228-407d-b20a-b4f94b5ac5c5')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'f08963f3-eb40-4585-bd3e-b552d23a98a9', N'Bučovice', NULL, N'80b59a04-bde9-4d4d-88f4-08ca917af61b')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'17494e25-4219-4713-a5f1-b5592c684a8a', N'Slušovice', NULL, N'4fffb9bc-7493-48d2-a9bd-5a9147e00403')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'19f2cf7e-88b3-44be-bcf1-b5b23e17da7b', N'Zbiroh', NULL, N'0f456bc2-4cd0-44ee-abce-281bf830a79f')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'c41061eb-3027-4b3d-a9a3-b5c1179e950d', N'Svitavy', NULL, N'8e2474e4-419d-40d8-af89-a6c5755ee68d')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'9b0cf281-ce46-4ecc-9c1e-b637d69e4245', N'Hodkovice nad Mohelkou', NULL, N'7d97991f-08bb-42ec-a8ad-2d5ce3c5a49f')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'be73acce-6b97-4ffe-b96b-b650621d84b2', N'Odolena Voda', NULL, N'a7d4eac5-d033-4c98-9d70-532d49c2c06f')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'd3f49cbf-b7f2-4781-9400-b73f3ec1247f', N'Lysá nad Labem', NULL, N'ee805001-6515-4313-88cf-b234591d91df')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'932d4074-15e4-4fa7-b80e-b77be36b9337', N'Ledvice', NULL, N'4d72c278-4cde-4ac6-8765-8463a0c5f9b6')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'6ae0b9a7-9812-4b91-bedc-b7c90c0e97a7', N'Smiřice', NULL, N'6ae77e4e-0da2-43a8-b615-bc0f68cc0ce2')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'cac416b2-a8e5-4d57-a661-b7dab1944dd5', N'Kostelec nad Labem', NULL, N'51dcf722-92c9-4b3d-aa22-a5908075abb7')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'22ad4d46-e3f8-4c90-8516-b7fce7abb089', N'Kopřivnice', NULL, N'e512730f-4139-48d1-8e75-2d083435564a')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'0897121c-807c-4085-9f82-b87101334a25', N'Kraslice', NULL, N'33f2561d-5b92-425f-8501-c45e7e614db9')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'3b29e10e-1fcd-424c-b215-b87c61de60a6', N'Výsluní', NULL, N'f213a1af-d80c-411e-a322-b4f13590c2bc')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'b917707d-653b-4bf9-819a-b8fd47a98962', N'Nová Bystřice', NULL, N'509d8d58-3a8a-43da-8a4c-4ab9771c1639')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'8a5ad86c-5632-465d-96fc-b9209fd0f806', N'Letohrad', NULL, N'84b975b7-36a4-4be8-a1cd-cf856720740b')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'f5bd9c4b-84c8-4074-abdd-b9683fa8eeb9', N'Chlumec nad Cidlinou', NULL, N'6ae77e4e-0da2-43a8-b615-bc0f68cc0ce2')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'970bb8aa-9e53-4271-9392-b99a57b20d0b', N'Jindřichův Hradec', NULL, N'509d8d58-3a8a-43da-8a4c-4ab9771c1639')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'17560e33-188f-49ac-8f64-b9fad769b4dd', N'Hodonín', NULL, N'5aaf2c45-7ef2-45db-97e8-dc65283f9e99')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'b92da387-07f4-45bc-ae1b-b9fb703c8d90', N'Velké Opatovice', NULL, N'c6aace4f-21c5-441e-b8ef-41fef4773be5')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'cc0dd4b9-a531-4d5d-8467-ba6aab45175d', N'Slavonice', NULL, N'509d8d58-3a8a-43da-8a4c-4ab9771c1639')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'a5b4764c-1867-4694-9b89-baf6e6074259', N'Mnichovo Hradiště', NULL, N'aaf3c0cd-8c97-4e1a-bb9b-e4f281d5e8d6')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'fc3c910a-1292-4e3c-9d64-bb54f5118a92', N'Libáň', NULL, N'b3516507-3afd-434f-ba8e-dbd37aa110fa')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'6654de60-5b5f-4c3d-bf6d-bbacf9dbc0a5', N'Kostelec nad Černými lesy', NULL, N'a7d4eac5-d033-4c98-9d70-532d49c2c06f')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'130657bd-f957-42af-b5c9-bbceb22d6b3c', N'Krásné Údolí', NULL, N'9b162c45-856e-4130-8637-d52d50d29728')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'a7d31acd-5e88-4530-9870-bc09f30ffaec', N'Sezimovo Ústí', NULL, N'96c4a666-896b-4993-bb06-208983f59146')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'300c1240-24b2-4a58-86dc-bc0f1322e8c2', N'Dubí', NULL, N'4d72c278-4cde-4ac6-8765-8463a0c5f9b6')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'1e9571ec-c49a-4deb-bd97-bc122a579797', N'Trutnov', NULL, N'04ce93c6-79f6-4dc7-9046-118050f1f52c')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'50a7ba41-7f51-4479-b11b-bd78097a0b4d', N'Miličín', NULL, N'8867ebfa-5b4b-4b1d-9244-3feff5cccc1e')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'526e8599-a82c-489e-84e5-bd9eb0a10ff9', N'Karviná', NULL, N'7151a028-4172-4f87-891b-8fcdc5da0512')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'9a777441-c48e-4e14-9d1f-bde2df3c634e', N'Jirkov', NULL, N'f213a1af-d80c-411e-a322-b4f13590c2bc')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'4e14ebda-e5fb-4f5e-a5d2-bdfaa32d20f7', N'Znojmo', NULL, N'731b986f-6edc-4118-a3d1-c87ea4d5f2c6')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'1384faad-119a-4ecc-88a2-be7550208055', N'Uherské Hradiště', NULL, N'fac3445f-c492-410c-bd60-0756ff304582')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'fcdda284-a94e-4f7d-8a12-bf1852841c06', N'Příbor', NULL, N'e512730f-4139-48d1-8e75-2d083435564a')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'adba18b2-9a16-4aa0-892c-c037fbbee0c3', N'Bakov nad Jizerou', NULL, N'aaf3c0cd-8c97-4e1a-bb9b-e4f281d5e8d6')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'5c2fb9ab-69de-47f2-aae4-c091331f36d4', N'Frýdek-Místek', NULL, N'426219ab-7df2-4e7b-9761-cdf222810b49')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'1d5710a3-fb7b-4ad4-91bd-c0ca8c8a5e07', N'Jiříkov', NULL, N'fe000b9d-1fde-4e3c-839e-c59fd3c30756')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'ed105e03-c361-4d63-bd23-c144eb8655cc', N'Úterý', NULL, N'9774164e-66ae-4227-89e7-8e304ff26a15')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'2dafdc71-1860-4738-9912-c15a658fa904', N'Trhové Sviny', NULL, N'92256402-4724-4305-a6ca-4df35086d7ac')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'fb9d4b14-0507-4c6b-8fdf-c169ba857773', N'Luže', NULL, N'0b9c7ad9-dd81-4785-a6c1-150994bfb002')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'2b112052-664a-4301-a895-c1a59ee09f92', N'Bechyně', NULL, N'96c4a666-896b-4993-bb06-208983f59146')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'1288d851-7b5f-4e82-a42b-c20f35bb1b8e', N'Hartmanice', NULL, N'e08b64d8-6b1c-4f53-a762-e1afd5ccb66b')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'e8160181-2aff-447d-a7c6-c20fbc4e61e4', N'Písek', NULL, N'00622233-8c10-4dd3-ba29-38191baa7ac0')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'38c06cc3-d2e6-4f7b-831c-c20fd895130e', N'Nalžovské Hory', NULL, N'e08b64d8-6b1c-4f53-a762-e1afd5ccb66b')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'13f591dd-fe2f-4dc2-90d0-c3187cf7625a', N'Mašťov', NULL, N'f213a1af-d80c-411e-a322-b4f13590c2bc')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'c356a640-83c8-430d-b502-c3d150ada132', N'Dobrovice', NULL, N'aaf3c0cd-8c97-4e1a-bb9b-e4f281d5e8d6')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'67332882-c620-4f11-9fe0-c3dc2b9a6c80', N'Smržovka', NULL, N'943b2ee6-0639-4e3f-81e4-5f14179c5c50')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'3166f88f-1fb5-479d-94c3-c41004532f83', N'Bystřice pod Hostýnem', NULL, N'1c81dec4-f396-49ff-8151-9ee7514adcf5')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'e80f0fd4-72c8-4adf-99b4-c41762f4f8d6', N'Rudolfov', NULL, N'92256402-4724-4305-a6ca-4df35086d7ac')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'cf1985b0-e615-46ed-bea8-c60bf741ae93', N'Sedlčany', NULL, N'a46b2ef5-f009-4e1c-a6ef-ea9a91667c24')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'0682a6e2-61ea-4a1e-a95d-c701d2e7e8c7', N'Brandýs nad Orlicí', NULL, N'84b975b7-36a4-4be8-a1cd-cf856720740b')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'3f37d097-7923-4733-9a1e-c89a1099be70', N'Veselí nad Lužnicí', NULL, N'96c4a666-896b-4993-bb06-208983f59146')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'40a41110-ed8b-4e15-9269-c8c278b065cd', N'Rovensko pod Troskami', NULL, N'75d9c303-317b-47c6-a74d-16c9f9860ed5')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'8f7e772e-cb43-4362-93ac-c93e574b1c79', N'Kelč', NULL, N'c41a1e58-0e90-44ba-8203-38bf44af7425')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'f3ce14c1-990e-480d-82d6-c94917400ba6', N'Bochov', NULL, N'9b162c45-856e-4130-8637-d52d50d29728')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'566baa03-12d7-473c-98db-c9a2068365f2', N'Chrudim', NULL, N'0b9c7ad9-dd81-4785-a6c1-150994bfb002')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'19c72127-3b7e-47bc-ba41-ca55b3a6fee8', N'Konice', NULL, N'996e5369-9a3d-43c5-bd0f-4f48e0fccfe1')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'63262951-0d57-4122-9729-cb8da65cf200', N'Nymburk', NULL, N'ee805001-6515-4313-88cf-b234591d91df')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'84564663-f7f8-447b-87f4-cba2ea2b6364', N'Solnice', NULL, N'6139302e-762a-491f-837b-75c3ace49df4')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'30336529-7eb8-46c3-a4d1-cbab8888a460', N'Hrotovice', NULL, N'93bf7742-8fc1-4e68-b623-ac2d660e3317')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'65fb62f4-4373-44f4-83d3-cbcbf5311f71', N'Miroslav', NULL, N'731b986f-6edc-4118-a3d1-c87ea4d5f2c6')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'05024ac4-5417-4ff4-8535-cc69802b46c2', N'Beroun', NULL, N'3c7ccdc8-4755-43b9-a198-71e4c2e6995b')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'968ea476-f744-4c9d-885a-cd370126c6f7', N'Dolní Bousov', NULL, N'aaf3c0cd-8c97-4e1a-bb9b-e4f281d5e8d6')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'017255ad-1d53-4b8b-ad3f-cd48fdd4d84e', N'Oloví', NULL, N'33f2561d-5b92-425f-8501-c45e7e614db9')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'b3a2b63f-b387-4fd7-8f23-cd53180d358a', N'Lipnice nad Sázavou', NULL, N'5b092bf6-95c3-4080-b559-90d49a619e51')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'6d2bc5ae-dae2-4b7d-bc7c-cda21d3e066d', N'Neratovice', NULL, N'51dcf722-92c9-4b3d-aa22-a5908075abb7')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'283ab1f4-2b31-4190-a01a-cdf6ba75da18', N'Uherský Ostroh', NULL, N'fac3445f-c492-410c-bd60-0756ff304582')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'bc01e5ae-7159-4b57-8013-cf3e84591def', N'Český Brod', NULL, N'fd1aada2-399d-4c1b-972b-1259e9d0ff6b')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'f8645f00-055d-4137-9cec-cf6ca7e344f3', N'Kyjov', NULL, N'5aaf2c45-7ef2-45db-97e8-dc65283f9e99')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'5bdfe648-c9db-4452-bebe-cf7aff2cb1b6', N'Lišov', NULL, N'92256402-4724-4305-a6ca-4df35086d7ac')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'229e9e23-91fe-4ac8-8b96-cf9572c6ecd4', N'Hlinsko', NULL, N'0b9c7ad9-dd81-4785-a6c1-150994bfb002')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'74f33695-e4f4-4e50-ad3d-d0449d74e795', N'Loštice', NULL, N'4d0d2b99-e118-46ab-83bc-5e234a202b33')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'85afa45e-bb97-45d8-a088-d09ac05d412f', N'Nové Město pod Smrkem', NULL, N'7d97991f-08bb-42ec-a8ad-2d5ce3c5a49f')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'c7f683b1-cbba-468f-acf9-d15f9dd413c3', N'Nechanice', NULL, N'6ae77e4e-0da2-43a8-b615-bc0f68cc0ce2')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'6cdd373f-4f7b-4cf5-955e-d16e78dbd5d1', N'Řevnice', NULL, N'dba48ff1-aa60-4f29-9d15-5cb55c445ae2')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'be176460-4446-4305-bd7c-d171be088ac7', N'Teplice nad Metují', NULL, N'3c5e757b-4b01-4fc6-86bf-828167b202ff')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'9528ab73-1677-47cd-bb80-d17ee8fbeed0', N'Zubří', NULL, N'c41a1e58-0e90-44ba-8203-38bf44af7425')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'a36901ef-2d3f-4b6a-b2dd-d2064e2b855c', N'Vysoké Veselí', NULL, N'b3516507-3afd-434f-ba8e-dbd37aa110fa')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'f6c18507-dab0-4255-b18e-d22f42d5c14b', N'Bezdružice', NULL, N'3c543323-9c04-4cc7-9cbf-9ce2f651fe23')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'0e747d80-5f9c-4e47-858d-d24641523df8', N'Kojetín', NULL, N'1d932786-5457-412c-89f2-f5388cb72b6c')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'7d054365-2a2e-44f4-b418-d2a2df8e59de', N'Bystré', NULL, N'8e2474e4-419d-40d8-af89-a6c5755ee68d')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'79fdcac1-8e54-48cc-8a22-d2deca8be47d', N'České Budějovice', NULL, N'92256402-4724-4305-a6ca-4df35086d7ac')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'1bdd5c8d-6a7a-4e69-8a7d-d2e36c7c8f56', N'Pelhřimov', NULL, N'88687350-0a1e-41a3-bfd0-5d31dfd38d84')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'd4d15d45-8bf1-477e-9e2e-d3bf16266fca', N'Litoměřice', NULL, N'e5d9ca34-c228-407d-b20a-b4f94b5ac5c5')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'6802b3e8-a674-4100-824a-d3ffc58dacd2', N'Košťany', NULL, N'4d72c278-4cde-4ac6-8765-8463a0c5f9b6')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'3eaae1dd-c5d3-4762-b151-d4961adc7c55', N'Trmice', NULL, N'88fcedd4-b1dc-4a56-889f-5e30bf51e493')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'74494dc1-46f3-4ad0-af91-d4c6e31a3a2b', N'Rosice', NULL, N'f03d7a01-992e-4491-9d40-a389de23a24b')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'4b2d1e8a-ba1b-42ee-8b0b-d545ae434625', N'Zákupy', NULL, N'4b716149-1210-40ab-b2f2-83da874258a3')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'07c29a35-bdcc-40c7-bf1c-d5b7f9cea093', N'Olomouc', NULL, N'f5fca20e-fb1e-4f6e-8a0f-159633bc97e2')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'efdae04c-ba15-4415-b7da-d5feb355bcec', N'Svoboda nad Úpou', NULL, N'04ce93c6-79f6-4dc7-9046-118050f1f52c')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'0f2587e0-0947-4ddb-b5fb-d6155602073e', N'Bělá nad Radbuzou', NULL, N'f6fef133-cc42-44c4-b65b-7e42c14fab88')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'5cdd2437-a245-4615-b567-d7bfd32555e0', N'Strážov', NULL, N'e08b64d8-6b1c-4f53-a762-e1afd5ccb66b')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'b7523297-e3d1-4351-b4f7-d86da0072ed7', N'Nová Paka', NULL, N'b3516507-3afd-434f-ba8e-dbd37aa110fa')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'b47b5c11-7a2a-4a2f-9b13-d94ac11781b0', N'Lom', NULL, N'651ec49f-0322-4f81-886d-0cf544cec9f7')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'fc6e4325-5f9e-4f6f-a9eb-da53e5ac4d7d', N'Plzeň', NULL, N'5c370898-d5fb-4f60-8f19-32f93e4e6acd')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'e29f28d7-7b0c-4077-a4c3-da64562f496d', N'Stárkov', NULL, N'3c5e757b-4b01-4fc6-86bf-828167b202ff')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'94797caf-5791-4bc4-850c-da9e415ae521', N'Jáchymov', NULL, N'9b162c45-856e-4130-8637-d52d50d29728')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'76523701-458e-4951-aae9-dad3575eb8e8', N'Rožmberk nad Vltavou', NULL, N'f1bdb9c5-8532-46d6-b5e7-57b11e4e4d4e')
GO
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'f23adc83-a84b-4149-98e1-dad382790e74', N'Rychnov u Jablonce nad Nisou', NULL, N'943b2ee6-0639-4e3f-81e4-5f14179c5c50')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'adefdf15-a392-4051-8cee-db2edf720992', N'Dolní Benešov', NULL, N'e1f5cdb2-57f2-4ef1-bd18-089723df66ec')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'981e913c-d6a4-4059-b496-db3719489184', N'Toužim', NULL, N'9b162c45-856e-4130-8637-d52d50d29728')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'6c65f1f0-0d96-4450-a950-db45e33c0be9', N'Terezín', NULL, N'e5d9ca34-c228-407d-b20a-b4f94b5ac5c5')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'c01c94b7-3c0f-4198-81bb-db499394632c', N'Valašské Klobouky', NULL, N'4fffb9bc-7493-48d2-a9bd-5a9147e00403')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'93780061-0b4f-4427-99d7-db5fdb932ef7', N'Bělá pod Bezdězem', NULL, N'aaf3c0cd-8c97-4e1a-bb9b-e4f281d5e8d6')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'0bfe33b6-8c36-4a5b-bb22-db7f6a7f7da0', N'Velvary', NULL, N'cb9c4c5d-561b-4d47-a8b7-bf0cacc3a7d6')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'f043f594-6c68-4350-aaea-dcb0bb72c972', N'Velké Bílovice', NULL, N'50c65cec-c13b-4551-9c93-7c93d7495ca5')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'deebf1bc-dcb1-4e4c-978d-dcf39c662da8', N'Proseč', NULL, N'0b9c7ad9-dd81-4785-a6c1-150994bfb002')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'95de55ac-43df-407f-8a95-dd272810996a', N'Čelákovice', NULL, N'a7d4eac5-d033-4c98-9d70-532d49c2c06f')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'f9a5babd-717a-4778-b9b2-de35759a6cc0', N'Třebechovice pod Orebem', NULL, N'6ae77e4e-0da2-43a8-b615-bc0f68cc0ce2')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'b535e8f8-e8bf-4cef-9258-deac645c4e59', N'Žebrák', NULL, N'3c7ccdc8-4755-43b9-a198-71e4c2e6995b')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'7e5a3505-dfed-476c-9c99-deb39b5d3892', N'Habry', NULL, N'5b092bf6-95c3-4080-b559-90d49a619e51')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'5022fdb0-3f4d-4abf-9d21-deecdaab2525', N'Staré Město', NULL, N'4d0d2b99-e118-46ab-83bc-5e234a202b33')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'd28cd732-4035-48c8-8ff1-df1996bde230', N'Janovice nad Úhlavou', NULL, N'e08b64d8-6b1c-4f53-a762-e1afd5ccb66b')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'71103c19-b01f-4941-8b4b-df3aa5911172', N'Stráž nad Nežárkou', NULL, N'509d8d58-3a8a-43da-8a4c-4ab9771c1639')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'48d0548e-23a9-4e03-b316-df6ebbe5d813', N'Most', NULL, N'651ec49f-0322-4f81-886d-0cf544cec9f7')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'bd5bbcdf-e65e-4583-aeea-dff273bc2f78', N'Rakovník', NULL, N'c0c13d2c-44f7-4572-a74e-a07370571bf2')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'7f11197f-e367-4486-a10b-e04e5232576c', N'Jablunkov', NULL, N'426219ab-7df2-4e7b-9761-cdf222810b49')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'422824e0-00e4-4e78-913b-e064454b923d', N'Stod', NULL, N'ed79ca87-17be-4818-b36a-33edc2c5792d')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'70448cfd-e0a4-4ba1-9279-e11a974422b8', N'Moravský Beroun', NULL, N'f5fca20e-fb1e-4f6e-8a0f-159633bc97e2')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'2e9b260f-f648-4640-9b0a-e22b55778232', N'Kutná Hora', NULL, N'be7d4d9a-fde3-4ef7-9680-b9eacae7dbab')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'e7edfb59-485b-49e0-8ca2-e23f1b781980', N'Židlochovice', NULL, N'f03d7a01-992e-4491-9d40-a389de23a24b')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'2a8639f8-3ad7-425d-8a38-e31648f8270e', N'Zlín', NULL, N'4fffb9bc-7493-48d2-a9bd-5a9147e00403')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'9ed52b06-076b-431c-9cd8-e33e77411f55', N'Kaznějov', NULL, N'9774164e-66ae-4227-89e7-8e304ff26a15')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'416aa8e9-2868-4aec-a1f2-e350b47c5868', N'Krupka', NULL, N'4d72c278-4cde-4ac6-8765-8463a0c5f9b6')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'459c528d-bde3-4cbf-96eb-e35cb73b93da', N'Počátky', NULL, N'88687350-0a1e-41a3-bfd0-5d31dfd38d84')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'fbb6b640-65be-4b3d-946e-e4be2dd29e7a', N'Hluboká nad Vltavou', NULL, N'92256402-4724-4305-a6ca-4df35086d7ac')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'7d6a7dea-a81e-43af-82ec-e4e09133f483', N'Otrokovice', NULL, N'4fffb9bc-7493-48d2-a9bd-5a9147e00403')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'6e5accaf-340a-408e-8de6-e4ebe5ce8ac9', N'Andělská Hora', NULL, N'3a287cdd-398e-4c31-bebc-1bacc7d96d47')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'b9ba95ae-514e-45e3-af30-e4f59b52e84b', N'Dašice', NULL, N'a8741af1-f76a-44e9-aa19-cb6c6e3bf6f9')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'1aa21ea9-d919-4015-a0d6-e5a23e9629e9', N'Břeclav', NULL, N'50c65cec-c13b-4551-9c93-7c93d7495ca5')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'ac635df1-3674-446f-a930-e5fc0e5fb00a', N'Janov', NULL, N'3a287cdd-398e-4c31-bebc-1bacc7d96d47')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'71fc0923-6a53-4386-a16e-e6c685bbf770', N'Týniště nad Orlicí', NULL, N'6139302e-762a-491f-837b-75c3ace49df4')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'a42240cb-723f-4eac-9016-e7b7198279fc', N'Říčany', NULL, N'a7d4eac5-d033-4c98-9d70-532d49c2c06f')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'af384f87-fd9d-4754-8a46-e7cc30dcff16', N'Rožnov pod Radhoštěm', NULL, N'c41a1e58-0e90-44ba-8203-38bf44af7425')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'e032ae21-5fa3-415d-a617-e7d37a0b71ab', N'Kroměříž', NULL, N'1c81dec4-f396-49ff-8151-9ee7514adcf5')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'2b28b6a7-03b0-4139-8ec7-e810f3d19f07', N'Žatec', NULL, N'5789d178-5a9d-48ca-9c74-59c3efce532f')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'ed0af25a-fa98-4234-a7a8-e82cdc872d3b', N'Uhlířské Janovice', NULL, N'19402871-a40c-41bc-9c74-f759d04f80aa')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'dcf2053d-8e06-43f3-be49-e8639fc8011b', N'Blansko', NULL, N'c6aace4f-21c5-441e-b8ef-41fef4773be5')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'419ab907-9b28-4035-a924-e8f43a42ee24', N'Smečno', NULL, N'cb9c4c5d-561b-4d47-a8b7-bf0cacc3a7d6')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'9334d468-a4ce-44f8-bd65-e9a2e0d548fc', N'Velké Hamry', NULL, N'943b2ee6-0639-4e3f-81e4-5f14179c5c50')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'300cf953-9177-42d9-bb5c-ea25e63bd420', N'Strážnice', NULL, N'5aaf2c45-7ef2-45db-97e8-dc65283f9e99')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'3acf8500-3d76-4957-aa22-ea5ed6cc99ee', N'Staňkov', NULL, N'f6fef133-cc42-44c4-b65b-7e42c14fab88')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'270bc7b6-ce41-4825-8f71-eb5629a7cf6e', N'Morkovice-Slížany', NULL, N'1c81dec4-f396-49ff-8151-9ee7514adcf5')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'ff67d9c4-1854-4aff-8c8a-eb7881e16589', N'Javorník', NULL, N'3dba0bd0-f3fb-4b6d-bf6c-c9c4705b8c21')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'd7128c68-a81d-47da-97bc-ebaecf2fcef6', N'Plesná', NULL, N'7a5f4056-85a6-4cb8-bbca-a65ef045d2e6')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'b65d84f6-4ac8-495a-8507-ec4cd39234f6', N'Přelouč', NULL, N'a8741af1-f76a-44e9-aa19-cb6c6e3bf6f9')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'15f71e0f-1d71-411c-94fb-ecb35a636bc9', N'Přebuz', NULL, N'33f2561d-5b92-425f-8501-c45e7e614db9')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'5565a660-7647-4b78-813f-ed0d9a38d305', N'Březová nad Svitavou', NULL, N'8e2474e4-419d-40d8-af89-a6c5755ee68d')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'830d68f4-0ba3-41b8-a63a-ed2ed1832386', N'České Velenice', NULL, N'509d8d58-3a8a-43da-8a4c-4ab9771c1639')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'50df0598-86f9-4964-8ff6-ed5b2906983b', N'Bečov nad Teplou', NULL, N'9b162c45-856e-4130-8637-d52d50d29728')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'ec9033e1-e553-4c4b-8b6e-ed84f6327548', N'Golčův Jeníkov', NULL, N'5b092bf6-95c3-4080-b559-90d49a619e51')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'21001a02-5b76-4ed2-a4ee-ee41a4a837e5', N'Újezd u Brna', NULL, N'f03d7a01-992e-4491-9d40-a389de23a24b')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'0ea2cad2-1fa8-4755-a95b-ef5579a3cae6', N'Slatiňany', NULL, N'0b9c7ad9-dd81-4785-a6c1-150994bfb002')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'36b1f64e-aa47-4d7d-98f3-f00ea61eb91b', N'Petřvald', NULL, N'7151a028-4172-4f87-891b-8fcdc5da0512')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'6547098e-f490-46cc-8714-f0638b5b2f8b', N'Chabařovice', NULL, N'88fcedd4-b1dc-4a56-889f-5e30bf51e493')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'a360dc24-351e-4bb7-a31b-f07df811c368', N'Hradec nad Moravicí', NULL, N'e1f5cdb2-57f2-4ef1-bd18-089723df66ec')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'138d5d2b-cc84-4248-af3b-f09377f4cb00', N'Hořovice', NULL, N'3c7ccdc8-4755-43b9-a198-71e4c2e6995b')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'128a74a7-4e64-4352-8bfb-f0bd010b1a54', N'Milevsko', NULL, N'00622233-8c10-4dd3-ba29-38191baa7ac0')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'cb1a3aae-849b-4e12-8fd3-f0cc5f0bdde1', N'Hejnice', NULL, N'7d97991f-08bb-42ec-a8ad-2d5ce3c5a49f')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'09b08722-9bb4-4d96-a990-f0ff3f12cba1', N'Choceň', NULL, N'84b975b7-36a4-4be8-a1cd-cf856720740b')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'0da0b93c-104e-4a0a-870c-f18ac6d46c9a', N'Horní Jelení', NULL, N'a8741af1-f76a-44e9-aa19-cb6c6e3bf6f9')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'4620405e-6f59-414d-9e93-f19b294473a1', N'Skuteč', NULL, N'0b9c7ad9-dd81-4785-a6c1-150994bfb002')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'8fdc8a0b-f453-44cf-bfe4-f1b79f41f64b', N'Mohelnice', NULL, N'4d0d2b99-e118-46ab-83bc-5e234a202b33')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'b6242250-f78c-45d7-aee9-f1e88f733c35', N'Chřibská', NULL, N'fe000b9d-1fde-4e3c-839e-c59fd3c30756')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'9981a2c2-917d-46bd-a41f-f1f3043e0102', N'Pardubice', NULL, N'a8741af1-f76a-44e9-aa19-cb6c6e3bf6f9')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'98a78b42-506a-4f23-9139-f2c218e1b012', N'Bzenec', NULL, N'5aaf2c45-7ef2-45db-97e8-dc65283f9e99')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'9d5decdc-9348-4d1c-9338-f2dbcd5f57d6', N'Roudnice nad Labem', NULL, N'e5d9ca34-c228-407d-b20a-b4f94b5ac5c5')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'a3b85bd7-867e-4b9b-a9cd-f2dc328442e9', N'Šternberk', NULL, N'f5fca20e-fb1e-4f6e-8a0f-159633bc97e2')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'10f35f41-83e3-494d-9357-f300060bb187', N'Železná Ruda', NULL, N'e08b64d8-6b1c-4f53-a762-e1afd5ccb66b')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'6e349a1e-1d17-409a-8a86-f351f41202b8', N'Třebíč', NULL, N'93bf7742-8fc1-4e68-b623-ac2d660e3317')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'8a189d14-2183-4bb5-953d-f3da479575fc', N'Slaný', NULL, N'cb9c4c5d-561b-4d47-a8b7-bf0cacc3a7d6')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'aa1e0fcd-9fe6-48a4-b177-f532c1809131', N'Lučany nad Nisou', NULL, N'943b2ee6-0639-4e3f-81e4-5f14179c5c50')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'd42aff8e-afee-4578-811d-f54f8c50a088', N'Volyně', NULL, N'be7d4d9a-fde3-4ef7-9680-b9eacae7dbab')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'f8739760-d036-4d95-b76d-f6ac94bdc9ca', N'Ždírec nad Doubravou', NULL, N'5b092bf6-95c3-4080-b559-90d49a619e51')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'4e00e5dc-ca78-4768-959e-f6bcd4578b6b', N'Meziměstí', NULL, N'3c5e757b-4b01-4fc6-86bf-828167b202ff')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'078e5be6-daef-4e94-ac96-f754cfa19f09', N'Uherský Brod', NULL, N'fac3445f-c492-410c-bd60-0756ff304582')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'cf5f69a5-9906-4695-9549-f75c4872160b', N'Mikulášovice', NULL, N'fe000b9d-1fde-4e3c-839e-c59fd3c30756')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'8cdeab11-4d59-4e95-bbdb-f81957011839', N'Česká Třebová', NULL, N'84b975b7-36a4-4be8-a1cd-cf856720740b')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'613d6360-3eab-40e6-b944-f83209ed4624', N'Hluk', NULL, N'fac3445f-c492-410c-bd60-0756ff304582')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'a0a37b26-c6e8-4f35-b400-f8413b445ede', N'Fulnek', NULL, N'e512730f-4139-48d1-8e75-2d083435564a')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'9fa0332a-bcf3-4e2a-a4f4-f8bd667a358c', N'Kouřim', NULL, N'fd1aada2-399d-4c1b-972b-1259e9d0ff6b')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'c92d6ada-998f-4a21-b2dd-f8c34f95eb58', N'Horní Bříza', NULL, N'9774164e-66ae-4227-89e7-8e304ff26a15')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'dede710b-3fef-459a-8166-f8cfcdead700', N'Vyškov', NULL, N'80b59a04-bde9-4d4d-88f4-08ca917af61b')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'702ec0d4-bdd3-4ce7-99a9-f8e13b315035', N'Klobouky u Brna', NULL, N'50c65cec-c13b-4551-9c93-7c93d7495ca5')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'160dfc7c-8893-4ff4-8a8b-f92645b877f8', N'Lázně Bohdaneč', NULL, N'a8741af1-f76a-44e9-aa19-cb6c6e3bf6f9')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'5e96e01a-bd68-471c-a57b-f9535d0e0585', N'Bystřice nad Pernštejnem', NULL, N'e8dd2116-5fe8-4f2f-80ee-ed7cac534588')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'40a92f8b-56df-4001-87db-f95d03187729', N'Kunovice', NULL, N'fac3445f-c492-410c-bd60-0756ff304582')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'05e89e6a-26a9-4c5d-b3f0-f9bbe4e11738', N'Čáslav', NULL, N'19402871-a40c-41bc-9c74-f759d04f80aa')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'5c76db54-8691-4da2-a30a-f9dccbfcbebc', N'Modřice', NULL, N'f03d7a01-992e-4491-9d40-a389de23a24b')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'3f824250-5cb1-4c0a-bb59-fa3feadfb2ee', N'Kralovice', NULL, N'9774164e-66ae-4227-89e7-8e304ff26a15')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'5130ba56-8966-43f0-bf72-fa59bb68ee45', N'Horní Blatná', NULL, N'9b162c45-856e-4130-8637-d52d50d29728')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'cadc1258-4672-4827-b0ac-fad545b4e844', N'Holýšov', NULL, N'ed79ca87-17be-4818-b36a-33edc2c5792d')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'd7f94aa2-6feb-4f91-9589-fb1562886a21', N'Chodov', NULL, N'33f2561d-5b92-425f-8501-c45e7e614db9')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'5fdb292a-ff21-4fc3-b490-fb1b83b8cb20', N'Sokolov', NULL, N'33f2561d-5b92-425f-8501-c45e7e614db9')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'810cb88c-69ef-428c-9377-fb360c441322', N'Štěpánov', NULL, N'f5fca20e-fb1e-4f6e-8a0f-159633bc97e2')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'9951c953-504c-40b0-9c77-fb5c5a783824', N'Jesenice', NULL, N'dba48ff1-aa60-4f29-9d15-5cb55c445ae2')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'624c1edc-c232-4e0c-bd3e-fb765ba333a2', N'Lanškroun', NULL, N'84b975b7-36a4-4be8-a1cd-cf856720740b')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'e8bacf5e-3d90-4c2c-8b35-fc0ae4f42670', N'Liberec', NULL, N'7d97991f-08bb-42ec-a8ad-2d5ce3c5a49f')
GO
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'6f3ee9c6-cb05-4438-a1f9-fc971634fc58', N'Poděbrady', NULL, N'ee805001-6515-4313-88cf-b234591d91df')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'70e51c32-010d-44ed-86f8-fcc66be1381b', N'Zdice', NULL, N'3c7ccdc8-4755-43b9-a198-71e4c2e6995b')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'a5785522-c7b4-4a64-928b-fd52c79bd931', N'Zliv', NULL, N'92256402-4724-4305-a6ca-4df35086d7ac')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'ba00b239-9337-4703-8b71-fd81c7e21b79', N'Rajhrad', NULL, N'f03d7a01-992e-4491-9d40-a389de23a24b')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'45bf31d9-369d-4049-ad40-fdb5eb5dc1cd', N'Semily', NULL, N'75d9c303-317b-47c6-a74d-16c9f9860ed5')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'6d9f5f4e-c031-4703-9be8-fdf4e0f78be5', N'Slavkov u Brna', NULL, N'80b59a04-bde9-4d4d-88f4-08ca917af61b')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'e32a78c6-b5a5-4b80-9dd2-fe869003e5bd', N'Klimkovice', NULL, N'971c5360-1bb0-4ce2-80c3-2d6901e72b15')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'ca704a13-a215-4cec-be68-fe9528d495e8', N'Tábor', NULL, N'96c4a666-896b-4993-bb06-208983f59146')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'd49e685d-69fc-4d13-becd-fe9c3637e0d7', N'Rychvald', NULL, N'7151a028-4172-4f87-891b-8fcdc5da0512')
INSERT [dbo].[tbCities] ([Id], [Name], [PostCode], [DistrictId]) VALUES (N'24c119cd-c7a9-4896-a471-fef2c620f310', N'Frenštát pod Radhoštěm', NULL, N'e512730f-4139-48d1-8e75-2d083435564a')
GO
INSERT [dbo].[tbDistrict] ([Id], [Name], [Kraj]) VALUES (N'fac3445f-c492-410c-bd60-0756ff304582', N'Okres Uherské Hradiště', 13)
INSERT [dbo].[tbDistrict] ([Id], [Name], [Kraj]) VALUES (N'e1f5cdb2-57f2-4ef1-bd18-089723df66ec', N'Okres Opava', 12)
INSERT [dbo].[tbDistrict] ([Id], [Name], [Kraj]) VALUES (N'80b59a04-bde9-4d4d-88f4-08ca917af61b', N'Okres Vyškov', 10)
INSERT [dbo].[tbDistrict] ([Id], [Name], [Kraj]) VALUES (N'651ec49f-0322-4f81-886d-0cf544cec9f7', N'Okres Most', 5)
INSERT [dbo].[tbDistrict] ([Id], [Name], [Kraj]) VALUES (N'04ce93c6-79f6-4dc7-9046-118050f1f52c', N'Okres Trutnov', 7)
INSERT [dbo].[tbDistrict] ([Id], [Name], [Kraj]) VALUES (N'fd1aada2-399d-4c1b-972b-1259e9d0ff6b', N'Okres Kolín', 1)
INSERT [dbo].[tbDistrict] ([Id], [Name], [Kraj]) VALUES (N'0b9c7ad9-dd81-4785-a6c1-150994bfb002', N'Okres Chrudim', 8)
INSERT [dbo].[tbDistrict] ([Id], [Name], [Kraj]) VALUES (N'f5fca20e-fb1e-4f6e-8a0f-159633bc97e2', N'Okres Olomouc', 11)
INSERT [dbo].[tbDistrict] ([Id], [Name], [Kraj]) VALUES (N'75d9c303-317b-47c6-a74d-16c9f9860ed5', N'Okres Semily', 6)
INSERT [dbo].[tbDistrict] ([Id], [Name], [Kraj]) VALUES (N'26068977-b905-43f3-90ed-1a96106bdd94', N'Okres Brno-město', 10)
INSERT [dbo].[tbDistrict] ([Id], [Name], [Kraj]) VALUES (N'3a287cdd-398e-4c31-bebc-1bacc7d96d47', N'Okres Bruntál', 12)
INSERT [dbo].[tbDistrict] ([Id], [Name], [Kraj]) VALUES (N'96c4a666-896b-4993-bb06-208983f59146', N'Okres Tábor', 2)
INSERT [dbo].[tbDistrict] ([Id], [Name], [Kraj]) VALUES (N'0f456bc2-4cd0-44ee-abce-281bf830a79f', N'Okres Rokycany', 3)
INSERT [dbo].[tbDistrict] ([Id], [Name], [Kraj]) VALUES (N'e512730f-4139-48d1-8e75-2d083435564a', N'Okres Nový Jičín', 12)
INSERT [dbo].[tbDistrict] ([Id], [Name], [Kraj]) VALUES (N'7d97991f-08bb-42ec-a8ad-2d5ce3c5a49f', N'Okres Liberec', 6)
INSERT [dbo].[tbDistrict] ([Id], [Name], [Kraj]) VALUES (N'971c5360-1bb0-4ce2-80c3-2d6901e72b15', N'Okres Ostrava-město', 12)
INSERT [dbo].[tbDistrict] ([Id], [Name], [Kraj]) VALUES (N'5c370898-d5fb-4f60-8f19-32f93e4e6acd', N'Okres Plzeň-město', 3)
INSERT [dbo].[tbDistrict] ([Id], [Name], [Kraj]) VALUES (N'ed79ca87-17be-4818-b36a-33edc2c5792d', N'Okres Plzeň-jih', 3)
INSERT [dbo].[tbDistrict] ([Id], [Name], [Kraj]) VALUES (N'00622233-8c10-4dd3-ba29-38191baa7ac0', N'Okres Písek', 2)
INSERT [dbo].[tbDistrict] ([Id], [Name], [Kraj]) VALUES (N'c41a1e58-0e90-44ba-8203-38bf44af7425', N'Okres Vsetín', 13)
INSERT [dbo].[tbDistrict] ([Id], [Name], [Kraj]) VALUES (N'8867ebfa-5b4b-4b1d-9244-3feff5cccc1e', N'Okres Benešov', 1)
INSERT [dbo].[tbDistrict] ([Id], [Name], [Kraj]) VALUES (N'c6aace4f-21c5-441e-b8ef-41fef4773be5', N'Okres Blansko', 10)
INSERT [dbo].[tbDistrict] ([Id], [Name], [Kraj]) VALUES (N'509d8d58-3a8a-43da-8a4c-4ab9771c1639', N'Okres Jindřichův Hradec', 2)
INSERT [dbo].[tbDistrict] ([Id], [Name], [Kraj]) VALUES (N'92256402-4724-4305-a6ca-4df35086d7ac', N'Okres České Budějovice', 2)
INSERT [dbo].[tbDistrict] ([Id], [Name], [Kraj]) VALUES (N'996e5369-9a3d-43c5-bd0f-4f48e0fccfe1', N'Okres Prostějov', 11)
INSERT [dbo].[tbDistrict] ([Id], [Name], [Kraj]) VALUES (N'a7d4eac5-d033-4c98-9d70-532d49c2c06f', N'Okres Praha-východ', 1)
INSERT [dbo].[tbDistrict] ([Id], [Name], [Kraj]) VALUES (N'f1bdb9c5-8532-46d6-b5e7-57b11e4e4d4e', N'Okres Český Krumlov', 2)
INSERT [dbo].[tbDistrict] ([Id], [Name], [Kraj]) VALUES (N'5789d178-5a9d-48ca-9c74-59c3efce532f', N'Okres Louny', 5)
INSERT [dbo].[tbDistrict] ([Id], [Name], [Kraj]) VALUES (N'4fffb9bc-7493-48d2-a9bd-5a9147e00403', N'Okres Zlín', 13)
INSERT [dbo].[tbDistrict] ([Id], [Name], [Kraj]) VALUES (N'b8cd8008-82ba-46db-97cc-5ab1c1d8dc9b', N'Okres Jihlava', 9)
INSERT [dbo].[tbDistrict] ([Id], [Name], [Kraj]) VALUES (N'dba48ff1-aa60-4f29-9d15-5cb55c445ae2', N'Okres Praha-západ', 1)
INSERT [dbo].[tbDistrict] ([Id], [Name], [Kraj]) VALUES (N'88687350-0a1e-41a3-bfd0-5d31dfd38d84', N'Okres Pelhřimov', 9)
INSERT [dbo].[tbDistrict] ([Id], [Name], [Kraj]) VALUES (N'4d0d2b99-e118-46ab-83bc-5e234a202b33', N'Okres Šumperk', 11)
INSERT [dbo].[tbDistrict] ([Id], [Name], [Kraj]) VALUES (N'88fcedd4-b1dc-4a56-889f-5e30bf51e493', N'Okres Ústí nad Labem', 5)
INSERT [dbo].[tbDistrict] ([Id], [Name], [Kraj]) VALUES (N'943b2ee6-0639-4e3f-81e4-5f14179c5c50', N'Okres Jablonec nad Nisou', 6)
INSERT [dbo].[tbDistrict] ([Id], [Name], [Kraj]) VALUES (N'3c7ccdc8-4755-43b9-a198-71e4c2e6995b', N'Okres Beroun', 1)
INSERT [dbo].[tbDistrict] ([Id], [Name], [Kraj]) VALUES (N'6139302e-762a-491f-837b-75c3ace49df4', N'Okres Rychnov nad Kněžnou', 7)
INSERT [dbo].[tbDistrict] ([Id], [Name], [Kraj]) VALUES (N'50c65cec-c13b-4551-9c93-7c93d7495ca5', N'Okres Břeclav', 10)
INSERT [dbo].[tbDistrict] ([Id], [Name], [Kraj]) VALUES (N'f6fef133-cc42-44c4-b65b-7e42c14fab88', N'Okres Domažlice', 3)
INSERT [dbo].[tbDistrict] ([Id], [Name], [Kraj]) VALUES (N'3c5e757b-4b01-4fc6-86bf-828167b202ff', N'Okres Náchod', 7)
INSERT [dbo].[tbDistrict] ([Id], [Name], [Kraj]) VALUES (N'4b716149-1210-40ab-b2f2-83da874258a3', N'Okres Česká Lípa', 6)
INSERT [dbo].[tbDistrict] ([Id], [Name], [Kraj]) VALUES (N'4d72c278-4cde-4ac6-8765-8463a0c5f9b6', N'Okres Teplice', 5)
INSERT [dbo].[tbDistrict] ([Id], [Name], [Kraj]) VALUES (N'9774164e-66ae-4227-89e7-8e304ff26a15', N'Okres Plzeň-sever', 3)
INSERT [dbo].[tbDistrict] ([Id], [Name], [Kraj]) VALUES (N'7151a028-4172-4f87-891b-8fcdc5da0512', N'Okres Karviná', 12)
INSERT [dbo].[tbDistrict] ([Id], [Name], [Kraj]) VALUES (N'5b092bf6-95c3-4080-b559-90d49a619e51', N'Okres Havlíčkův Brod', 9)
INSERT [dbo].[tbDistrict] ([Id], [Name], [Kraj]) VALUES (N'3c543323-9c04-4cc7-9cbf-9ce2f651fe23', N'Okres Tachov', 3)
INSERT [dbo].[tbDistrict] ([Id], [Name], [Kraj]) VALUES (N'1c81dec4-f396-49ff-8151-9ee7514adcf5', N'Okres Kroměříž', 13)
INSERT [dbo].[tbDistrict] ([Id], [Name], [Kraj]) VALUES (N'c0c13d2c-44f7-4572-a74e-a07370571bf2', N'Okres Rakovník', 1)
INSERT [dbo].[tbDistrict] ([Id], [Name], [Kraj]) VALUES (N'f03d7a01-992e-4491-9d40-a389de23a24b', N'Okres Brno-venkov', 10)
INSERT [dbo].[tbDistrict] ([Id], [Name], [Kraj]) VALUES (N'51dcf722-92c9-4b3d-aa22-a5908075abb7', N'Okres Mělník', 1)
INSERT [dbo].[tbDistrict] ([Id], [Name], [Kraj]) VALUES (N'7a5f4056-85a6-4cb8-bbca-a65ef045d2e6', N'Okres Cheb', 4)
INSERT [dbo].[tbDistrict] ([Id], [Name], [Kraj]) VALUES (N'8e2474e4-419d-40d8-af89-a6c5755ee68d', N'Okres Svitavy', 8)
INSERT [dbo].[tbDistrict] ([Id], [Name], [Kraj]) VALUES (N'93bf7742-8fc1-4e68-b623-ac2d660e3317', N'Okres Třebíč', 9)
INSERT [dbo].[tbDistrict] ([Id], [Name], [Kraj]) VALUES (N'ee805001-6515-4313-88cf-b234591d91df', N'Okres Nymburk', 1)
INSERT [dbo].[tbDistrict] ([Id], [Name], [Kraj]) VALUES (N'f213a1af-d80c-411e-a322-b4f13590c2bc', N'Okres Chomutov', 5)
INSERT [dbo].[tbDistrict] ([Id], [Name], [Kraj]) VALUES (N'e5d9ca34-c228-407d-b20a-b4f94b5ac5c5', N'Okres Litoměřice', 5)
INSERT [dbo].[tbDistrict] ([Id], [Name], [Kraj]) VALUES (N'be7d4d9a-fde3-4ef7-9680-b9eacae7dbab', N'Okres Strakonice', 2)
INSERT [dbo].[tbDistrict] ([Id], [Name], [Kraj]) VALUES (N'6ae77e4e-0da2-43a8-b615-bc0f68cc0ce2', N'Okres Hradec Králové', 7)
INSERT [dbo].[tbDistrict] ([Id], [Name], [Kraj]) VALUES (N'cb9c4c5d-561b-4d47-a8b7-bf0cacc3a7d6', N'Okres Kladno', 1)
INSERT [dbo].[tbDistrict] ([Id], [Name], [Kraj]) VALUES (N'33f2561d-5b92-425f-8501-c45e7e614db9', N'Okres Sokolov', 4)
INSERT [dbo].[tbDistrict] ([Id], [Name], [Kraj]) VALUES (N'fe000b9d-1fde-4e3c-839e-c59fd3c30756', N'Okres Děčín', 5)
INSERT [dbo].[tbDistrict] ([Id], [Name], [Kraj]) VALUES (N'731b986f-6edc-4118-a3d1-c87ea4d5f2c6', N'Okres Znojmo', 10)
INSERT [dbo].[tbDistrict] ([Id], [Name], [Kraj]) VALUES (N'3dba0bd0-f3fb-4b6d-bf6c-c9c4705b8c21', N'Okres Jeseník', 11)
INSERT [dbo].[tbDistrict] ([Id], [Name], [Kraj]) VALUES (N'a8741af1-f76a-44e9-aa19-cb6c6e3bf6f9', N'Okres Pardubice', 8)
INSERT [dbo].[tbDistrict] ([Id], [Name], [Kraj]) VALUES (N'426219ab-7df2-4e7b-9761-cdf222810b49', N'Okres Frýdek-Místek', 12)
INSERT [dbo].[tbDistrict] ([Id], [Name], [Kraj]) VALUES (N'84b975b7-36a4-4be8-a1cd-cf856720740b', N'Okres Ústí nad Orlicí', 8)
INSERT [dbo].[tbDistrict] ([Id], [Name], [Kraj]) VALUES (N'52710db2-9fad-4a17-8695-d22f610a535b', N'Okres Prachatice', 2)
INSERT [dbo].[tbDistrict] ([Id], [Name], [Kraj]) VALUES (N'9b162c45-856e-4130-8637-d52d50d29728', N'Okres Karlovy Vary', 4)
INSERT [dbo].[tbDistrict] ([Id], [Name], [Kraj]) VALUES (N'b3516507-3afd-434f-ba8e-dbd37aa110fa', N'Okres Jičín', 7)
INSERT [dbo].[tbDistrict] ([Id], [Name], [Kraj]) VALUES (N'5aaf2c45-7ef2-45db-97e8-dc65283f9e99', N'Okres Hodonín', 10)
INSERT [dbo].[tbDistrict] ([Id], [Name], [Kraj]) VALUES (N'e08b64d8-6b1c-4f53-a762-e1afd5ccb66b', N'Okres Klatovy', 3)
INSERT [dbo].[tbDistrict] ([Id], [Name], [Kraj]) VALUES (N'aaf3c0cd-8c97-4e1a-bb9b-e4f281d5e8d6', N'Okres Mladá Boleslav', 1)
INSERT [dbo].[tbDistrict] ([Id], [Name], [Kraj]) VALUES (N'a46b2ef5-f009-4e1c-a6ef-ea9a91667c24', N'Okres Příbram', 1)
INSERT [dbo].[tbDistrict] ([Id], [Name], [Kraj]) VALUES (N'e8dd2116-5fe8-4f2f-80ee-ed7cac534588', N'Okres Žďár nad Sázavou', 9)
INSERT [dbo].[tbDistrict] ([Id], [Name], [Kraj]) VALUES (N'82149be8-f84a-4682-9d7a-f2d6e398152e', N'Praha', 0)
INSERT [dbo].[tbDistrict] ([Id], [Name], [Kraj]) VALUES (N'1d932786-5457-412c-89f2-f5388cb72b6c', N'Okres Přerov', 11)
INSERT [dbo].[tbDistrict] ([Id], [Name], [Kraj]) VALUES (N'19402871-a40c-41bc-9c74-f759d04f80aa', N'Okres Kutná Hora', 1)
GO
INSERT [dbo].[tbGroupParameters] ([Id], [Name]) VALUES (N'9f9c083b-5168-4504-4b19-08dbfa41e132', N'Number of rooms')
INSERT [dbo].[tbGroupParameters] ([Id], [Name]) VALUES (N'169de148-df29-400d-ddd5-08dbfa8adb9f', N'Number of balcoons')
INSERT [dbo].[tbGroupParameters] ([Id], [Name]) VALUES (N'2621b427-e439-4eae-6b1a-08dbfb1cec4b', N'Number of walls')
INSERT [dbo].[tbGroupParameters] ([Id], [Name]) VALUES (N'2ae6fd88-5573-4982-6bc1-08dc0aeac91d', N'test')
INSERT [dbo].[tbGroupParameters] ([Id], [Name]) VALUES (N'23035557-a01b-4454-8927-3c67e789abd4', N'Wall Color')
GO
INSERT [dbo].[tbLocation] ([Id], [Street], [Floor], [CityId]) VALUES (N'7a9445bf-d034-412e-a340-08dc0ba3adb4', N'fsdfdsf', 5, N'14bcdeaa-17b1-44b5-84d4-81f5ac29d80c')
INSERT [dbo].[tbLocation] ([Id], [Street], [Floor], [CityId]) VALUES (N'b4d0f668-26b3-4c74-86c1-08dc0ba43245', N'None', 0, N'0e747d80-5f9c-4e47-858d-d24641523df8')
INSERT [dbo].[tbLocation] ([Id], [Street], [Floor], [CityId]) VALUES (N'4c36af52-e317-4a3e-d96c-08dc0ba4e944', N'None', 0, N'ed0af25a-fa98-4234-a7a8-e82cdc872d3b')
INSERT [dbo].[tbLocation] ([Id], [Street], [Floor], [CityId]) VALUES (N'486c4b61-be57-41bc-8086-08dc109af596', N'U durmau 58', 0, N'0e747d80-5f9c-4e47-858d-d24641523df8')
INSERT [dbo].[tbLocation] ([Id], [Street], [Floor], [CityId]) VALUES (N'495271e8-7e68-4c22-8087-08dc109af596', N'U pravidla 59/8', 0, N'aab9c3d4-9604-4c3d-8047-568a2e295513')
INSERT [dbo].[tbLocation] ([Id], [Street], [Floor], [CityId]) VALUES (N'9d282dc3-b888-4760-8088-08dc109af596', N'Hluboka pod Vltavou 568/8', 0, N'86f5fd10-b779-4c01-8d97-ad296e90499a')
INSERT [dbo].[tbLocation] ([Id], [Street], [Floor], [CityId]) VALUES (N'2fcc2294-0e3b-49e4-8089-08dc109af596', N'U Vojty 555', 15, N'f63c38b1-0f93-4822-9945-4ce8b07ecac4')
INSERT [dbo].[tbLocation] ([Id], [Street], [Floor], [CityId]) VALUES (N'c71f72ec-2221-4dab-808a-08dc109af596', N'Naprosto nevim', 0, N'cb79b0bf-742a-40e3-b4b4-2315607fdde0')
INSERT [dbo].[tbLocation] ([Id], [Street], [Floor], [CityId]) VALUES (N'54c0c6c6-f3d4-4082-808b-08dc109af596', N'U Bohateho', 0, N'82391366-0b9c-4532-b60a-a2e8e89a9d65')
INSERT [dbo].[tbLocation] ([Id], [Street], [Floor], [CityId]) VALUES (N'3e87f9a2-ce21-4125-b1c2-4d3cad028be6', N'Hulerova', 3, N'48d0548e-23a9-4e03-b316-df6ebbe5d813')
GO
INSERT [dbo].[tbParameterAdvertisement] ([AdvertisementsId], [ParametersId]) VALUES (N'465aa1ff-c292-4e35-9feb-a44b0d03249f', N'49b760d5-21ef-402b-82cf-0957dc87f9b0')
INSERT [dbo].[tbParameterAdvertisement] ([AdvertisementsId], [ParametersId]) VALUES (N'465aa1ff-c292-4e35-9feb-a44b0d03249f', N'f4e1548b-bd56-46e5-956f-49688083017b')
INSERT [dbo].[tbParameterAdvertisement] ([AdvertisementsId], [ParametersId]) VALUES (N'5e1284d9-5f0d-448b-a0fc-739a63bc2bfd', N'e92471d3-3822-42e1-af15-4f126eb5a38f')
INSERT [dbo].[tbParameterAdvertisement] ([AdvertisementsId], [ParametersId]) VALUES (N'465aa1ff-c292-4e35-9feb-a44b0d03249f', N'0d23f89f-ee69-4efc-bcbe-9fe0c9f0837d')
INSERT [dbo].[tbParameterAdvertisement] ([AdvertisementsId], [ParametersId]) VALUES (N'465aa1ff-c292-4e35-9feb-a44b0d03249f', N'706a9ebf-0780-40fe-a0ab-d235c7f0c1a3')
INSERT [dbo].[tbParameterAdvertisement] ([AdvertisementsId], [ParametersId]) VALUES (N'91296794-5937-4ab6-baa6-8f109ffc0be6', N'a61d87e2-1a40-4dc9-b7b3-e7a8d262a1eb')
INSERT [dbo].[tbParameterAdvertisement] ([AdvertisementsId], [ParametersId]) VALUES (N'465aa1ff-c292-4e35-9feb-a44b0d03249f', N'a093a400-eb3c-436a-891b-f02c29dfacb5')
INSERT [dbo].[tbParameterAdvertisement] ([AdvertisementsId], [ParametersId]) VALUES (N'91296794-5937-4ab6-baa6-8f109ffc0be6', N'856c3200-cbf6-4dc4-91c7-f074cd3c832b')
GO
INSERT [dbo].[tbParameters] ([Id], [Value], [GroupId]) VALUES (N'49b760d5-21ef-402b-82cf-0957dc87f9b0', N'5', N'9f9c083b-5168-4504-4b19-08dbfa41e132')
INSERT [dbo].[tbParameters] ([Id], [Value], [GroupId]) VALUES (N'f4e1548b-bd56-46e5-956f-49688083017b', N'10', N'2ae6fd88-5573-4982-6bc1-08dc0aeac91d')
INSERT [dbo].[tbParameters] ([Id], [Value], [GroupId]) VALUES (N'e92471d3-3822-42e1-af15-4f126eb5a38f', N'8', N'9f9c083b-5168-4504-4b19-08dbfa41e132')
INSERT [dbo].[tbParameters] ([Id], [Value], [GroupId]) VALUES (N'0d23f89f-ee69-4efc-bcbe-9fe0c9f0837d', N'6', N'2621b427-e439-4eae-6b1a-08dbfb1cec4b')
INSERT [dbo].[tbParameters] ([Id], [Value], [GroupId]) VALUES (N'706a9ebf-0780-40fe-a0ab-d235c7f0c1a3', N'5', N'169de148-df29-400d-ddd5-08dbfa8adb9f')
INSERT [dbo].[tbParameters] ([Id], [Value], [GroupId]) VALUES (N'71286d08-1000-4c23-a7c6-d4ee3c24bb42', N'16', N'2ae6fd88-5573-4982-6bc1-08dc0aeac91d')
INSERT [dbo].[tbParameters] ([Id], [Value], [GroupId]) VALUES (N'a61d87e2-1a40-4dc9-b7b3-e7a8d262a1eb', N'15', N'9f9c083b-5168-4504-4b19-08dbfa41e132')
INSERT [dbo].[tbParameters] ([Id], [Value], [GroupId]) VALUES (N'a093a400-eb3c-436a-891b-f02c29dfacb5', N'Blue', N'23035557-a01b-4454-8927-3c67e789abd4')
INSERT [dbo].[tbParameters] ([Id], [Value], [GroupId]) VALUES (N'856c3200-cbf6-4dc4-91c7-f074cd3c832b', N'10', N'169de148-df29-400d-ddd5-08dbfa8adb9f')
GO
INSERT [dbo].[tbPhotos] ([Id], [Type], [Size], [AdvertisementId], [UserId]) VALUES (N'dafa736b-5b77-4177-aa69-1510633d2cf3', 1, NULL, NULL, NULL)
INSERT [dbo].[tbPhotos] ([Id], [Type], [Size], [AdvertisementId], [UserId]) VALUES (N'ad1bafef-5d25-46e1-a877-1648aed3072b', 1, NULL, NULL, NULL)
INSERT [dbo].[tbPhotos] ([Id], [Type], [Size], [AdvertisementId], [UserId]) VALUES (N'12f4719b-f8f7-480b-8e31-184c9b4c8e29', 0, NULL, NULL, N'4b01bd2e-5d02-4786-cb24-08dbfc19e717')
INSERT [dbo].[tbPhotos] ([Id], [Type], [Size], [AdvertisementId], [UserId]) VALUES (N'0f3dde33-c2d5-44df-8e21-1e7eb6ed6710', 1, NULL, NULL, NULL)
INSERT [dbo].[tbPhotos] ([Id], [Type], [Size], [AdvertisementId], [UserId]) VALUES (N'ff609796-7249-403c-87b2-26d347f26da8', 1, NULL, NULL, NULL)
INSERT [dbo].[tbPhotos] ([Id], [Type], [Size], [AdvertisementId], [UserId]) VALUES (N'5a113924-ff0e-45a5-8812-2eb0298bd433', 1, NULL, NULL, NULL)
INSERT [dbo].[tbPhotos] ([Id], [Type], [Size], [AdvertisementId], [UserId]) VALUES (N'45bb334c-1597-4c7b-8295-37ba6df08c16', 1, NULL, NULL, NULL)
INSERT [dbo].[tbPhotos] ([Id], [Type], [Size], [AdvertisementId], [UserId]) VALUES (N'2f86360c-a010-4684-a0f7-421fc7a2f07c', 1, NULL, NULL, NULL)
INSERT [dbo].[tbPhotos] ([Id], [Type], [Size], [AdvertisementId], [UserId]) VALUES (N'c889216e-13c5-4760-a37f-46e455e6120c', 1, NULL, NULL, NULL)
INSERT [dbo].[tbPhotos] ([Id], [Type], [Size], [AdvertisementId], [UserId]) VALUES (N'8ccf2df5-9bd7-4ac3-b112-49865d0135e3', 1, NULL, NULL, NULL)
INSERT [dbo].[tbPhotos] ([Id], [Type], [Size], [AdvertisementId], [UserId]) VALUES (N'59b62977-6aef-4516-8df2-4b862fdffed9', 1, NULL, NULL, NULL)
INSERT [dbo].[tbPhotos] ([Id], [Type], [Size], [AdvertisementId], [UserId]) VALUES (N'f9e1dccd-22b6-4855-8e47-59f14d52604d', 0, NULL, NULL, N'f0d63afc-803f-474f-d00b-08dbfa8a2005')
INSERT [dbo].[tbPhotos] ([Id], [Type], [Size], [AdvertisementId], [UserId]) VALUES (N'ca63b030-045d-4007-aba1-5aee7a23176f', 0, NULL, NULL, N'a84ca855-5c45-44fe-af79-08dbfa577aff')
INSERT [dbo].[tbPhotos] ([Id], [Type], [Size], [AdvertisementId], [UserId]) VALUES (N'fd3c6c78-0f7d-4801-a49b-5d40e15cf4b5', 1, NULL, NULL, NULL)
INSERT [dbo].[tbPhotos] ([Id], [Type], [Size], [AdvertisementId], [UserId]) VALUES (N'641e2812-af9f-4597-b37d-5e0647cd836b', 1, NULL, NULL, NULL)
INSERT [dbo].[tbPhotos] ([Id], [Type], [Size], [AdvertisementId], [UserId]) VALUES (N'a70c64a6-b45f-4ba7-b6b8-6e6492003936', 1, NULL, NULL, NULL)
INSERT [dbo].[tbPhotos] ([Id], [Type], [Size], [AdvertisementId], [UserId]) VALUES (N'413962d6-d8f3-4bec-a1fc-7396d94a1381', 1, NULL, NULL, NULL)
INSERT [dbo].[tbPhotos] ([Id], [Type], [Size], [AdvertisementId], [UserId]) VALUES (N'afc08d6e-8717-4dcf-bebe-74b9eccc3e03', 1, NULL, NULL, NULL)
INSERT [dbo].[tbPhotos] ([Id], [Type], [Size], [AdvertisementId], [UserId]) VALUES (N'99edf33a-db0d-497b-b91f-7520415f9b15', 1, NULL, NULL, NULL)
INSERT [dbo].[tbPhotos] ([Id], [Type], [Size], [AdvertisementId], [UserId]) VALUES (N'97ced2e0-e86f-441b-9d9f-7a0fe3d0ee4a', 1, NULL, NULL, NULL)
INSERT [dbo].[tbPhotos] ([Id], [Type], [Size], [AdvertisementId], [UserId]) VALUES (N'd3254076-2889-411b-ad3b-8656acdeb341', 0, NULL, NULL, N'c342f39e-baef-4ed0-fb7d-08dbf9bf7673')
INSERT [dbo].[tbPhotos] ([Id], [Type], [Size], [AdvertisementId], [UserId]) VALUES (N'eb4fad9e-da32-4e7f-b373-8a99b6910d09', 1, NULL, NULL, NULL)
INSERT [dbo].[tbPhotos] ([Id], [Type], [Size], [AdvertisementId], [UserId]) VALUES (N'1b68aa1c-b38d-4935-b1a1-8f9e840349df', 0, NULL, NULL, N'a61c0798-0b07-4021-5981-08dbfb1ccec4')
INSERT [dbo].[tbPhotos] ([Id], [Type], [Size], [AdvertisementId], [UserId]) VALUES (N'6a354203-0369-444e-b10d-9a10757773a3', 1, NULL, NULL, NULL)
INSERT [dbo].[tbPhotos] ([Id], [Type], [Size], [AdvertisementId], [UserId]) VALUES (N'2780a92f-1edf-412e-b4f3-a46c61af66a0', 1, NULL, NULL, NULL)
INSERT [dbo].[tbPhotos] ([Id], [Type], [Size], [AdvertisementId], [UserId]) VALUES (N'7a2e6f88-a212-4e24-afe1-abac3ceeae1f', 1, NULL, NULL, NULL)
INSERT [dbo].[tbPhotos] ([Id], [Type], [Size], [AdvertisementId], [UserId]) VALUES (N'5f5dd868-a2e2-4833-97e1-b87204d25d56', 1, NULL, NULL, NULL)
INSERT [dbo].[tbPhotos] ([Id], [Type], [Size], [AdvertisementId], [UserId]) VALUES (N'48834cc0-fa2c-4b53-a5ea-bab9cf27a972', 1, NULL, NULL, NULL)
INSERT [dbo].[tbPhotos] ([Id], [Type], [Size], [AdvertisementId], [UserId]) VALUES (N'5666f8e2-eb6d-4e35-9584-be832ff9baa7', 1, NULL, NULL, NULL)
INSERT [dbo].[tbPhotos] ([Id], [Type], [Size], [AdvertisementId], [UserId]) VALUES (N'914e728d-a6f8-4e88-a629-c7a31c9fb7b0', 1, NULL, NULL, NULL)
INSERT [dbo].[tbPhotos] ([Id], [Type], [Size], [AdvertisementId], [UserId]) VALUES (N'427f654c-03eb-4900-9e2c-c7ef027ffbcf', 1, NULL, NULL, NULL)
INSERT [dbo].[tbPhotos] ([Id], [Type], [Size], [AdvertisementId], [UserId]) VALUES (N'207aea21-4846-42c1-bbd3-cad87a55fada', 1, NULL, NULL, NULL)
INSERT [dbo].[tbPhotos] ([Id], [Type], [Size], [AdvertisementId], [UserId]) VALUES (N'9f7b934d-f1d4-446d-b737-cc5851b45b3a', 1, NULL, NULL, NULL)
INSERT [dbo].[tbPhotos] ([Id], [Type], [Size], [AdvertisementId], [UserId]) VALUES (N'c1e25f92-e598-4b80-a107-dd75f4ee0098', 0, NULL, NULL, N'b8af32f5-fa32-43bd-8de4-7cfeaf953330')
INSERT [dbo].[tbPhotos] ([Id], [Type], [Size], [AdvertisementId], [UserId]) VALUES (N'cba25a0e-2a9d-4e27-8a91-ddc81b138343', 1, NULL, NULL, NULL)
INSERT [dbo].[tbPhotos] ([Id], [Type], [Size], [AdvertisementId], [UserId]) VALUES (N'1de5e615-db50-4440-87b2-dff067735411', 1, NULL, NULL, NULL)
INSERT [dbo].[tbPhotos] ([Id], [Type], [Size], [AdvertisementId], [UserId]) VALUES (N'8c64acb1-5921-4caa-bc0c-ec74eee272eb', 1, NULL, NULL, NULL)
INSERT [dbo].[tbPhotos] ([Id], [Type], [Size], [AdvertisementId], [UserId]) VALUES (N'5427226b-060b-49dc-a97c-ee72906fc23c', 1, NULL, NULL, NULL)
INSERT [dbo].[tbPhotos] ([Id], [Type], [Size], [AdvertisementId], [UserId]) VALUES (N'38c3ed1d-c4f9-4417-8431-efa1bf688b09', 1, NULL, NULL, NULL)
INSERT [dbo].[tbPhotos] ([Id], [Type], [Size], [AdvertisementId], [UserId]) VALUES (N'f7fe7adf-8734-4f17-bbcf-efc9f8e681f2', 1, NULL, NULL, NULL)
INSERT [dbo].[tbPhotos] ([Id], [Type], [Size], [AdvertisementId], [UserId]) VALUES (N'b7e9be27-ffeb-446d-9cf2-efd3014c5742', 1, NULL, NULL, NULL)
INSERT [dbo].[tbPhotos] ([Id], [Type], [Size], [AdvertisementId], [UserId]) VALUES (N'34ccf911-8853-4701-a5ab-fcb51eb1bc9f', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[tbRequest] ([Id], [UserId], [AdvertisementId], [Content], [Email], [Phone], [CreateTime]) VALUES (N'43dddb71-afc8-487f-eaad-08dc0fcc8e89', N'9972bdd8-248e-48d4-9703-08dc0fcc8e83', N'465aa1ff-c292-4e35-9feb-a44b0d03249f', N'Je dum k dispozici?', N'jarmila@vostra.cz', N'666777888', CAST(N'2024-01-07T23:04:01.8882785' AS DateTime2))
INSERT [dbo].[tbRequest] ([Id], [UserId], [AdvertisementId], [Content], [Email], [Phone], [CreateTime]) VALUES (N'd500237e-2ca3-4608-6456-08dc10a110b2', N'f0d63afc-803f-474f-d00b-08dbfa8a2005', N'5e1284d9-5f0d-448b-a0fc-739a63bc2bfd', N'je to k dispozici?', N'knapkovaanicka@sssvt.cz', N'123456798', CAST(N'2024-01-09T00:25:13.5390798' AS DateTime2))
INSERT [dbo].[tbRequest] ([Id], [UserId], [AdvertisementId], [Content], [Email], [Phone], [CreateTime]) VALUES (N'2049ded8-79d9-4d2f-677a-08dc10a5b6df', N'd627c812-0060-4c9e-eaee-08dc10a5b6dd', N'5e1284d9-5f0d-448b-a0fc-739a63bc2bfd', N'bub', N'anna.knapkova@post.cz', N'265154654', CAST(N'2024-01-09T00:58:30.3500768' AS DateTime2))
INSERT [dbo].[tbRequest] ([Id], [UserId], [AdvertisementId], [Content], [Email], [Phone], [CreateTime]) VALUES (N'ceceb442-c0cf-45fb-8e74-08dc1122b63c', N'a84ca855-5c45-44fe-af79-08dbfa577aff', N'465aa1ff-c292-4e35-9feb-a44b0d03249f', N'JE to k dispozici? 9.1', N'macikvojtech@sssvt.cz', N'456789132', CAST(N'2024-01-09T15:53:16.3524045' AS DateTime2))
INSERT [dbo].[tbRequest] ([Id], [UserId], [AdvertisementId], [Content], [Email], [Phone], [CreateTime]) VALUES (N'8d58a8eb-4fc5-4611-8e75-08dc1122b63c', N'bb1bea49-3896-4538-3dc5-08dc11234f78', N'465aa1ff-c292-4e35-9feb-a44b0d03249f', N'Je to ted 15:57', N'uplatkz@com.cz', N'456789123', CAST(N'2024-01-09T15:57:33.4600728' AS DateTime2))
INSERT [dbo].[tbRequest] ([Id], [UserId], [AdvertisementId], [Content], [Email], [Phone], [CreateTime]) VALUES (N'51b8c218-7bb5-4bbf-bb28-369353600c36', N'f0d63afc-803f-474f-d00b-08dbfa8a2005', N'465aa1ff-c292-4e35-9feb-a44b0d03249f', N'Kde to mohu koupit? a je to Super tam bydlet?', N'anickaKnapkova@sssvt.cz', N'123465798', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[tbRoles] ([Id], [Name], [IsValid]) VALUES (N'f91b5041-3a0d-4d8e-8f41-059ec52cfec8', N'Admin', 1)
INSERT [dbo].[tbRoles] ([Id], [Name], [IsValid]) VALUES (N'b4265769-2347-41fb-98db-7b86023fbc16', N'Seller', 1)
INSERT [dbo].[tbRoles] ([Id], [Name], [IsValid]) VALUES (N'f5951fd7-415d-4374-bcc3-aebe7f1a6664', N'User', 1)
GO
INSERT [dbo].[tbUser] ([Id], [Username], [FirstName], [LastName], [Password], [Email], [Phone], [IsEmailConfirmed], [IsBlocked], [RoleId], [IsValid], [ProfilePicId]) VALUES (N'c342f39e-baef-4ed0-fb7d-08dbf9bf7673', N'Honzos', N'Honza', N'Pražský', N'$2a$11$MDcnVzPs/K0/SqH3xtMwqOtmcT5gffnEB4eIuTCPhrGxT55qS1qNu', N'prazskyhonza@sssvt.cz', N'123456789', 1, 0, N'b4265769-2347-41fb-98db-7b86023fbc16', 1, N'd3254076-2889-411b-ad3b-8656acdeb341')
INSERT [dbo].[tbUser] ([Id], [Username], [FirstName], [LastName], [Password], [Email], [Phone], [IsEmailConfirmed], [IsBlocked], [RoleId], [IsValid], [ProfilePicId]) VALUES (N'a84ca855-5c45-44fe-af79-08dbfa577aff', N'Macikos', N'Macik', N'Vojtech', N'$2a$11$8e4YloJzaG8DQjdisng6NuHweYxwyTU1gRGpAhYCzsk1tRAF3lliy', N'macikvojtech@sssvt.cz', NULL, 0, 0, N'b4265769-2347-41fb-98db-7b86023fbc16', 1, N'ca63b030-045d-4007-aba1-5aee7a23176f')
INSERT [dbo].[tbUser] ([Id], [Username], [FirstName], [LastName], [Password], [Email], [Phone], [IsEmailConfirmed], [IsBlocked], [RoleId], [IsValid], [ProfilePicId]) VALUES (N'f0d63afc-803f-474f-d00b-08dbfa8a2005', N'anisek', N'Anicka', N'Knapkova', N'$2a$11$/h7kpfJEDytclprgLhFQVuCE0InCH0.KJJfHvTCGFAXRjFIIKd1v2', N'knapkovaanicka@sssvt.cz', NULL, 1, 0, N'b4265769-2347-41fb-98db-7b86023fbc16', 1, N'f9e1dccd-22b6-4855-8e47-59f14d52604d')
INSERT [dbo].[tbUser] ([Id], [Username], [FirstName], [LastName], [Password], [Email], [Phone], [IsEmailConfirmed], [IsBlocked], [RoleId], [IsValid], [ProfilePicId]) VALUES (N'a61c0798-0b07-4021-5981-08dbfb1ccec4', N'Panacek', N'Dan', N'Panacek', N'$2a$11$wxiOjg5KDpVTy2k/p1Sj1OVnnpAVV.yNtKj5FYIQ9MiNZsLXFQUye', N'panacekdaniel@sssvt.cz', NULL, 0, 0, N'b4265769-2347-41fb-98db-7b86023fbc16', 1, N'1b68aa1c-b38d-4935-b1a1-8f9e840349df')
INSERT [dbo].[tbUser] ([Id], [Username], [FirstName], [LastName], [Password], [Email], [Phone], [IsEmailConfirmed], [IsBlocked], [RoleId], [IsValid], [ProfilePicId]) VALUES (N'4b01bd2e-5d02-4786-cb24-08dbfc19e717', N'marekpraha', N'Marek', N'Haupt...neco', N'$2a$11$pn6KC7BzgwgtkNGWr1VG2uwl4dh2un0amsuNFVBIYS7x7DFfHXtam', N'marekhaupt@sssvt.cz', NULL, 0, 0, N'f91b5041-3a0d-4d8e-8f41-059ec52cfec8', 1, N'12f4719b-f8f7-480b-8e31-184c9b4c8e29')
INSERT [dbo].[tbUser] ([Id], [Username], [FirstName], [LastName], [Password], [Email], [Phone], [IsEmailConfirmed], [IsBlocked], [RoleId], [IsValid], [ProfilePicId]) VALUES (N'9972bdd8-248e-48d4-9703-08dc0fcc8e83', N'Jarmila Vostra', N'Jarmila', N'Vostra', N'$2a$11$XXeSJs37tEQblKszZLPJaewNOFHHzlmd9XmoBM27Hhjut9pKVItG2', N'jarmila@vostra.cz', N'666777888', 0, 0, N'f5951fd7-415d-4374-bcc3-aebe7f1a6664', 0, NULL)
INSERT [dbo].[tbUser] ([Id], [Username], [FirstName], [LastName], [Password], [Email], [Phone], [IsEmailConfirmed], [IsBlocked], [RoleId], [IsValid], [ProfilePicId]) VALUES (N'd627c812-0060-4c9e-eaee-08dc10a5b6dd', N'Anna Knápková', N'Anna', N'Knápková', N'$2a$11$WC8gU1fYQXbMNIbBd0f4quP04mfFJIrVIdUYUBAhK51dN9mePcpjq', N'anna.knapkova@post.cz', N'265154654', 0, 0, N'f5951fd7-415d-4374-bcc3-aebe7f1a6664', 0, NULL)
INSERT [dbo].[tbUser] ([Id], [Username], [FirstName], [LastName], [Password], [Email], [Phone], [IsEmailConfirmed], [IsBlocked], [RoleId], [IsValid], [ProfilePicId]) VALUES (N'bb1bea49-3896-4538-3dc5-08dc11234f78', N'Nekdo velkej', N'Nekdo', N'velkej', N'$2a$11$csE1TrU.uYtIkyKPBiiN9OJ92pD7CKatcFJABrA3jT6R4g3iH3sNu', N'uplatkz@com.cz', N'456789123', 0, 0, N'f5951fd7-415d-4374-bcc3-aebe7f1a6664', 0, NULL)
INSERT [dbo].[tbUser] ([Id], [Username], [FirstName], [LastName], [Password], [Email], [Phone], [IsEmailConfirmed], [IsBlocked], [RoleId], [IsValid], [ProfilePicId]) VALUES (N'b8af32f5-fa32-43bd-8de4-7cfeaf953330', N'jbohacek', N'Jakub2', N'Bohaček', N'$2a$11$KEmkAB02I69f/7yCEThORef98UD13G9035CabT7JBxkLIs3hT80N2', N'bohacekjakub@sssvt.cz', NULL, 1, 0, N'f91b5041-3a0d-4d8e-8f41-059ec52cfec8', 1, N'c1e25f92-e598-4b80-a107-dd75f4ee0098')
GO
/****** Object:  Index [IX_tbAdvertisementPhotos_GalleryId]    Script Date: 17.01.2024 19:36:28 ******/
CREATE NONCLUSTERED INDEX [IX_tbAdvertisementPhotos_GalleryId] ON [dbo].[tbAdvertisementPhotos]
(
	[GalleryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbAdvertisements_AddressId]    Script Date: 17.01.2024 19:36:28 ******/
CREATE NONCLUSTERED INDEX [IX_tbAdvertisements_AddressId] ON [dbo].[tbAdvertisements]
(
	[AddressId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbAdvertisements_IdPhoto]    Script Date: 17.01.2024 19:36:28 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_tbAdvertisements_IdPhoto] ON [dbo].[tbAdvertisements]
(
	[IdPhoto] ASC
)
WHERE ([IdPhoto] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbAdvertisements_UserId]    Script Date: 17.01.2024 19:36:28 ******/
CREATE NONCLUSTERED INDEX [IX_tbAdvertisements_UserId] ON [dbo].[tbAdvertisements]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbCities_DistrictId]    Script Date: 17.01.2024 19:36:28 ******/
CREATE NONCLUSTERED INDEX [IX_tbCities_DistrictId] ON [dbo].[tbCities]
(
	[DistrictId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbLocation_CityId]    Script Date: 17.01.2024 19:36:28 ******/
CREATE NONCLUSTERED INDEX [IX_tbLocation_CityId] ON [dbo].[tbLocation]
(
	[CityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbParameterAdvertisement_ParametersId]    Script Date: 17.01.2024 19:36:28 ******/
CREATE NONCLUSTERED INDEX [IX_tbParameterAdvertisement_ParametersId] ON [dbo].[tbParameterAdvertisement]
(
	[ParametersId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbParameters_GroupId]    Script Date: 17.01.2024 19:36:28 ******/
CREATE NONCLUSTERED INDEX [IX_tbParameters_GroupId] ON [dbo].[tbParameters]
(
	[GroupId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbPhotos_UserId]    Script Date: 17.01.2024 19:36:28 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_tbPhotos_UserId] ON [dbo].[tbPhotos]
(
	[UserId] ASC
)
WHERE ([UserId] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbRequest_AdvertisementId]    Script Date: 17.01.2024 19:36:28 ******/
CREATE NONCLUSTERED INDEX [IX_tbRequest_AdvertisementId] ON [dbo].[tbRequest]
(
	[AdvertisementId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbRequest_UserId]    Script Date: 17.01.2024 19:36:28 ******/
CREATE NONCLUSTERED INDEX [IX_tbRequest_UserId] ON [dbo].[tbRequest]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbUser_RoleId]    Script Date: 17.01.2024 19:36:28 ******/
CREATE NONCLUSTERED INDEX [IX_tbUser_RoleId] ON [dbo].[tbUser]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tbAdvertisements] ADD  DEFAULT ('00000000-0000-0000-0000-000000000000') FOR [UserId]
GO
ALTER TABLE [dbo].[tbAdvertisements] ADD  DEFAULT ('00000000-0000-0000-0000-000000000000') FOR [AddressId]
GO
ALTER TABLE [dbo].[tbAdvertisements] ADD  DEFAULT ((0)) FOR [ViewsCount]
GO
ALTER TABLE [dbo].[tbParameters] ADD  DEFAULT ('00000000-0000-0000-0000-000000000000') FOR [GroupId]
GO
ALTER TABLE [dbo].[tbRequest] ADD  DEFAULT ('0001-01-01T00:00:00.0000000') FOR [CreateTime]
GO
ALTER TABLE [dbo].[tbUser] ADD  DEFAULT (CONVERT([bit],(0))) FOR [IsValid]
GO
ALTER TABLE [dbo].[tbAdvertisementPhotos]  WITH CHECK ADD  CONSTRAINT [FK_tbAdvertisementPhotos_tbAdvertisements_AdvertisementsId] FOREIGN KEY([AdvertisementsId])
REFERENCES [dbo].[tbAdvertisements] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tbAdvertisementPhotos] CHECK CONSTRAINT [FK_tbAdvertisementPhotos_tbAdvertisements_AdvertisementsId]
GO
ALTER TABLE [dbo].[tbAdvertisementPhotos]  WITH CHECK ADD  CONSTRAINT [FK_tbAdvertisementPhotos_tbPhotos_GalleryId] FOREIGN KEY([GalleryId])
REFERENCES [dbo].[tbPhotos] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tbAdvertisementPhotos] CHECK CONSTRAINT [FK_tbAdvertisementPhotos_tbPhotos_GalleryId]
GO
ALTER TABLE [dbo].[tbAdvertisements]  WITH CHECK ADD  CONSTRAINT [FK_tbAdvertisements_tbLocation_AddressId] FOREIGN KEY([AddressId])
REFERENCES [dbo].[tbLocation] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tbAdvertisements] CHECK CONSTRAINT [FK_tbAdvertisements_tbLocation_AddressId]
GO
ALTER TABLE [dbo].[tbAdvertisements]  WITH CHECK ADD  CONSTRAINT [FK_tbAdvertisements_tbPhotos_IdPhoto] FOREIGN KEY([IdPhoto])
REFERENCES [dbo].[tbPhotos] ([Id])
GO
ALTER TABLE [dbo].[tbAdvertisements] CHECK CONSTRAINT [FK_tbAdvertisements_tbPhotos_IdPhoto]
GO
ALTER TABLE [dbo].[tbAdvertisements]  WITH CHECK ADD  CONSTRAINT [FK_tbAdvertisements_tbUser_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[tbUser] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tbAdvertisements] CHECK CONSTRAINT [FK_tbAdvertisements_tbUser_UserId]
GO
ALTER TABLE [dbo].[tbCities]  WITH CHECK ADD  CONSTRAINT [FK_tbCities_tbDistrict_DistrictId] FOREIGN KEY([DistrictId])
REFERENCES [dbo].[tbDistrict] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tbCities] CHECK CONSTRAINT [FK_tbCities_tbDistrict_DistrictId]
GO
ALTER TABLE [dbo].[tbLocation]  WITH CHECK ADD  CONSTRAINT [FK_tbLocation_tbCities_CityId] FOREIGN KEY([CityId])
REFERENCES [dbo].[tbCities] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tbLocation] CHECK CONSTRAINT [FK_tbLocation_tbCities_CityId]
GO
ALTER TABLE [dbo].[tbParameterAdvertisement]  WITH CHECK ADD  CONSTRAINT [FK_tbParameterAdvertisement_tbAdvertisements_AdvertisementsId] FOREIGN KEY([AdvertisementsId])
REFERENCES [dbo].[tbAdvertisements] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tbParameterAdvertisement] CHECK CONSTRAINT [FK_tbParameterAdvertisement_tbAdvertisements_AdvertisementsId]
GO
ALTER TABLE [dbo].[tbParameterAdvertisement]  WITH CHECK ADD  CONSTRAINT [FK_tbParameterAdvertisement_tbParameters_ParametersId] FOREIGN KEY([ParametersId])
REFERENCES [dbo].[tbParameters] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tbParameterAdvertisement] CHECK CONSTRAINT [FK_tbParameterAdvertisement_tbParameters_ParametersId]
GO
ALTER TABLE [dbo].[tbParameters]  WITH CHECK ADD  CONSTRAINT [FK_tbParameters_tbGroupParameters_GroupId] FOREIGN KEY([GroupId])
REFERENCES [dbo].[tbGroupParameters] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tbParameters] CHECK CONSTRAINT [FK_tbParameters_tbGroupParameters_GroupId]
GO
ALTER TABLE [dbo].[tbPhotos]  WITH CHECK ADD  CONSTRAINT [FK_tbPhotos_tbUser_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[tbUser] ([Id])
GO
ALTER TABLE [dbo].[tbPhotos] CHECK CONSTRAINT [FK_tbPhotos_tbUser_UserId]
GO
ALTER TABLE [dbo].[tbRequest]  WITH CHECK ADD  CONSTRAINT [FK_tbRequest_tbAdvertisements_AdvertisementId] FOREIGN KEY([AdvertisementId])
REFERENCES [dbo].[tbAdvertisements] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tbRequest] CHECK CONSTRAINT [FK_tbRequest_tbAdvertisements_AdvertisementId]
GO
ALTER TABLE [dbo].[tbRequest]  WITH CHECK ADD  CONSTRAINT [FK_tbRequest_tbUser_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[tbUser] ([Id])
GO
ALTER TABLE [dbo].[tbRequest] CHECK CONSTRAINT [FK_tbRequest_tbUser_UserId]
GO
ALTER TABLE [dbo].[tbUser]  WITH CHECK ADD  CONSTRAINT [FK_tbUser_tbRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[tbRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tbUser] CHECK CONSTRAINT [FK_tbUser_tbRoles_RoleId]
GO
USE [master]
GO
ALTER DATABASE [f175721] SET  READ_WRITE 
GO
