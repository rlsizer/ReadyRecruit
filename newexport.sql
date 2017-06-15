USE [master]
GO
/****** Object:  Database [ReadyRecruit]    Script Date: 6/15/2017 10:27:38 AM ******/
CREATE DATABASE [ReadyRecruit]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ReadyRecruit', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\ReadyRecruit.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'ReadyRecruit_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\ReadyRecruit_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [ReadyRecruit] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ReadyRecruit].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ReadyRecruit] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ReadyRecruit] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ReadyRecruit] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ReadyRecruit] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ReadyRecruit] SET ARITHABORT OFF 
GO
ALTER DATABASE [ReadyRecruit] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ReadyRecruit] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ReadyRecruit] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ReadyRecruit] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ReadyRecruit] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ReadyRecruit] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ReadyRecruit] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ReadyRecruit] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ReadyRecruit] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ReadyRecruit] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ReadyRecruit] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ReadyRecruit] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ReadyRecruit] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ReadyRecruit] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ReadyRecruit] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ReadyRecruit] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ReadyRecruit] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ReadyRecruit] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ReadyRecruit] SET  MULTI_USER 
GO
ALTER DATABASE [ReadyRecruit] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ReadyRecruit] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ReadyRecruit] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ReadyRecruit] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [ReadyRecruit] SET DELAYED_DURABILITY = DISABLED 
GO
USE [ReadyRecruit]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 6/15/2017 10:27:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 6/15/2017 10:27:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 6/15/2017 10:27:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 6/15/2017 10:27:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 6/15/2017 10:27:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 6/15/2017 10:27:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Education]    Script Date: 6/15/2017 10:27:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Education](
	[EducationID] [int] IDENTITY(1,1) NOT NULL,
	[EduLevel] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Education] PRIMARY KEY CLUSTERED 
(
	[EducationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Gender]    Script Date: 6/15/2017 10:27:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Gender](
	[GenderID] [int] IDENTITY(1,1) NOT NULL,
	[Type] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_Gender] PRIMARY KEY CLUSTERED 
(
	[GenderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HeadStat]    Script Date: 6/15/2017 10:27:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HeadStat](
	[HeadStatID] [int] IDENTITY(1,1) NOT NULL,
	[DueDate] [date] NULL,
	[IsDone] [bit] NOT NULL,
	[Notes] [nvarchar](2000) NULL,
	[HeadstepID] [int] NOT NULL,
	[LinkID] [int] NOT NULL,
 CONSTRAINT [PK_HeadStat] PRIMARY KEY CLUSTERED 
(
	[HeadStatID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Headstep]    Script Date: 6/15/2017 10:27:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Headstep](
	[HeadstepID] [int] IDENTITY(1,1) NOT NULL,
	[Number] [decimal](18, 0) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[DueDate] [date] NULL,
	[IsDone] [bit] NOT NULL,
	[Notes] [nvarchar](2000) NULL,
	[Points] [decimal](18, 0) NOT NULL,
	[MainstepID] [int] NOT NULL,
 CONSTRAINT [PK_Headstep] PRIMARY KEY CLUSTERED 
(
	[HeadstepID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Link]    Script Date: 6/15/2017 10:27:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Link](
	[LinkID] [int] IDENTITY(1,1) NOT NULL,
	[ProfileID] [int] NOT NULL,
	[RoadmapID] [int] NOT NULL,
 CONSTRAINT [PK_Link] PRIMARY KEY CLUSTERED 
(
	[LinkID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MainStat]    Script Date: 6/15/2017 10:27:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MainStat](
	[MainStatID] [int] IDENTITY(1,1) NOT NULL,
	[DueDate] [date] NULL,
	[IsDone] [bit] NOT NULL,
	[Notes] [nvarchar](2000) NULL,
	[MainstepID] [int] NOT NULL,
	[LinkID] [int] NOT NULL,
 CONSTRAINT [PK_MainStat] PRIMARY KEY CLUSTERED 
(
	[MainStatID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Mainstep]    Script Date: 6/15/2017 10:27:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Mainstep](
	[MainstepID] [int] IDENTITY(1,1) NOT NULL,
	[Number] [decimal](18, 0) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[DueDate] [date] NULL,
	[IsDone] [bit] NOT NULL,
	[Notes] [nvarchar](2000) NULL,
	[Points] [decimal](18, 0) NOT NULL,
	[RoadmapID] [int] NOT NULL,
 CONSTRAINT [PK_Mainstep] PRIMARY KEY CLUSTERED 
(
	[MainstepID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MaritalStat]    Script Date: 6/15/2017 10:27:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MaritalStat](
	[MaritalStatID] [int] IDENTITY(1,1) NOT NULL,
	[Status] [varchar](30) NOT NULL,
 CONSTRAINT [PK_MaritalStat] PRIMARY KEY CLUSTERED 
(
	[MaritalStatID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PriorService]    Script Date: 6/15/2017 10:27:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PriorService](
	[PriorServiceID] [int] IDENTITY(1,1) NOT NULL,
	[IsServe] [bit] NOT NULL,
 CONSTRAINT [PK_PriorService] PRIMARY KEY CLUSTERED 
(
	[PriorServiceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Profile]    Script Date: 6/15/2017 10:27:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Profile](
	[ProfileID] [int] IDENTITY(1,1) NOT NULL,
	[FName] [varchar](50) NOT NULL,
	[LName] [varchar](50) NOT NULL,
	[BirthDate] [date] NOT NULL,
	[Height] [decimal](18, 0) NOT NULL,
	[Weight] [decimal](18, 0) NOT NULL,
	[Dependents] [int] NOT NULL,
	[Title] [varchar](30) NULL,
	[Branch] [varchar](30) NULL,
	[AsvabScore] [decimal](18, 0) NULL,
	[PracticeScore] [decimal](18, 0) NULL,
	[PointsTotal] [decimal](18, 0) NULL,
	[PointsEarned] [decimal](18, 0) NULL,
	[IsDone] [bit] NOT NULL,
	[GenderID] [int] NOT NULL,
	[EducationID] [int] NOT NULL,
	[MaritalStatID] [int] NOT NULL,
	[PriorServiceID] [int] NOT NULL,
	[Id] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_Profile] PRIMARY KEY CLUSTERED 
(
	[ProfileID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Roadmap]    Script Date: 6/15/2017 10:27:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Roadmap](
	[RoadmapID] [int] IDENTITY(1,1) NOT NULL,
	[RoadmapName] [varchar](50) NULL,
 CONSTRAINT [PK_Roadmap] PRIMARY KEY CLUSTERED 
(
	[RoadmapID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SubStat]    Script Date: 6/15/2017 10:27:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SubStat](
	[SubStatID] [int] IDENTITY(1,1) NOT NULL,
	[DueDate] [date] NULL,
	[IsDone] [bit] NOT NULL,
	[Notes] [nvarchar](2000) NULL,
	[SubstepID] [int] NOT NULL,
	[LinkID] [int] NOT NULL,
 CONSTRAINT [PK_SubStat] PRIMARY KEY CLUSTERED 
(
	[SubStatID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Substep]    Script Date: 6/15/2017 10:27:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Substep](
	[SubstepID] [int] IDENTITY(1,1) NOT NULL,
	[Number] [decimal](18, 0) NOT NULL,
	[Name] [varchar](150) NOT NULL,
	[DueDate] [date] NULL,
	[IsDone] [bit] NOT NULL,
	[Notes] [nvarchar](2000) NULL,
	[Points] [decimal](18, 0) NOT NULL,
	[HeadstepID] [int] NOT NULL,
 CONSTRAINT [PK_Substep] PRIMARY KEY CLUSTERED 
(
	[SubstepID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'201706081545381_InitialCreate', N'ReadyRecruit.Models.ApplicationDbContext', 0x1F8B0800000000000400DD5C5B6FE3B6127E2FD0FF20E8E9B448AD5CBA8B3D81DD22759236389B0BE26C71DE16B4443BC44A942A51D90407FD657D383FE9FC8533942859E245175BB19D628145440EBF190E87E47038F4FFFEFAEFF8E7E7C0B79E709C90904EECA3D1A16D61EA861EA1CB899DB2C50F1FEC9F7FFAF69BF185173C5BBF1774279C0E5AD264623F32169D3A4EE23EE20025A380B87198840B3672C3C0415EE81C1F1EFED3393A723040D8806559E3FB943212E0EC033EA7217571C452E45F871EF613510E35B30CD5BA41014E22E4E2897D8F91F7728FDD38256C9493DBD6994F108832C3FEC2B610A521430C043DFD94E0198B43BA9C455080FC87970803DD02F909161D385D9177EDCBE131EF8BB36A5840B969C2C2A027E0D189508E23375F4BC576A93C50DF05A899BDF05E672A9CD8571ECE8AEE431F1420333C9DFA31279ED8D7258BB324BAC16C54341CE5909731C07D0DE32FA32AE281D5B9DD41694CC7A343FEEFC09AA63E4B633CA1386531F20FACBB74EE13F75FF8E521FC82E9E4E468BE38F9F0EE3DF24EDEFF884FDE557B0A7D05BA5A0114DDC5618463900D2FCAFEDB96536FE7C80DCB669536B956C096605ED8D6357AFE88E9923DC28C39FE605B97E4197B458930AE4F94C03482462C4EE1F326F57D34F77159EF34F2E4FF37703D7EF77E10AE37E8892CB3A197F8C3C489615EDD633FAB4D1E49944FAFDA787F1664977118F0EFBA7DE5B59F67611ABBBC33A191E401C54BCCEAD28D9D95F17632690E35BC5917A8FB6FDA5C52D5BCB5A4BC43EBCC8482C5B6674321EFEBF2ED6C7167510483979916D74893C16976AB91D4FCC0AA12AD8CE7A8ABF150E8D4DF792DBC0810F107580C3B7001476441E20097BDFC2504D343B4B7CC772849602DF07E43C96383E8F0E700A2CFB09BC660A2338682E8D5B9DD3D8614DFA4C19C5BFEF6780D36340F5FC34BE4B230BEA0BCD5C6781F43F74B98B20BEA9D23863F31B700E49F0F24E80E30883867AE8B93E4128C197BD310FCEC02F08AB293E3DE707C85DAB53332F51109F4DE88B4967E2E48571E899E42F14A0C643ACFA449D48FE192D06EA216A46651738A565105595F513958374905A559D08CA055CE9C6A305F2F1BA1E19DBD0C76FFBDBDCD366FD35A5051E30C5648FC2BA6388665CCBB438CE198AE46A0CBBAB10B67211B3ECEF4D5F7A68CD3EFC84F8766B5D66CC81681E1674306BBFFB32113138A9F88C7BD920E47A08218E03BD1EB4F57ED734E926CDBD3A1D6CD6D33DFCE1A609A2E674912BA249B059AE097085DD4E5071FCE6A8F63E4BD916321D0313074C2B73C2881BED9B251DDD273EC6386AD33370F0E4E51E2224F552374C8EB2158B1A36A045BC544EAC27DAFF0044BC7316F84F8212881994A2853A705A12E8990DFAA25A965C72D8CF7BDE421D79CE30853CEB055135D98EB43205C80928F34286D1A1A3B158B6B364483D76A1AF336177635EE4A64622B36D9E23B1BEC52F86FAF6298CD1ADB827136ABA48B00C670DE2E0C549C55BA1A807C70D93703954E4C0603152ED5560CB4AEB11D18685D256FCE40F3236AD7F197CEABFB669EF583F2F6B7F54675EDC0366BFAD833D3CC7D4F68C3A0058E55F33C9FF34AFCCC34873390539CCF12E1EACA26C2C16798D543362B7F57EB873ACD20B2113501AE0CAD05545C042A40CA84EA215C11CB6B944E78113D608BB85B23AC58FB25D88A0DA8D8D50BD10AA1F9DA5436CE4EA78FB267A5352846DEE9B050C1D11884BC78D53BDE4129A6B8ACAA982EBE701F6FB8D23131180D0A6AF15C0D4A2A3A33B8960AD36CD792CE21EBE3926DA425C97D3268A9E8CCE05A1236DAAE248D53D0C32DD84845F52D7CA0C956443ACADDA6AC1B3B79A29428183B868CAAF1358A224297950C2B5162CDF2F4AAE90FB3FE6947418EE1B88926FBA894B6E4C4C2182DB1540BAC41D24B1227EC1C3134473CCE33F502854CBBB71A96FF826575FB5407B1D8070A6AFEB768A1B9BEAF6DB6AA3722402EA18B017769B238BAC600F4CD2D9EF2867C146B42F7D3D04F036AF6B0CCADF30BBC6AFBBC4445183B92FC8A07A5A84BF173EBBAEF3432EAAC186A944A0F66FD91324398F45DF89F558D9B7C52334A11A2AAA298C2563B1B39932BD36FB46437B1FF60B522BCCECC12B929550051D413A392DEA08055EABAA3D63350AA98F59AEE88529A491552AAEA21653599A42664B5622D3C8346F514DD39A8E9235574B5B63BB22691A40AADA95E035B23B35CD71D55936B5205D65477C75E259EC8ABE81EEF5DC6C3CBFA9B577EC0DD6CF73260BCCE9238CCE657B9C7AF02558A7B62899B7A054C94EFA539194F79EB9B531ED8D8CC9C0C18E6B5A776055E5F7A1AEFEDCD98B57BEDDAF2DE74AF6FC6EB67B4AF6A1ACA294F2629B997A73DE954371627ACF6C734CA912B27B1AD428DB0B5BF240C07234E309AFDE14F7D82F9425E105C234A163861792E877D7C78742C3DC7D99FA7314E9278BEE6846A7A1F531FB32DA465D12714BB8F2856932436783EB20255E2CF57D4C3CF13FB3F59ABD32C94C1FFCA8A0FACABE413257FA450F110A7D8FA534DFA1C269DBEF99CB5A78F1FBA6BF5EADF9FF3A607D66D0C33E6D43A9474B9CE08D79F44F492266FBA81346B3F9478BB13AAF606418B2A4D88F59F1CCC091BE4B94121E53F02F4FC5D5FD1B44F0A3642D43C1B180A6F10159A9E05AC83657C12E0C127CB9E04F4EBACFE89C03AA2199F0710DA1F4C7E1CD07D192A5AEE70ABD11C8AB6B124657A6E4DAEDE28D372D77B939283BDD14457F3AC7BC06D904BBD8665BCB134E4C176474D96F160D8BB34ED574F2DDE976CE2559EC76E9388B79937DC7033F4B74A17DE8304374DC2CEEE9382B76D6BA640EE9E6756F64BFDDD336313695CBB4FF0DDB6B199C2BC7B6E6CBDD278F7CCD676B57FEED8D23A6FA13B4FCA55F38B0C1732BA58705BD26D1E388713FE3C0423C83DCAFCADA43ECBAB2943B585E18AC4CCD49C5E263356268EC257A16866DBAFAF62C36FECACA069666B48CA6CE22DD6FF46DE82A699B721D57117E9C2DA64435D0A77CB3AD69407F596D2836B3D69C9466FF3591B6FD7DF5236F0204AA9CD1EC31DF1DB49FE1D4425434E9D1EC9BEEA752FEC9D955F5884FD3B21CB1504FFBD458ADDDAAE59D25CD145586CDE9244058914A1B9C60C79B0A59EC58C2C90CBA09AC798B3C7DE59DC8EDF74CCB177456F5316A50CBA8C83B95F0B787127A0897F96D15C97797C1B65BF5B324417404CC263F3B7F49794F85E29F7A526266480E0DE8588E8F2B1643CB2BB7C29916E42DA1148A8AF748A1E7010F90096DCD2197AC2EBC806E6F7112F91FBB28A009A40DA07A2AEF6F13941CB180589C058B5874FB0612F78FEE9FFCA5A4ECC68540000, N'6.1.3-40302')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'26bba179-a37f-409f-9b74-567bac6f3231', N'dkorpics@roadrunner.com', 0, N'AEBLnFBv8WW0u/9nugvFhGSMCF2Xx+w7CdNdJPuP9xI7Wd8/BA8aJQSSLfogz9TDAA==', N'd73cdf60-b7e6-4103-bfbf-3c960e562776', NULL, 0, 0, NULL, 1, 0, N'dkorpics@roadrunner.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'3938e49a-46d6-44e7-b1af-4aa8e00825bb', N'test@yahoo.com', 0, N'ADUDbT22lahxjUeYiJQnYqNFvEc4hHEgFTwi59V3GLA89JVROVIz7AjnMFrOwi9Ubg==', N'602bf0fd-1394-4301-966f-5bb85822047e', NULL, 0, 0, NULL, 1, 0, N'test@yahoo.com')
SET IDENTITY_INSERT [dbo].[Education] ON 

INSERT [dbo].[Education] ([EducationID], [EduLevel]) VALUES (1, N'do not have a high school diploma or GED')
INSERT [dbo].[Education] ([EducationID], [EduLevel]) VALUES (2, N'have a high school diploma or GED')
INSERT [dbo].[Education] ([EducationID], [EduLevel]) VALUES (3, N'have a 4 year college degree')
INSERT [dbo].[Education] ([EducationID], [EduLevel]) VALUES (4, N'have a college master''s degree')
SET IDENTITY_INSERT [dbo].[Education] OFF
SET IDENTITY_INSERT [dbo].[Gender] ON 

INSERT [dbo].[Gender] ([GenderID], [Type]) VALUES (1, N'guy')
INSERT [dbo].[Gender] ([GenderID], [Type]) VALUES (2, N'girl')
SET IDENTITY_INSERT [dbo].[Gender] OFF
SET IDENTITY_INSERT [dbo].[HeadStat] ON 

INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (3, NULL, 0, NULL, 1, 12)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (4, NULL, 0, NULL, 2, 12)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (5, NULL, 0, NULL, 17, 12)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (6, NULL, 0, NULL, 18, 12)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (7, NULL, 0, NULL, 19, 12)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (8, NULL, 0, NULL, 20, 12)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (9, NULL, 0, NULL, 21, 12)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (10, NULL, 0, NULL, 22, 12)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (11, NULL, 0, NULL, 23, 12)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (12, NULL, 0, NULL, 24, 12)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (13, NULL, 0, NULL, 25, 12)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (14, NULL, 0, NULL, 26, 12)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (15, NULL, 0, NULL, 27, 12)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (16, NULL, 0, NULL, 1, 1)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (17, NULL, 0, NULL, 2, 1)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (18, NULL, 0, NULL, 3, 1)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (19, NULL, 0, NULL, 4, 1)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (20, NULL, 0, NULL, 5, 1)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (21, NULL, 0, NULL, 7, 1)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (22, NULL, 0, NULL, 8, 1)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (23, NULL, 0, NULL, 9, 1)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (24, NULL, 0, NULL, 10, 1)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (25, NULL, 0, NULL, 11, 1)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (26, NULL, 0, NULL, 12, 1)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (27, NULL, 0, NULL, 13, 1)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (28, NULL, 0, NULL, 14, 1)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (29, NULL, 0, NULL, 15, 1)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (30, NULL, 0, NULL, 16, 1)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (31, NULL, 0, NULL, 17, 1)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (32, NULL, 0, NULL, 18, 1)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (33, NULL, 0, NULL, 28, 12)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (34, NULL, 0, NULL, 29, 12)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (35, NULL, 0, NULL, 30, 12)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (36, NULL, 0, NULL, 31, 12)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (37, NULL, 0, NULL, 32, 12)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (38, NULL, 0, NULL, 33, 12)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (39, NULL, 0, NULL, 34, 12)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (40, NULL, 0, NULL, 35, 12)
SET IDENTITY_INSERT [dbo].[HeadStat] OFF
SET IDENTITY_INSERT [dbo].[Headstep] ON 

INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (1, CAST(1 AS Decimal(18, 0)), N'Talk it Out', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 1)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (2, CAST(2 AS Decimal(18, 0)), N'Research! Research! Research!', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 1)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (3, CAST(3 AS Decimal(18, 0)), N'Don''t rush into it!', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 1)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (4, CAST(1 AS Decimal(18, 0)), N'Are you Qualified?', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 2)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (5, CAST(2 AS Decimal(18, 0)), N'Checkout Each Branch', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 2)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (7, CAST(3 AS Decimal(18, 0)), N'???', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 2)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (8, CAST(1 AS Decimal(18, 0)), N'???', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 3)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (9, CAST(2 AS Decimal(18, 0)), N'????', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 3)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (10, CAST(3 AS Decimal(18, 0)), N'???', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 3)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (11, CAST(1 AS Decimal(18, 0)), N'Choose Your Army Career Path', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 4)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (12, CAST(2 AS Decimal(18, 0)), N'Meet with a Recruiter', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 4)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (13, CAST(1 AS Decimal(18, 0)), N'Prepare for the ASVAB Test', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 5)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (14, CAST(2 AS Decimal(18, 0)), N'Take the ASVAB Test', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 5)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (15, CAST(1 AS Decimal(18, 0)), N'Military Entrance Processing Station (MEPS)', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 6)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (16, CAST(2 AS Decimal(18, 0)), N'???', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 6)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (17, CAST(1 AS Decimal(18, 0)), N'Prepare for Basic Training', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 7)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (18, CAST(2 AS Decimal(18, 0)), N'Weekly Breakdown of Basic Training', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 7)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (19, CAST(1 AS Decimal(18, 0)), N'Talk it Out', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 8)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (20, CAST(2 AS Decimal(18, 0)), N'Research!  Research!  Research!', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 8)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (21, CAST(3 AS Decimal(18, 0)), N'Don''t Rush Into It!', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 8)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (22, CAST(1 AS Decimal(18, 0)), N'Are You Qualified?', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 9)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (23, CAST(2 AS Decimal(18, 0)), N'Checkout Each Branch', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 9)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (24, CAST(3 AS Decimal(18, 0)), N'???', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 9)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (25, CAST(1 AS Decimal(18, 0)), N'???', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 10)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (26, CAST(2 AS Decimal(18, 0)), N'???', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 10)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (27, CAST(3 AS Decimal(18, 0)), N'???', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 10)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (28, CAST(1 AS Decimal(18, 0)), N'Choose Your Career Path', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 11)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (29, CAST(2 AS Decimal(18, 0)), N'Meet with a Recruiter', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 11)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (30, CAST(1 AS Decimal(18, 0)), N'Prepare for the ASVAB Test', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 12)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (31, CAST(2 AS Decimal(18, 0)), N'Take the ASVAB Test', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 12)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (32, CAST(1 AS Decimal(18, 0)), N'Military Entrance Processing Station (MEPS)', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 13)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (33, CAST(2 AS Decimal(18, 0)), N'???', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 13)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (34, CAST(1 AS Decimal(18, 0)), N'Prepare for Basic Training', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 14)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (35, CAST(2 AS Decimal(18, 0)), N'Weekly Breakdown of Basic Training', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 14)
SET IDENTITY_INSERT [dbo].[Headstep] OFF
SET IDENTITY_INSERT [dbo].[Link] ON 

INSERT [dbo].[Link] ([LinkID], [ProfileID], [RoadmapID]) VALUES (1, 2, 1)
INSERT [dbo].[Link] ([LinkID], [ProfileID], [RoadmapID]) VALUES (2, 7, 6)
INSERT [dbo].[Link] ([LinkID], [ProfileID], [RoadmapID]) VALUES (12, 2, 6)
INSERT [dbo].[Link] ([LinkID], [ProfileID], [RoadmapID]) VALUES (14, 2, 2)
SET IDENTITY_INSERT [dbo].[Link] OFF
SET IDENTITY_INSERT [dbo].[MainStat] ON 

INSERT [dbo].[MainStat] ([MainStatID], [DueDate], [IsDone], [Notes], [MainstepID], [LinkID]) VALUES (4, NULL, 0, NULL, 9, 12)
INSERT [dbo].[MainStat] ([MainStatID], [DueDate], [IsDone], [Notes], [MainstepID], [LinkID]) VALUES (5, NULL, 0, NULL, 10, 12)
INSERT [dbo].[MainStat] ([MainStatID], [DueDate], [IsDone], [Notes], [MainstepID], [LinkID]) VALUES (6, NULL, 0, NULL, 11, 12)
INSERT [dbo].[MainStat] ([MainStatID], [DueDate], [IsDone], [Notes], [MainstepID], [LinkID]) VALUES (7, NULL, 0, NULL, 8, 12)
INSERT [dbo].[MainStat] ([MainStatID], [DueDate], [IsDone], [Notes], [MainstepID], [LinkID]) VALUES (8, NULL, 0, NULL, 1, 1)
INSERT [dbo].[MainStat] ([MainStatID], [DueDate], [IsDone], [Notes], [MainstepID], [LinkID]) VALUES (9, NULL, 0, NULL, 2, 1)
INSERT [dbo].[MainStat] ([MainStatID], [DueDate], [IsDone], [Notes], [MainstepID], [LinkID]) VALUES (10, NULL, 0, NULL, 3, 1)
INSERT [dbo].[MainStat] ([MainStatID], [DueDate], [IsDone], [Notes], [MainstepID], [LinkID]) VALUES (11, NULL, 0, NULL, 4, 1)
INSERT [dbo].[MainStat] ([MainStatID], [DueDate], [IsDone], [Notes], [MainstepID], [LinkID]) VALUES (12, NULL, 0, NULL, 5, 1)
INSERT [dbo].[MainStat] ([MainStatID], [DueDate], [IsDone], [Notes], [MainstepID], [LinkID]) VALUES (13, NULL, 0, NULL, 6, 1)
INSERT [dbo].[MainStat] ([MainStatID], [DueDate], [IsDone], [Notes], [MainstepID], [LinkID]) VALUES (14, NULL, 0, NULL, 7, 1)
INSERT [dbo].[MainStat] ([MainStatID], [DueDate], [IsDone], [Notes], [MainstepID], [LinkID]) VALUES (15, NULL, 0, NULL, 12, 12)
INSERT [dbo].[MainStat] ([MainStatID], [DueDate], [IsDone], [Notes], [MainstepID], [LinkID]) VALUES (16, NULL, 0, NULL, 13, 12)
INSERT [dbo].[MainStat] ([MainStatID], [DueDate], [IsDone], [Notes], [MainstepID], [LinkID]) VALUES (17, NULL, 0, NULL, 14, 12)
SET IDENTITY_INSERT [dbo].[MainStat] OFF
SET IDENTITY_INSERT [dbo].[Mainstep] ON 

INSERT [dbo].[Mainstep] ([MainstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [RoadmapID]) VALUES (1, CAST(1 AS Decimal(18, 0)), N'Is the Military Right for You?', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 1)
INSERT [dbo].[Mainstep] ([MainstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [RoadmapID]) VALUES (2, CAST(2 AS Decimal(18, 0)), N'Have you Decided on a Branch?', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 1)
INSERT [dbo].[Mainstep] ([MainstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [RoadmapID]) VALUES (3, CAST(3 AS Decimal(18, 0)), N'Enlisted | Commissioned | Warrant', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 1)
INSERT [dbo].[Mainstep] ([MainstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [RoadmapID]) VALUES (4, CAST(4 AS Decimal(18, 0)), N'Recruiting Phase', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 1)
INSERT [dbo].[Mainstep] ([MainstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [RoadmapID]) VALUES (5, CAST(5 AS Decimal(18, 0)), N'Testing Phase', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 1)
INSERT [dbo].[Mainstep] ([MainstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [RoadmapID]) VALUES (6, CAST(6 AS Decimal(18, 0)), N'On-Boarding Phase', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 1)
INSERT [dbo].[Mainstep] ([MainstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [RoadmapID]) VALUES (7, CAST(7 AS Decimal(18, 0)), N'Ready-To-Ship Phase', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 1)
INSERT [dbo].[Mainstep] ([MainstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [RoadmapID]) VALUES (8, CAST(1 AS Decimal(18, 0)), N'Is the Military Right for You?', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 6)
INSERT [dbo].[Mainstep] ([MainstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [RoadmapID]) VALUES (9, CAST(2 AS Decimal(18, 0)), N'Have You Decided on a Branch?', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 6)
INSERT [dbo].[Mainstep] ([MainstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [RoadmapID]) VALUES (10, CAST(3 AS Decimal(18, 0)), N'Enlisted | Commissioned | Warrant', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 6)
INSERT [dbo].[Mainstep] ([MainstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [RoadmapID]) VALUES (11, CAST(4 AS Decimal(18, 0)), N'Recruiting Phase', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 6)
INSERT [dbo].[Mainstep] ([MainstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [RoadmapID]) VALUES (12, CAST(5 AS Decimal(18, 0)), N'Testing Phase ', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 6)
INSERT [dbo].[Mainstep] ([MainstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [RoadmapID]) VALUES (13, CAST(6 AS Decimal(18, 0)), N'On-Boarding Phase ', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 6)
INSERT [dbo].[Mainstep] ([MainstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [RoadmapID]) VALUES (14, CAST(7 AS Decimal(18, 0)), N'Ready-To-Ship Phase', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 6)
SET IDENTITY_INSERT [dbo].[Mainstep] OFF
SET IDENTITY_INSERT [dbo].[MaritalStat] ON 

INSERT [dbo].[MaritalStat] ([MaritalStatID], [Status]) VALUES (1, N'single')
INSERT [dbo].[MaritalStat] ([MaritalStatID], [Status]) VALUES (2, N'married (including common law)')
SET IDENTITY_INSERT [dbo].[MaritalStat] OFF
SET IDENTITY_INSERT [dbo].[PriorService] ON 

INSERT [dbo].[PriorService] ([PriorServiceID], [IsServe]) VALUES (1, 0)
INSERT [dbo].[PriorService] ([PriorServiceID], [IsServe]) VALUES (2, 1)
SET IDENTITY_INSERT [dbo].[PriorService] OFF
SET IDENTITY_INSERT [dbo].[Profile] ON 

INSERT [dbo].[Profile] ([ProfileID], [FName], [LName], [BirthDate], [Height], [Weight], [Dependents], [Title], [Branch], [AsvabScore], [PracticeScore], [PointsTotal], [PointsEarned], [IsDone], [GenderID], [EducationID], [MaritalStatID], [PriorServiceID], [Id]) VALUES (2, N'Diane', N'Korpics', CAST(N'1962-07-10' AS Date), CAST(65 AS Decimal(18, 0)), CAST(125 AS Decimal(18, 0)), 3, N'enlisted', N'Army', NULL, NULL, CAST(84 AS Decimal(18, 0)), CAST(8 AS Decimal(18, 0)), 0, 2, 3, 1, 1, N'26bba179-a37f-409f-9b74-567bac6f3231')
INSERT [dbo].[Profile] ([ProfileID], [FName], [LName], [BirthDate], [Height], [Weight], [Dependents], [Title], [Branch], [AsvabScore], [PracticeScore], [PointsTotal], [PointsEarned], [IsDone], [GenderID], [EducationID], [MaritalStatID], [PriorServiceID], [Id]) VALUES (7, N'Test', N'Person', CAST(N'2001-01-01' AS Date), CAST(70 AS Decimal(18, 0)), CAST(170 AS Decimal(18, 0)), 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 2, 1, 1, N'3938e49a-46d6-44e7-b1af-4aa8e00825bb')
SET IDENTITY_INSERT [dbo].[Profile] OFF
SET IDENTITY_INSERT [dbo].[Roadmap] ON 

INSERT [dbo].[Roadmap] ([RoadmapID], [RoadmapName]) VALUES (1, N'enlisted in the Army')
INSERT [dbo].[Roadmap] ([RoadmapID], [RoadmapName]) VALUES (2, N'enlisted in the Air Force')
INSERT [dbo].[Roadmap] ([RoadmapID], [RoadmapName]) VALUES (3, N'enlisted in the Navy')
INSERT [dbo].[Roadmap] ([RoadmapID], [RoadmapName]) VALUES (4, N'enlisted in the Marines')
INSERT [dbo].[Roadmap] ([RoadmapID], [RoadmapName]) VALUES (5, N'enlisted in the Coast Guard')
INSERT [dbo].[Roadmap] ([RoadmapID], [RoadmapName]) VALUES (6, N'undecided')
SET IDENTITY_INSERT [dbo].[Roadmap] OFF
SET IDENTITY_INSERT [dbo].[SubStat] ON 

INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (5, NULL, 0, NULL, 1, 12)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (6, NULL, 0, NULL, 2, 12)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (7, NULL, 0, NULL, 3, 12)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (8, NULL, 0, NULL, 4, 12)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (9, NULL, 0, NULL, 5, 12)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (10, NULL, 0, NULL, 1, 1)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (11, NULL, 1, NULL, 2, 1)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (12, NULL, 1, NULL, 3, 1)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (13, NULL, 1, NULL, 4, 1)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (14, NULL, 1, NULL, 5, 1)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (15, NULL, 0, NULL, 6, 1)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (16, NULL, 0, NULL, 7, 1)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (17, NULL, 0, NULL, 8, 1)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (18, NULL, 0, NULL, 9, 1)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (19, NULL, 0, NULL, 10, 1)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (20, NULL, 0, NULL, 11, 1)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (21, NULL, 0, NULL, 12, 1)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (22, NULL, 0, NULL, 13, 1)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (23, NULL, 0, NULL, 14, 1)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (24, NULL, 0, NULL, 15, 1)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (25, NULL, 0, NULL, 16, 1)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (26, NULL, 0, NULL, 17, 1)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (27, NULL, 0, NULL, 18, 1)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (28, NULL, 0, NULL, 19, 1)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (29, NULL, 0, NULL, 20, 1)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (30, NULL, 0, NULL, 21, 1)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (31, NULL, 0, NULL, 24, 1)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (32, NULL, 0, NULL, 25, 1)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (33, NULL, 0, NULL, 26, 1)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (34, NULL, 0, NULL, 27, 1)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (35, NULL, 0, NULL, 28, 1)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (36, NULL, 0, NULL, 29, 1)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (37, NULL, 0, NULL, 30, 1)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (38, NULL, 0, NULL, 31, 1)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (39, NULL, 0, NULL, 32, 1)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (40, NULL, 0, NULL, 33, 1)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (41, NULL, 0, NULL, 34, 1)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (42, NULL, 0, NULL, 35, 1)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (43, NULL, 0, NULL, 36, 1)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (44, NULL, 0, NULL, 37, 1)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (45, NULL, 0, NULL, 38, 1)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (46, NULL, 0, NULL, 39, 1)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (47, NULL, 0, NULL, 40, 1)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (48, NULL, 0, NULL, 41, 1)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (49, NULL, 0, NULL, 42, 1)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (50, NULL, 0, NULL, 43, 1)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (51, NULL, 0, NULL, 44, 1)
SET IDENTITY_INSERT [dbo].[SubStat] OFF
SET IDENTITY_INSERT [dbo].[Substep] ON 

INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (1, CAST(1 AS Decimal(18, 0)), N'Talk to your family.', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 1)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (2, CAST(2 AS Decimal(18, 0)), N'Talk to veterans.', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 1)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (3, CAST(1 AS Decimal(18, 0)), N'Read "Top 10 Things You Should Know..."', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 2)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (4, CAST(2 AS Decimal(18, 0)), N'Review these Resources', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 2)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (5, CAST(1 AS Decimal(18, 0)), N'Complete the following Questionaire', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 3)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (6, CAST(2 AS Decimal(18, 0)), N'???', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 3)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (7, CAST(1 AS Decimal(18, 0)), N'Review qualifications', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 4)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (8, CAST(1 AS Decimal(18, 0)), N'Army Resources ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 5)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (9, CAST(2 AS Decimal(18, 0)), N'Air Force Resources ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 5)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (10, CAST(3 AS Decimal(18, 0)), N'Navy Resources ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 5)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (11, CAST(4 AS Decimal(18, 0)), N'Marines Resources ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 5)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (12, CAST(5 AS Decimal(18, 0)), N'Coast Guard Resources ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 5)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (13, CAST(1 AS Decimal(18, 0)), N'Army ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 7)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (14, CAST(2 AS Decimal(18, 0)), N'Air Force ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 7)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (15, CAST(2 AS Decimal(18, 0)), N'Navy ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 8)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (16, CAST(2 AS Decimal(18, 0)), N'Marines ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 9)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (17, CAST(2 AS Decimal(18, 0)), N'Coast Guard ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 10)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (18, CAST(1 AS Decimal(18, 0)), N'Enlisted ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 8)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (19, CAST(1 AS Decimal(18, 0)), N'Officer ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 9)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (20, CAST(1 AS Decimal(18, 0)), N'Warrant Officer ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 10)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (21, CAST(1 AS Decimal(18, 0)), N'Active Duty Army ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 11)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (24, CAST(2 AS Decimal(18, 0)), N'Army Reserve ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 11)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (25, CAST(3 AS Decimal(18, 0)), N'Army National Guard ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 11)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (26, CAST(1 AS Decimal(18, 0)), N'Gather required information and documents ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 12)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (27, CAST(2 AS Decimal(18, 0)), N'Questions to ask the recruiter ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 12)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (28, CAST(3 AS Decimal(18, 0)), N'Find local recruiter ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 12)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (29, CAST(4 AS Decimal(18, 0)), N'Meet your recruiter/submit application ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 12)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (30, CAST(1 AS Decimal(18, 0)), N'What is the ASVAB?', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 13)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (31, CAST(2 AS Decimal(18, 0)), N'ASVAB preparation tips ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 13)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (32, CAST(3 AS Decimal(18, 0)), N'ASVAB test design/layout ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 13)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (33, CAST(4 AS Decimal(18, 0)), N'ASVAB scores for specific careers ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 13)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (34, CAST(1 AS Decimal(18, 0)), N'Take the practice ASVAB test', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 14)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (35, CAST(2 AS Decimal(18, 0)), N'Ace the real ASVAB test ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 14)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (36, CAST(1 AS Decimal(18, 0)), N'Physical exam preparation ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 15)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (37, CAST(2 AS Decimal(18, 0)), N'Pass the physical exam ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 15)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (38, CAST(3 AS Decimal(18, 0)), N'Choose the MOS ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 15)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (39, CAST(4 AS Decimal(18, 0)), N'Take the oath of Enlistment ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 15)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (40, CAST(1 AS Decimal(18, 0)), N'Direct ship/Delayed Entry?', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 17)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (41, CAST(2 AS Decimal(18, 0)), N'What to expect in basic training ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 17)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (42, CAST(3 AS Decimal(18, 0)), N'Physical Fitness', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 17)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (43, CAST(4 AS Decimal(18, 0)), N'Packing List ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 17)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (44, CAST(1 AS Decimal(18, 0)), N'Weekly breakdown of basic training ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 18)
SET IDENTITY_INSERT [dbo].[Substep] OFF
SET ANSI_PADDING ON

GO
/****** Object:  Index [RoleNameIndex]    Script Date: 6/15/2017 10:27:38 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 6/15/2017 10:27:38 AM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 6/15/2017 10:27:38 AM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_RoleId]    Script Date: 6/15/2017 10:27:38 AM ******/
CREATE NONCLUSTERED INDEX [IX_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 6/15/2017 10:27:38 AM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserRoles]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UserNameIndex]    Script Date: 6/15/2017 10:27:38 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[HeadStat]  WITH CHECK ADD  CONSTRAINT [FK_HeadStat_Headstep] FOREIGN KEY([HeadstepID])
REFERENCES [dbo].[Headstep] ([HeadstepID])
GO
ALTER TABLE [dbo].[HeadStat] CHECK CONSTRAINT [FK_HeadStat_Headstep]
GO
ALTER TABLE [dbo].[HeadStat]  WITH CHECK ADD  CONSTRAINT [FK_HeadStat_Link] FOREIGN KEY([LinkID])
REFERENCES [dbo].[Link] ([LinkID])
GO
ALTER TABLE [dbo].[HeadStat] CHECK CONSTRAINT [FK_HeadStat_Link]
GO
ALTER TABLE [dbo].[Headstep]  WITH CHECK ADD  CONSTRAINT [FK_Headstep_Mainstep] FOREIGN KEY([MainstepID])
REFERENCES [dbo].[Mainstep] ([MainstepID])
GO
ALTER TABLE [dbo].[Headstep] CHECK CONSTRAINT [FK_Headstep_Mainstep]
GO
ALTER TABLE [dbo].[Link]  WITH CHECK ADD  CONSTRAINT [FK_Link_Profile] FOREIGN KEY([ProfileID])
REFERENCES [dbo].[Profile] ([ProfileID])
GO
ALTER TABLE [dbo].[Link] CHECK CONSTRAINT [FK_Link_Profile]
GO
ALTER TABLE [dbo].[Link]  WITH CHECK ADD  CONSTRAINT [FK_Link_Roadmap] FOREIGN KEY([RoadmapID])
REFERENCES [dbo].[Roadmap] ([RoadmapID])
GO
ALTER TABLE [dbo].[Link] CHECK CONSTRAINT [FK_Link_Roadmap]
GO
ALTER TABLE [dbo].[MainStat]  WITH CHECK ADD  CONSTRAINT [FK_MainStat_Link] FOREIGN KEY([LinkID])
REFERENCES [dbo].[Link] ([LinkID])
GO
ALTER TABLE [dbo].[MainStat] CHECK CONSTRAINT [FK_MainStat_Link]
GO
ALTER TABLE [dbo].[MainStat]  WITH CHECK ADD  CONSTRAINT [FK_MainStat_Mainstep] FOREIGN KEY([MainstepID])
REFERENCES [dbo].[Mainstep] ([MainstepID])
GO
ALTER TABLE [dbo].[MainStat] CHECK CONSTRAINT [FK_MainStat_Mainstep]
GO
ALTER TABLE [dbo].[Mainstep]  WITH CHECK ADD  CONSTRAINT [FK_Mainstep_Roadmap] FOREIGN KEY([RoadmapID])
REFERENCES [dbo].[Roadmap] ([RoadmapID])
GO
ALTER TABLE [dbo].[Mainstep] CHECK CONSTRAINT [FK_Mainstep_Roadmap]
GO
ALTER TABLE [dbo].[Profile]  WITH CHECK ADD  CONSTRAINT [FK_Profile_AspNetUsers] FOREIGN KEY([Id])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Profile] CHECK CONSTRAINT [FK_Profile_AspNetUsers]
GO
ALTER TABLE [dbo].[Profile]  WITH CHECK ADD  CONSTRAINT [FK_Profile_Education] FOREIGN KEY([EducationID])
REFERENCES [dbo].[Education] ([EducationID])
GO
ALTER TABLE [dbo].[Profile] CHECK CONSTRAINT [FK_Profile_Education]
GO
ALTER TABLE [dbo].[Profile]  WITH CHECK ADD  CONSTRAINT [FK_Profile_Gender] FOREIGN KEY([GenderID])
REFERENCES [dbo].[Gender] ([GenderID])
GO
ALTER TABLE [dbo].[Profile] CHECK CONSTRAINT [FK_Profile_Gender]
GO
ALTER TABLE [dbo].[Profile]  WITH CHECK ADD  CONSTRAINT [FK_Profile_MaritalStat] FOREIGN KEY([MaritalStatID])
REFERENCES [dbo].[MaritalStat] ([MaritalStatID])
GO
ALTER TABLE [dbo].[Profile] CHECK CONSTRAINT [FK_Profile_MaritalStat]
GO
ALTER TABLE [dbo].[Profile]  WITH CHECK ADD  CONSTRAINT [FK_Profile_PriorService] FOREIGN KEY([PriorServiceID])
REFERENCES [dbo].[PriorService] ([PriorServiceID])
GO
ALTER TABLE [dbo].[Profile] CHECK CONSTRAINT [FK_Profile_PriorService]
GO
ALTER TABLE [dbo].[SubStat]  WITH CHECK ADD  CONSTRAINT [FK_SubStat_Link] FOREIGN KEY([LinkID])
REFERENCES [dbo].[Link] ([LinkID])
GO
ALTER TABLE [dbo].[SubStat] CHECK CONSTRAINT [FK_SubStat_Link]
GO
ALTER TABLE [dbo].[SubStat]  WITH CHECK ADD  CONSTRAINT [FK_SubStat_Substep] FOREIGN KEY([SubstepID])
REFERENCES [dbo].[Substep] ([SubstepID])
GO
ALTER TABLE [dbo].[SubStat] CHECK CONSTRAINT [FK_SubStat_Substep]
GO
ALTER TABLE [dbo].[Substep]  WITH CHECK ADD  CONSTRAINT [FK_Substep_Headstep] FOREIGN KEY([HeadstepID])
REFERENCES [dbo].[Headstep] ([HeadstepID])
GO
ALTER TABLE [dbo].[Substep] CHECK CONSTRAINT [FK_Substep_Headstep]
GO
USE [master]
GO
ALTER DATABASE [ReadyRecruit] SET  READ_WRITE 
GO
