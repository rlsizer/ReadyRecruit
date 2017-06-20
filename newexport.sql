USE [master]
GO
/****** Object:  Database [ReadyRecruit]    Script Date: 6/19/2017 8:59:23 PM ******/
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
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 6/19/2017 8:59:23 PM ******/
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
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 6/19/2017 8:59:23 PM ******/
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
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 6/19/2017 8:59:23 PM ******/
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
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 6/19/2017 8:59:23 PM ******/
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
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 6/19/2017 8:59:23 PM ******/
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
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 6/19/2017 8:59:23 PM ******/
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
/****** Object:  Table [dbo].[Education]    Script Date: 6/19/2017 8:59:23 PM ******/
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
/****** Object:  Table [dbo].[Gender]    Script Date: 6/19/2017 8:59:23 PM ******/
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
/****** Object:  Table [dbo].[HeadStat]    Script Date: 6/19/2017 8:59:23 PM ******/
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
/****** Object:  Table [dbo].[Headstep]    Script Date: 6/19/2017 8:59:23 PM ******/
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
/****** Object:  Table [dbo].[Link]    Script Date: 6/19/2017 8:59:23 PM ******/
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
/****** Object:  Table [dbo].[MainStat]    Script Date: 6/19/2017 8:59:23 PM ******/
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
/****** Object:  Table [dbo].[Mainstep]    Script Date: 6/19/2017 8:59:23 PM ******/
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
/****** Object:  Table [dbo].[MaritalStat]    Script Date: 6/19/2017 8:59:23 PM ******/
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
/****** Object:  Table [dbo].[PriorService]    Script Date: 6/19/2017 8:59:23 PM ******/
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
/****** Object:  Table [dbo].[Profile]    Script Date: 6/19/2017 8:59:23 PM ******/
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
/****** Object:  Table [dbo].[Roadmap]    Script Date: 6/19/2017 8:59:23 PM ******/
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
/****** Object:  Table [dbo].[SubStat]    Script Date: 6/19/2017 8:59:23 PM ******/
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
/****** Object:  Table [dbo].[Substep]    Script Date: 6/19/2017 8:59:23 PM ******/
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
INSERT [dbo].[AspNetUserLogins] ([LoginProvider], [ProviderKey], [UserId]) VALUES (N'Facebook', N'10156199334442699', N'8f7a6a41-1d40-4b42-9467-4883d22b3d91')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'26bba179-a37f-409f-9b74-567bac6f3231', N'dkorpics@roadrunner.com', 0, N'AEBLnFBv8WW0u/9nugvFhGSMCF2Xx+w7CdNdJPuP9xI7Wd8/BA8aJQSSLfogz9TDAA==', N'd73cdf60-b7e6-4103-bfbf-3c960e562776', NULL, 0, 0, NULL, 1, 0, N'dkorpics@roadrunner.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'330efd82-d6fd-4a0a-b030-83fa9cb7ab87', N'test2@gmail.com', 0, N'ANZDw/xb7m4t4NvOVh84hFteie80aklG4ySF7ONBnycMibRhhJ5GaTDkbCDBrf+Wdw==', N'354bb1a9-206e-4ea5-8212-9f18e94dc86a', NULL, 0, 0, NULL, 1, 0, N'test2@gmail.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'3938e49a-46d6-44e7-b1af-4aa8e00825bb', N'test@yahoo.com', 0, N'ADUDbT22lahxjUeYiJQnYqNFvEc4hHEgFTwi59V3GLA89JVROVIz7AjnMFrOwi9Ubg==', N'602bf0fd-1394-4301-966f-5bb85822047e', NULL, 0, 0, NULL, 1, 0, N'test@yahoo.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'654c64b4-94ce-46f8-882f-7c3c5ba9ec81', N'test3@gmail.com', 0, N'ABmdfHE8dmGLzbhIiUtW45nFU/jPl4UXCv4IeYfEiknQe48E/ojfslItIOuf2tIyrQ==', N'94ed8d90-ba6a-4617-95f8-c122f44f16ac', NULL, 0, 0, NULL, 1, 0, N'test3@gmail.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'79ae7fd1-437e-404c-a6bc-9a7e9a05af4f', N'test10@gmail.com', 0, N'AAqkHJPUQTppuVGabmHor8ARul68FU6Z36XM/N9gt9mLyCGqtzR9Bgsv7MojjNP2sw==', N'a39c6931-3bb4-418b-9f0d-a6ef1b6cd209', NULL, 0, 0, NULL, 1, 0, N'test10@gmail.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'8f7a6a41-1d40-4b42-9467-4883d22b3d91', N'theryanlee@live.com', 0, NULL, N'8921568c-9ded-49d5-a125-c952d2b6fbf6', NULL, 0, 0, NULL, 1, 0, N'theryanlee@live.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'bf48aa72-c70a-4d13-901b-07a84d4421d6', N'test4@gmail.com', 0, N'AFZi/7hj944os98Q+GjMfqs06M8nQoOqkKQiXQFiMcTXEeN7JOruQMtmiE8GHPQ+4g==', N'b7a539e5-1353-4277-bf3b-d9b079fb5a5b', NULL, 0, 0, NULL, 1, 0, N'test4@gmail.com')
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
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (16, NULL, 0, N'Ryan is awesome.', 1, 1)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (17, NULL, 0, N'These are some notes.', 2, 1)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (18, NULL, 0, N'', 3, 1)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (19, NULL, 0, N'Notes go here.', 4, 1)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (20, NULL, 0, NULL, 5, 1)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (21, NULL, 0, NULL, 7, 1)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (22, NULL, 0, N'  I think I want to go in as enlisted, but I am going to look into being a commissioned officer too.', 8, 1)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (23, NULL, 0, NULL, 9, 1)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (24, NULL, 0, NULL, 10, 1)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (25, NULL, 0, N'Ithink I want to be in Army Reserve.', 11, 1)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (26, NULL, 0, NULL, 12, 1)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (27, NULL, 0, NULL, 13, 1)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (28, NULL, 0, NULL, 14, 1)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (29, NULL, 0, N'Notes here.', 15, 1)
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
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (41, NULL, 0, NULL, 1, 17)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (42, NULL, 0, NULL, 2, 17)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (43, NULL, 0, NULL, 3, 17)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (44, NULL, 0, NULL, 4, 17)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (45, NULL, 0, NULL, 5, 17)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (46, NULL, 0, NULL, 7, 17)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (47, NULL, 0, NULL, 8, 17)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (48, NULL, 0, NULL, 9, 17)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (49, NULL, 0, NULL, 10, 17)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (50, NULL, 0, NULL, 11, 17)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (51, NULL, 0, NULL, 12, 17)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (52, NULL, 0, NULL, 13, 17)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (53, NULL, 0, NULL, 14, 17)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (54, NULL, 0, NULL, 15, 17)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (55, NULL, 0, NULL, 16, 17)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (56, NULL, 0, NULL, 17, 17)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (57, NULL, 0, NULL, 18, 17)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (58, NULL, 0, NULL, 241, 19)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (59, NULL, 0, NULL, 242, 19)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (60, NULL, 0, NULL, 243, 19)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (61, NULL, 0, NULL, 244, 19)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (62, NULL, 0, NULL, 245, 19)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (63, NULL, 0, NULL, 246, 19)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (64, NULL, 0, NULL, 247, 19)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (65, NULL, 0, NULL, 248, 19)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (66, NULL, 0, NULL, 249, 19)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (67, NULL, 0, NULL, 250, 19)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (68, NULL, 0, NULL, 251, 19)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (69, NULL, 0, NULL, 252, 19)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (70, NULL, 0, NULL, 253, 19)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (71, NULL, 0, NULL, 254, 19)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (72, NULL, 0, NULL, 255, 19)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (73, NULL, 0, NULL, 256, 19)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (74, NULL, 0, NULL, 257, 19)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (75, NULL, 0, NULL, 224, 20)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (76, NULL, 0, NULL, 225, 20)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (77, NULL, 0, NULL, 226, 20)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (78, NULL, 0, NULL, 227, 20)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (79, NULL, 0, NULL, 228, 20)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (80, NULL, 0, NULL, 229, 20)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (81, NULL, 0, NULL, 230, 20)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (82, NULL, 0, NULL, 231, 20)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (83, NULL, 0, NULL, 232, 20)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (84, NULL, 0, NULL, 233, 20)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (85, NULL, 0, NULL, 234, 20)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (86, NULL, 0, NULL, 235, 20)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (87, NULL, 0, NULL, 236, 20)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (88, NULL, 0, NULL, 237, 20)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (89, NULL, 0, NULL, 238, 20)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (90, NULL, 0, NULL, 239, 20)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (91, NULL, 0, NULL, 240, 20)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (92, NULL, 0, NULL, 139, 21)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (93, NULL, 0, NULL, 140, 21)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (94, NULL, 0, NULL, 141, 21)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (95, NULL, 0, NULL, 142, 21)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (96, NULL, 0, NULL, 143, 21)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (97, NULL, 0, NULL, 144, 21)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (98, NULL, 0, NULL, 145, 21)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (99, NULL, 0, NULL, 146, 21)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (100, NULL, 0, NULL, 147, 21)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (101, NULL, 0, NULL, 148, 21)
GO
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (102, NULL, 0, NULL, 149, 21)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (103, NULL, 0, NULL, 150, 21)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (104, NULL, 0, NULL, 151, 21)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (105, NULL, 0, NULL, 152, 21)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (106, NULL, 0, NULL, 153, 21)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (107, NULL, 0, NULL, 154, 21)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (108, NULL, 0, NULL, 155, 21)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (109, NULL, 0, NULL, 173, 22)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (110, NULL, 0, NULL, 174, 22)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (111, NULL, 0, NULL, 175, 22)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (112, NULL, 0, NULL, 176, 22)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (113, NULL, 0, NULL, 177, 22)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (114, NULL, 0, NULL, 178, 22)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (115, NULL, 0, NULL, 179, 22)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (116, NULL, 0, NULL, 180, 22)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (117, NULL, 0, NULL, 181, 22)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (118, NULL, 0, NULL, 182, 22)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (119, NULL, 0, NULL, 183, 22)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (120, NULL, 0, NULL, 184, 22)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (121, NULL, 0, NULL, 185, 22)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (122, NULL, 0, NULL, 186, 22)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (123, NULL, 0, NULL, 187, 22)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (124, NULL, 0, NULL, 188, 22)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (125, NULL, 0, NULL, 189, 22)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (126, NULL, 0, NULL, 258, 23)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (127, NULL, 0, NULL, 259, 23)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (128, NULL, 0, NULL, 260, 23)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (129, NULL, 0, NULL, 261, 23)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (130, NULL, 0, NULL, 262, 23)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (131, NULL, 0, NULL, 263, 23)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (132, NULL, 0, NULL, 264, 23)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (133, NULL, 0, NULL, 265, 23)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (134, NULL, 0, NULL, 266, 23)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (135, NULL, 0, NULL, 267, 23)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (136, NULL, 0, NULL, 268, 23)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (137, NULL, 0, NULL, 269, 23)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (138, NULL, 0, NULL, 270, 23)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (139, NULL, 0, NULL, 271, 23)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (140, NULL, 0, NULL, 272, 23)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (141, NULL, 0, NULL, 273, 23)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (142, NULL, 0, NULL, 274, 23)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (143, NULL, 0, NULL, 87, 24)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (144, NULL, 0, NULL, 88, 24)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (145, NULL, 0, NULL, 89, 24)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (146, NULL, 0, NULL, 90, 24)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (147, NULL, 0, NULL, 91, 24)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (148, NULL, 0, NULL, 92, 24)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (149, NULL, 0, NULL, 93, 24)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (150, NULL, 0, NULL, 94, 24)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (151, NULL, 0, NULL, 95, 24)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (152, NULL, 0, NULL, 96, 24)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (153, NULL, 0, NULL, 97, 24)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (154, NULL, 0, NULL, 98, 24)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (155, NULL, 0, NULL, 99, 24)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (156, NULL, 0, NULL, 100, 24)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (157, NULL, 0, NULL, 101, 24)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (158, NULL, 0, NULL, 102, 24)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (159, NULL, 0, NULL, 103, 24)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (160, NULL, 0, NULL, 105, 25)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (161, NULL, 0, NULL, 106, 25)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (162, NULL, 0, NULL, 107, 25)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (163, NULL, 0, NULL, 108, 25)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (164, NULL, 0, NULL, 109, 25)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (165, NULL, 0, NULL, 111, 25)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (166, NULL, 0, NULL, 112, 25)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (167, NULL, 0, NULL, 113, 25)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (168, NULL, 0, NULL, 114, 25)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (169, NULL, 0, NULL, 115, 25)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (170, NULL, 0, NULL, 116, 25)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (171, NULL, 0, NULL, 117, 25)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (172, NULL, 0, NULL, 118, 25)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (173, NULL, 0, NULL, 120, 25)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (174, NULL, 0, NULL, 121, 25)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (175, NULL, 0, NULL, 70, 18)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (176, NULL, 0, NULL, 71, 18)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (177, NULL, 0, NULL, 72, 18)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (178, NULL, 0, NULL, 73, 18)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (179, NULL, 0, NULL, 74, 18)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (180, NULL, 0, NULL, 76, 18)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (181, NULL, 0, NULL, 77, 18)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (182, NULL, 0, NULL, 78, 18)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (183, NULL, 0, NULL, 79, 18)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (184, NULL, 0, NULL, 80, 18)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (185, NULL, 0, NULL, 81, 18)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (186, NULL, 0, NULL, 82, 18)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (187, NULL, 0, NULL, 83, 18)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (188, NULL, 0, NULL, 85, 18)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (189, NULL, 0, NULL, 86, 18)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (190, NULL, 0, NULL, 190, 26)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (191, NULL, 0, NULL, 191, 26)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (192, NULL, 0, NULL, 192, 26)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (193, NULL, 0, NULL, 193, 26)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (194, NULL, 0, NULL, 194, 26)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (195, NULL, 0, NULL, 196, 26)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (196, NULL, 0, NULL, 197, 26)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (197, NULL, 0, NULL, 198, 26)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (198, NULL, 0, NULL, 199, 26)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (199, NULL, 0, NULL, 200, 26)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (200, NULL, 0, NULL, 201, 26)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (201, NULL, 0, NULL, 202, 26)
GO
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (202, NULL, 0, NULL, 203, 26)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (203, NULL, 0, NULL, 205, 26)
INSERT [dbo].[HeadStat] ([HeadStatID], [DueDate], [IsDone], [Notes], [HeadstepID], [LinkID]) VALUES (204, NULL, 0, NULL, 206, 26)
SET IDENTITY_INSERT [dbo].[HeadStat] OFF
SET IDENTITY_INSERT [dbo].[Headstep] ON 

INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (1, CAST(1 AS Decimal(18, 0)), N'Talk it Out', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 1)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (2, CAST(2 AS Decimal(18, 0)), N'Research! Research! Research!', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 1)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (3, CAST(3 AS Decimal(18, 0)), N'Don''t rush into it!', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 1)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (4, CAST(1 AS Decimal(18, 0)), N'Are you Qualified?', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 2)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (5, CAST(2 AS Decimal(18, 0)), N'Checkout Each Branch', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 2)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (7, CAST(3 AS Decimal(18, 0)), N'???', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 2)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (8, CAST(1 AS Decimal(18, 0)), N'Enlisted', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 3)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (9, CAST(2 AS Decimal(18, 0)), N'Commissioned Officer', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 3)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (10, CAST(3 AS Decimal(18, 0)), N'Warrant Officer', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 3)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (11, CAST(1 AS Decimal(18, 0)), N'Choose Your Army Career Path', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 4)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (12, CAST(2 AS Decimal(18, 0)), N'Meet with a Recruiter', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 4)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (13, CAST(1 AS Decimal(18, 0)), N'Prepare for the ASVAB Test', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 5)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (14, CAST(2 AS Decimal(18, 0)), N'Take the ASVAB Test', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 5)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (15, CAST(1 AS Decimal(18, 0)), N'Military Entrance Processing Station (MEPS)', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 6)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (16, CAST(2 AS Decimal(18, 0)), N'???', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 6)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (17, CAST(1 AS Decimal(18, 0)), N'Prepare for Basic Training', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 7)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (18, CAST(2 AS Decimal(18, 0)), N'Breakdown of Basic Training', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 7)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (19, CAST(1 AS Decimal(18, 0)), N'Talk it Out', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 8)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (20, CAST(2 AS Decimal(18, 0)), N'Research!  Research!  Research!', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 8)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (21, CAST(3 AS Decimal(18, 0)), N'Don''t Rush Into It!', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 8)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (22, CAST(1 AS Decimal(18, 0)), N'Are You Qualified?', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 9)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (23, CAST(2 AS Decimal(18, 0)), N'Checkout Each Branch', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 9)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (24, CAST(3 AS Decimal(18, 0)), N'???', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 9)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (25, CAST(1 AS Decimal(18, 0)), N'Enlisted', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 10)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (26, CAST(2 AS Decimal(18, 0)), N'Commissioned Officer', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 10)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (27, CAST(3 AS Decimal(18, 0)), N'Warrant Officer', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 10)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (28, CAST(1 AS Decimal(18, 0)), N'Choose Your Career Path', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 11)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (29, CAST(2 AS Decimal(18, 0)), N'Meet with a Recruiter', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 11)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (30, CAST(1 AS Decimal(18, 0)), N'Prepare for the ASVAB Test', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 12)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (31, CAST(2 AS Decimal(18, 0)), N'Take the ASVAB Test', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 12)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (32, CAST(1 AS Decimal(18, 0)), N'Military Entrance Processing Station (MEPS)', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 13)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (33, CAST(2 AS Decimal(18, 0)), N'???', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 13)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (34, CAST(1 AS Decimal(18, 0)), N'Prepare for Basic Training', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 14)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (35, CAST(2 AS Decimal(18, 0)), N'Breakdown of Basic Training', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 14)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (36, CAST(1 AS Decimal(18, 0)), N'Talk it Out', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 15)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (37, CAST(2 AS Decimal(18, 0)), N'Research! Research! Research!', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 15)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (38, CAST(3 AS Decimal(18, 0)), N'Don''t rush into it!', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 15)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (39, CAST(1 AS Decimal(18, 0)), N'Are you Qualified?', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 16)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (40, CAST(2 AS Decimal(18, 0)), N'Checkout Each Branch', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 16)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (41, CAST(3 AS Decimal(18, 0)), N'???', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 16)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (42, CAST(1 AS Decimal(18, 0)), N'Enlisted', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 17)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (43, CAST(2 AS Decimal(18, 0)), N'Commissioned Officer', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 17)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (44, CAST(3 AS Decimal(18, 0)), N'Warrant Officer', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 17)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (45, CAST(1 AS Decimal(18, 0)), N'Choose Your Army Career Path', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 18)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (46, CAST(2 AS Decimal(18, 0)), N'Meet with a Recruiter', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 18)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (47, CAST(1 AS Decimal(18, 0)), N'Prepare for the ASVAB Test', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 19)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (48, CAST(2 AS Decimal(18, 0)), N'Take the ASVAB Test', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 19)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (49, CAST(1 AS Decimal(18, 0)), N'Military Entrance Processing Station (MEPS)', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 20)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (50, CAST(2 AS Decimal(18, 0)), N'???', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 20)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (51, CAST(1 AS Decimal(18, 0)), N'Prepare for Basic Training', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 21)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (52, CAST(2 AS Decimal(18, 0)), N'Breakdown of Basic Training', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 21)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (53, CAST(1 AS Decimal(18, 0)), N'Talk it Out', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 22)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (54, CAST(2 AS Decimal(18, 0)), N'Research! Research! Research!', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 22)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (55, CAST(3 AS Decimal(18, 0)), N'Don''t rush into it!', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 22)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (56, CAST(1 AS Decimal(18, 0)), N'Are you Qualified?', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 23)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (57, CAST(2 AS Decimal(18, 0)), N'Checkout Each Branch', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 23)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (58, CAST(3 AS Decimal(18, 0)), N'???', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 23)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (59, CAST(1 AS Decimal(18, 0)), N'Enlisted', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 24)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (60, CAST(2 AS Decimal(18, 0)), N'Commissioned Officer', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 24)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (61, CAST(3 AS Decimal(18, 0)), N'Warrant Officer', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 24)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (62, CAST(1 AS Decimal(18, 0)), N'Choose Your Army Career Path', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 25)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (63, CAST(2 AS Decimal(18, 0)), N'Meet with a Recruiter', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 25)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (64, CAST(1 AS Decimal(18, 0)), N'Prepare for the ASVAB Test', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 26)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (65, CAST(2 AS Decimal(18, 0)), N'Take the ASVAB Test', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 26)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (66, CAST(1 AS Decimal(18, 0)), N'Military Entrance Processing Station (MEPS)', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 27)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (67, CAST(2 AS Decimal(18, 0)), N'???', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 27)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (68, CAST(1 AS Decimal(18, 0)), N'Prepare for Basic Training', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 28)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (69, CAST(2 AS Decimal(18, 0)), N'Breakdown of Basic Training', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 28)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (70, CAST(1 AS Decimal(18, 0)), N'Talk it Out', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 29)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (71, CAST(2 AS Decimal(18, 0)), N'Research! Research! Research!', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 29)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (72, CAST(3 AS Decimal(18, 0)), N'Don''t rush into it!', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 29)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (73, CAST(1 AS Decimal(18, 0)), N'Are you Qualified?', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 30)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (74, CAST(2 AS Decimal(18, 0)), N'Checkout Each Branch', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 30)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (75, CAST(3 AS Decimal(18, 0)), N'???', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 30)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (76, CAST(1 AS Decimal(18, 0)), N'Enlisted', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 31)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (77, CAST(2 AS Decimal(18, 0)), N'Commissioned Officer', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 31)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (78, CAST(3 AS Decimal(18, 0)), N'Warrant Officer', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 31)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (79, CAST(1 AS Decimal(18, 0)), N'Choose Your Army Career Path', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 32)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (80, CAST(2 AS Decimal(18, 0)), N'Meet with a Recruiter', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 32)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (81, CAST(1 AS Decimal(18, 0)), N'Prepare for the ASVAB Test', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 33)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (82, CAST(2 AS Decimal(18, 0)), N'Take the ASVAB Test', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 33)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (83, CAST(1 AS Decimal(18, 0)), N'Military Entrance Processing Station (MEPS)', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 34)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (84, CAST(2 AS Decimal(18, 0)), N'???', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 34)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (85, CAST(1 AS Decimal(18, 0)), N'Prepare for Basic Training', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 35)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (86, CAST(2 AS Decimal(18, 0)), N'Breakdown of Basic Training', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 35)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (87, CAST(1 AS Decimal(18, 0)), N'Talk it Out', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 36)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (88, CAST(2 AS Decimal(18, 0)), N'Research! Research! Research!', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 36)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (89, CAST(3 AS Decimal(18, 0)), N'Don''t rush into it!', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 36)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (90, CAST(1 AS Decimal(18, 0)), N'Are you Qualified?', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 37)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (91, CAST(2 AS Decimal(18, 0)), N'Checkout Each Branch', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 37)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (92, CAST(3 AS Decimal(18, 0)), N'???', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 37)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (93, CAST(1 AS Decimal(18, 0)), N'Enlisted', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 38)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (94, CAST(2 AS Decimal(18, 0)), N'Commissioned Officer', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 38)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (95, CAST(3 AS Decimal(18, 0)), N'Warrant Officer', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 38)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (96, CAST(1 AS Decimal(18, 0)), N'Choose Your Army Career Path', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 39)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (97, CAST(2 AS Decimal(18, 0)), N'Meet with a Recruiter', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 39)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (98, CAST(1 AS Decimal(18, 0)), N'Prepare for the ASVAB Test', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 40)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (99, CAST(2 AS Decimal(18, 0)), N'Take the ASVAB Test', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 40)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (100, CAST(1 AS Decimal(18, 0)), N'Military Entrance Processing Station (MEPS)', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 41)
GO
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (101, CAST(2 AS Decimal(18, 0)), N'???', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 41)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (102, CAST(1 AS Decimal(18, 0)), N'Prepare for Basic Training', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 42)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (103, CAST(2 AS Decimal(18, 0)), N'Breakdown of Basic Training', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 42)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (105, CAST(1 AS Decimal(18, 0)), N'Talk it Out', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 44)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (106, CAST(2 AS Decimal(18, 0)), N'Research! Research! Research!', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 44)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (107, CAST(3 AS Decimal(18, 0)), N'Don''t rush into it!', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 44)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (108, CAST(1 AS Decimal(18, 0)), N'Are you Qualified?', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 45)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (109, CAST(2 AS Decimal(18, 0)), N'Checkout Each Branch', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 45)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (110, CAST(3 AS Decimal(18, 0)), N'???', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 45)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (111, CAST(1 AS Decimal(18, 0)), N'Enlisted', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 46)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (112, CAST(2 AS Decimal(18, 0)), N'Commissioned Officer', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 46)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (113, CAST(3 AS Decimal(18, 0)), N'Warrant Officer', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 46)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (114, CAST(1 AS Decimal(18, 0)), N'Choose Your Army Career Path', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 47)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (115, CAST(2 AS Decimal(18, 0)), N'Meet with a Recruiter', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 47)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (116, CAST(1 AS Decimal(18, 0)), N'Prepare for the ASVAB Test', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 48)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (117, CAST(2 AS Decimal(18, 0)), N'Take the ASVAB Test', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 48)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (118, CAST(1 AS Decimal(18, 0)), N'Military Entrance Processing Station (MEPS)', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 49)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (119, CAST(2 AS Decimal(18, 0)), N'???', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 49)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (120, CAST(1 AS Decimal(18, 0)), N'Prepare for Basic Training', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 50)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (121, CAST(2 AS Decimal(18, 0)), N'Breakdown of Basic Training', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 50)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (122, CAST(1 AS Decimal(18, 0)), N'Talk it Out', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 51)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (123, CAST(2 AS Decimal(18, 0)), N'Research! Research! Research!', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 51)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (124, CAST(3 AS Decimal(18, 0)), N'Don''t rush into it!', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 51)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (125, CAST(1 AS Decimal(18, 0)), N'Are you Qualified?', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 52)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (126, CAST(2 AS Decimal(18, 0)), N'Checkout Each Branch', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 52)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (127, CAST(3 AS Decimal(18, 0)), N'???', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 52)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (128, CAST(1 AS Decimal(18, 0)), N'Enlisted', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 53)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (129, CAST(2 AS Decimal(18, 0)), N'Commissioned Officer', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 53)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (130, CAST(3 AS Decimal(18, 0)), N'Warrant Officer', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 53)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (131, CAST(1 AS Decimal(18, 0)), N'Choose Your Army Career Path', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 54)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (132, CAST(2 AS Decimal(18, 0)), N'Meet with a Recruiter', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 54)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (133, CAST(1 AS Decimal(18, 0)), N'Prepare for the ASVAB Test', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 55)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (134, CAST(2 AS Decimal(18, 0)), N'Take the ASVAB Test', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 55)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (135, CAST(1 AS Decimal(18, 0)), N'Military Entrance Processing Station (MEPS)', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 56)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (136, CAST(2 AS Decimal(18, 0)), N'???', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 56)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (137, CAST(1 AS Decimal(18, 0)), N'Prepare for Basic Training', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 57)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (138, CAST(2 AS Decimal(18, 0)), N'Breakdown of Basic Training', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 57)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (139, CAST(1 AS Decimal(18, 0)), N'Talk it Out', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 58)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (140, CAST(2 AS Decimal(18, 0)), N'Research! Research! Research!', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 58)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (141, CAST(3 AS Decimal(18, 0)), N'Don''t rush into it!', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 58)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (142, CAST(1 AS Decimal(18, 0)), N'Are you Qualified?', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 59)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (143, CAST(2 AS Decimal(18, 0)), N'Checkout Each Branch', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 59)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (144, CAST(3 AS Decimal(18, 0)), N'???', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 59)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (145, CAST(1 AS Decimal(18, 0)), N'Enlisted', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 60)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (146, CAST(2 AS Decimal(18, 0)), N'Commissioned Officer', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 60)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (147, CAST(3 AS Decimal(18, 0)), N'Warrant Officer', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 60)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (148, CAST(1 AS Decimal(18, 0)), N'Choose Your Army Career Path', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 61)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (149, CAST(2 AS Decimal(18, 0)), N'Meet with a Recruiter', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 61)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (150, CAST(1 AS Decimal(18, 0)), N'Prepare for the ASVAB Test', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 62)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (151, CAST(2 AS Decimal(18, 0)), N'Take the ASVAB Test', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 62)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (152, CAST(1 AS Decimal(18, 0)), N'Military Entrance Processing Station (MEPS)', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 63)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (153, CAST(2 AS Decimal(18, 0)), N'???', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 63)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (154, CAST(1 AS Decimal(18, 0)), N'Prepare for Basic Training', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 64)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (155, CAST(2 AS Decimal(18, 0)), N'Breakdown of Basic Training', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 64)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (156, CAST(1 AS Decimal(18, 0)), N'Talk it Out', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 65)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (157, CAST(2 AS Decimal(18, 0)), N'Research! Research! Research!', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 65)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (158, CAST(3 AS Decimal(18, 0)), N'Don''t rush into it!', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 65)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (159, CAST(1 AS Decimal(18, 0)), N'Are you Qualified?', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 66)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (160, CAST(2 AS Decimal(18, 0)), N'Checkout Each Branch', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 66)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (161, CAST(3 AS Decimal(18, 0)), N'???', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 66)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (162, CAST(1 AS Decimal(18, 0)), N'Enlisted', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 67)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (163, CAST(2 AS Decimal(18, 0)), N'Commissioned Officer', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 67)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (164, CAST(3 AS Decimal(18, 0)), N'Warrant Officer', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 67)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (165, CAST(1 AS Decimal(18, 0)), N'Choose Your Army Career Path', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 68)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (166, CAST(2 AS Decimal(18, 0)), N'Meet with a Recruiter', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 68)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (167, CAST(1 AS Decimal(18, 0)), N'Prepare for the ASVAB Test', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 69)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (168, CAST(2 AS Decimal(18, 0)), N'Take the ASVAB Test', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 69)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (169, CAST(1 AS Decimal(18, 0)), N'Military Entrance Processing Station (MEPS)', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 70)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (170, CAST(2 AS Decimal(18, 0)), N'???', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 70)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (171, CAST(1 AS Decimal(18, 0)), N'Prepare for Basic Training', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 71)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (172, CAST(2 AS Decimal(18, 0)), N'Breakdown of Basic Training', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 71)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (173, CAST(1 AS Decimal(18, 0)), N'Talk it Out', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 72)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (174, CAST(2 AS Decimal(18, 0)), N'Research! Research! Research!', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 72)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (175, CAST(3 AS Decimal(18, 0)), N'Don''t rush into it!', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 72)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (176, CAST(1 AS Decimal(18, 0)), N'Are you Qualified?', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 73)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (177, CAST(2 AS Decimal(18, 0)), N'Checkout Each Branch', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 73)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (178, CAST(3 AS Decimal(18, 0)), N'???', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 73)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (179, CAST(1 AS Decimal(18, 0)), N'Enlisted', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 74)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (180, CAST(2 AS Decimal(18, 0)), N'Commissioned Officer', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 74)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (181, CAST(3 AS Decimal(18, 0)), N'Warrant Officer', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 74)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (182, CAST(1 AS Decimal(18, 0)), N'Choose Your Army Career Path', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 75)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (183, CAST(2 AS Decimal(18, 0)), N'Meet with a Recruiter', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 75)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (184, CAST(1 AS Decimal(18, 0)), N'Prepare for the ASVAB Test', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 76)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (185, CAST(2 AS Decimal(18, 0)), N'Take the ASVAB Test', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 76)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (186, CAST(1 AS Decimal(18, 0)), N'Military Entrance Processing Station (MEPS)', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 77)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (187, CAST(2 AS Decimal(18, 0)), N'???', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 77)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (188, CAST(1 AS Decimal(18, 0)), N'Prepare for Basic Training', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 78)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (189, CAST(2 AS Decimal(18, 0)), N'Breakdown of Basic Training', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 78)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (190, CAST(1 AS Decimal(18, 0)), N'Talk it Out', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 79)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (191, CAST(2 AS Decimal(18, 0)), N'Research! Research! Research!', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 79)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (192, CAST(3 AS Decimal(18, 0)), N'Don''t rush into it!', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 79)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (193, CAST(1 AS Decimal(18, 0)), N'Are you Qualified?', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 80)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (194, CAST(2 AS Decimal(18, 0)), N'Checkout Each Branch', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 80)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (195, CAST(3 AS Decimal(18, 0)), N'???', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 80)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (196, CAST(1 AS Decimal(18, 0)), N'Enlisted', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 81)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (197, CAST(2 AS Decimal(18, 0)), N'Commissioned Officer', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 81)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (198, CAST(3 AS Decimal(18, 0)), N'Warrant Officer', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 81)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (199, CAST(1 AS Decimal(18, 0)), N'Choose Your Army Career Path', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 82)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (200, CAST(2 AS Decimal(18, 0)), N'Meet with a Recruiter', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 82)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (201, CAST(1 AS Decimal(18, 0)), N'Prepare for the ASVAB Test', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 83)
GO
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (202, CAST(2 AS Decimal(18, 0)), N'Take the ASVAB Test', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 83)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (203, CAST(1 AS Decimal(18, 0)), N'Military Entrance Processing Station (MEPS)', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 84)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (204, CAST(2 AS Decimal(18, 0)), N'???', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 84)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (205, CAST(1 AS Decimal(18, 0)), N'Prepare for Basic Training', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 85)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (206, CAST(2 AS Decimal(18, 0)), N'Breakdown of Basic Training', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 85)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (207, CAST(1 AS Decimal(18, 0)), N'Talk it Out', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 86)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (208, CAST(2 AS Decimal(18, 0)), N'Research! Research! Research!', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 86)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (209, CAST(3 AS Decimal(18, 0)), N'Don''t rush into it!', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 86)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (210, CAST(1 AS Decimal(18, 0)), N'Are you Qualified?', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 87)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (211, CAST(2 AS Decimal(18, 0)), N'Checkout Each Branch', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 87)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (212, CAST(3 AS Decimal(18, 0)), N'???', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 87)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (213, CAST(1 AS Decimal(18, 0)), N'Enlisted', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 88)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (214, CAST(2 AS Decimal(18, 0)), N'Commissioned Officer', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 88)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (215, CAST(3 AS Decimal(18, 0)), N'Warrant Officer', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 88)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (216, CAST(1 AS Decimal(18, 0)), N'Choose Your Army Career Path', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 89)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (217, CAST(2 AS Decimal(18, 0)), N'Meet with a Recruiter', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 89)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (218, CAST(1 AS Decimal(18, 0)), N'Prepare for the ASVAB Test', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 90)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (219, CAST(2 AS Decimal(18, 0)), N'Take the ASVAB Test', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 90)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (220, CAST(1 AS Decimal(18, 0)), N'Military Entrance Processing Station (MEPS)', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 91)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (221, CAST(2 AS Decimal(18, 0)), N'???', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 91)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (222, CAST(1 AS Decimal(18, 0)), N'Prepare for Basic Training', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 92)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (223, CAST(2 AS Decimal(18, 0)), N'Breakdown of Basic Training', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 92)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (224, CAST(1 AS Decimal(18, 0)), N'Talk it Out', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 93)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (225, CAST(2 AS Decimal(18, 0)), N'Research! Research! Research!', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 93)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (226, CAST(3 AS Decimal(18, 0)), N'Don''t rush into it!', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 93)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (227, CAST(1 AS Decimal(18, 0)), N'Are you Qualified?', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 94)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (228, CAST(2 AS Decimal(18, 0)), N'Checkout Each Branch', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 94)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (229, CAST(3 AS Decimal(18, 0)), N'???', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 94)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (230, CAST(1 AS Decimal(18, 0)), N'Enlisted', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 95)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (231, CAST(2 AS Decimal(18, 0)), N'Commissioned Officer', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 95)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (232, CAST(3 AS Decimal(18, 0)), N'Warrant Officer', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 95)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (233, CAST(1 AS Decimal(18, 0)), N'Choose Your Army Career Path', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 96)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (234, CAST(2 AS Decimal(18, 0)), N'Meet with a Recruiter', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 96)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (235, CAST(1 AS Decimal(18, 0)), N'Prepare for the ASVAB Test', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 97)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (236, CAST(2 AS Decimal(18, 0)), N'Take the ASVAB Test', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 97)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (237, CAST(1 AS Decimal(18, 0)), N'Military Entrance Processing Station (MEPS)', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 98)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (238, CAST(2 AS Decimal(18, 0)), N'???', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 98)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (239, CAST(1 AS Decimal(18, 0)), N'Prepare for Basic Training', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 99)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (240, CAST(2 AS Decimal(18, 0)), N'Breakdown of Basic Training', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 99)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (241, CAST(1 AS Decimal(18, 0)), N'Talk it Out', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 100)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (242, CAST(2 AS Decimal(18, 0)), N'Research! Research! Research!', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 100)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (243, CAST(3 AS Decimal(18, 0)), N'Don''t rush into it!', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 100)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (244, CAST(1 AS Decimal(18, 0)), N'Are you Qualified?', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 101)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (245, CAST(2 AS Decimal(18, 0)), N'Checkout Each Branch', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 101)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (246, CAST(3 AS Decimal(18, 0)), N'???', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 101)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (247, CAST(1 AS Decimal(18, 0)), N'Enlisted', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 102)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (248, CAST(2 AS Decimal(18, 0)), N'Commissioned Officer', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 102)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (249, CAST(3 AS Decimal(18, 0)), N'Warrant Officer', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 102)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (250, CAST(1 AS Decimal(18, 0)), N'Choose Your Army Career Path', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 103)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (251, CAST(2 AS Decimal(18, 0)), N'Meet with a Recruiter', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 103)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (252, CAST(1 AS Decimal(18, 0)), N'Prepare for the ASVAB Test', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 104)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (253, CAST(2 AS Decimal(18, 0)), N'Take the ASVAB Test', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 104)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (254, CAST(1 AS Decimal(18, 0)), N'Military Entrance Processing Station (MEPS)', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 105)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (255, CAST(2 AS Decimal(18, 0)), N'???', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 105)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (256, CAST(1 AS Decimal(18, 0)), N'Prepare for Basic Training', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 106)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (257, CAST(2 AS Decimal(18, 0)), N'Breakdown of Basic Training', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 106)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (258, CAST(1 AS Decimal(18, 0)), N'Talk it Out', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 107)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (259, CAST(2 AS Decimal(18, 0)), N'Research! Research! Research!', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 107)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (260, CAST(3 AS Decimal(18, 0)), N'Don''t rush into it!', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 107)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (261, CAST(1 AS Decimal(18, 0)), N'Are you Qualified?', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 108)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (262, CAST(2 AS Decimal(18, 0)), N'Checkout Each Branch', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 108)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (263, CAST(3 AS Decimal(18, 0)), N'???', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 108)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (264, CAST(1 AS Decimal(18, 0)), N'Enlisted', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 109)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (265, CAST(2 AS Decimal(18, 0)), N'Commissioned Officer', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 109)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (266, CAST(3 AS Decimal(18, 0)), N'Warrant Officer', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 109)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (267, CAST(1 AS Decimal(18, 0)), N'Choose Your Army Career Path', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 110)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (268, CAST(2 AS Decimal(18, 0)), N'Meet with a Recruiter', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 110)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (269, CAST(1 AS Decimal(18, 0)), N'Prepare for the ASVAB Test', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 111)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (270, CAST(2 AS Decimal(18, 0)), N'Take the ASVAB Test', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 111)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (271, CAST(1 AS Decimal(18, 0)), N'Military Entrance Processing Station (MEPS)', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 112)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (272, CAST(2 AS Decimal(18, 0)), N'???', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 112)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (273, CAST(1 AS Decimal(18, 0)), N'Prepare for Basic Training', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 113)
INSERT [dbo].[Headstep] ([HeadstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [MainstepID]) VALUES (274, CAST(2 AS Decimal(18, 0)), N'Breakdown of Basic Training', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 113)
SET IDENTITY_INSERT [dbo].[Headstep] OFF
SET IDENTITY_INSERT [dbo].[Link] ON 

INSERT [dbo].[Link] ([LinkID], [ProfileID], [RoadmapID]) VALUES (1, 2, 1)
INSERT [dbo].[Link] ([LinkID], [ProfileID], [RoadmapID]) VALUES (2, 7, 6)
INSERT [dbo].[Link] ([LinkID], [ProfileID], [RoadmapID]) VALUES (12, 2, 6)
INSERT [dbo].[Link] ([LinkID], [ProfileID], [RoadmapID]) VALUES (14, 2, 2)
INSERT [dbo].[Link] ([LinkID], [ProfileID], [RoadmapID]) VALUES (17, 8, 1)
INSERT [dbo].[Link] ([LinkID], [ProfileID], [RoadmapID]) VALUES (18, 2, 4)
INSERT [dbo].[Link] ([LinkID], [ProfileID], [RoadmapID]) VALUES (19, 2, 15)
INSERT [dbo].[Link] ([LinkID], [ProfileID], [RoadmapID]) VALUES (20, 2, 14)
INSERT [dbo].[Link] ([LinkID], [ProfileID], [RoadmapID]) VALUES (21, 2, 9)
INSERT [dbo].[Link] ([LinkID], [ProfileID], [RoadmapID]) VALUES (22, 2, 11)
INSERT [dbo].[Link] ([LinkID], [ProfileID], [RoadmapID]) VALUES (23, 2, 16)
INSERT [dbo].[Link] ([LinkID], [ProfileID], [RoadmapID]) VALUES (24, 2, 5)
INSERT [dbo].[Link] ([LinkID], [ProfileID], [RoadmapID]) VALUES (25, 2, 7)
INSERT [dbo].[Link] ([LinkID], [ProfileID], [RoadmapID]) VALUES (26, 2, 12)
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
INSERT [dbo].[MainStat] ([MainStatID], [DueDate], [IsDone], [Notes], [MainstepID], [LinkID]) VALUES (18, NULL, 0, NULL, 1, 17)
INSERT [dbo].[MainStat] ([MainStatID], [DueDate], [IsDone], [Notes], [MainstepID], [LinkID]) VALUES (19, NULL, 0, NULL, 2, 17)
INSERT [dbo].[MainStat] ([MainStatID], [DueDate], [IsDone], [Notes], [MainstepID], [LinkID]) VALUES (20, NULL, 0, NULL, 3, 17)
INSERT [dbo].[MainStat] ([MainStatID], [DueDate], [IsDone], [Notes], [MainstepID], [LinkID]) VALUES (21, NULL, 0, NULL, 4, 17)
INSERT [dbo].[MainStat] ([MainStatID], [DueDate], [IsDone], [Notes], [MainstepID], [LinkID]) VALUES (22, NULL, 0, NULL, 5, 17)
INSERT [dbo].[MainStat] ([MainStatID], [DueDate], [IsDone], [Notes], [MainstepID], [LinkID]) VALUES (23, NULL, 0, NULL, 6, 17)
INSERT [dbo].[MainStat] ([MainStatID], [DueDate], [IsDone], [Notes], [MainstepID], [LinkID]) VALUES (24, NULL, 0, NULL, 7, 17)
INSERT [dbo].[MainStat] ([MainStatID], [DueDate], [IsDone], [Notes], [MainstepID], [LinkID]) VALUES (25, NULL, 0, NULL, 29, 18)
INSERT [dbo].[MainStat] ([MainStatID], [DueDate], [IsDone], [Notes], [MainstepID], [LinkID]) VALUES (26, NULL, 0, NULL, 30, 18)
INSERT [dbo].[MainStat] ([MainStatID], [DueDate], [IsDone], [Notes], [MainstepID], [LinkID]) VALUES (27, NULL, 0, NULL, 31, 18)
INSERT [dbo].[MainStat] ([MainStatID], [DueDate], [IsDone], [Notes], [MainstepID], [LinkID]) VALUES (28, NULL, 0, NULL, 32, 18)
INSERT [dbo].[MainStat] ([MainStatID], [DueDate], [IsDone], [Notes], [MainstepID], [LinkID]) VALUES (29, NULL, 0, NULL, 33, 18)
INSERT [dbo].[MainStat] ([MainStatID], [DueDate], [IsDone], [Notes], [MainstepID], [LinkID]) VALUES (30, NULL, 0, NULL, 34, 18)
INSERT [dbo].[MainStat] ([MainStatID], [DueDate], [IsDone], [Notes], [MainstepID], [LinkID]) VALUES (31, NULL, 0, NULL, 35, 18)
INSERT [dbo].[MainStat] ([MainStatID], [DueDate], [IsDone], [Notes], [MainstepID], [LinkID]) VALUES (32, NULL, 0, NULL, 100, 19)
INSERT [dbo].[MainStat] ([MainStatID], [DueDate], [IsDone], [Notes], [MainstepID], [LinkID]) VALUES (33, NULL, 0, NULL, 101, 19)
INSERT [dbo].[MainStat] ([MainStatID], [DueDate], [IsDone], [Notes], [MainstepID], [LinkID]) VALUES (34, NULL, 0, NULL, 102, 19)
INSERT [dbo].[MainStat] ([MainStatID], [DueDate], [IsDone], [Notes], [MainstepID], [LinkID]) VALUES (35, NULL, 0, NULL, 103, 19)
INSERT [dbo].[MainStat] ([MainStatID], [DueDate], [IsDone], [Notes], [MainstepID], [LinkID]) VALUES (36, NULL, 0, NULL, 104, 19)
INSERT [dbo].[MainStat] ([MainStatID], [DueDate], [IsDone], [Notes], [MainstepID], [LinkID]) VALUES (37, NULL, 0, NULL, 105, 19)
INSERT [dbo].[MainStat] ([MainStatID], [DueDate], [IsDone], [Notes], [MainstepID], [LinkID]) VALUES (38, NULL, 0, NULL, 106, 19)
INSERT [dbo].[MainStat] ([MainStatID], [DueDate], [IsDone], [Notes], [MainstepID], [LinkID]) VALUES (39, NULL, 0, NULL, 93, 20)
INSERT [dbo].[MainStat] ([MainStatID], [DueDate], [IsDone], [Notes], [MainstepID], [LinkID]) VALUES (40, NULL, 0, NULL, 94, 20)
INSERT [dbo].[MainStat] ([MainStatID], [DueDate], [IsDone], [Notes], [MainstepID], [LinkID]) VALUES (41, NULL, 0, NULL, 95, 20)
INSERT [dbo].[MainStat] ([MainStatID], [DueDate], [IsDone], [Notes], [MainstepID], [LinkID]) VALUES (42, NULL, 0, NULL, 96, 20)
INSERT [dbo].[MainStat] ([MainStatID], [DueDate], [IsDone], [Notes], [MainstepID], [LinkID]) VALUES (43, NULL, 0, NULL, 97, 20)
INSERT [dbo].[MainStat] ([MainStatID], [DueDate], [IsDone], [Notes], [MainstepID], [LinkID]) VALUES (44, NULL, 0, NULL, 98, 20)
INSERT [dbo].[MainStat] ([MainStatID], [DueDate], [IsDone], [Notes], [MainstepID], [LinkID]) VALUES (45, NULL, 0, NULL, 99, 20)
INSERT [dbo].[MainStat] ([MainStatID], [DueDate], [IsDone], [Notes], [MainstepID], [LinkID]) VALUES (46, NULL, 0, NULL, 58, 21)
INSERT [dbo].[MainStat] ([MainStatID], [DueDate], [IsDone], [Notes], [MainstepID], [LinkID]) VALUES (47, NULL, 0, NULL, 59, 21)
INSERT [dbo].[MainStat] ([MainStatID], [DueDate], [IsDone], [Notes], [MainstepID], [LinkID]) VALUES (48, NULL, 0, NULL, 60, 21)
INSERT [dbo].[MainStat] ([MainStatID], [DueDate], [IsDone], [Notes], [MainstepID], [LinkID]) VALUES (49, NULL, 0, NULL, 61, 21)
INSERT [dbo].[MainStat] ([MainStatID], [DueDate], [IsDone], [Notes], [MainstepID], [LinkID]) VALUES (50, NULL, 0, NULL, 62, 21)
INSERT [dbo].[MainStat] ([MainStatID], [DueDate], [IsDone], [Notes], [MainstepID], [LinkID]) VALUES (51, NULL, 0, NULL, 63, 21)
INSERT [dbo].[MainStat] ([MainStatID], [DueDate], [IsDone], [Notes], [MainstepID], [LinkID]) VALUES (52, NULL, 0, NULL, 64, 21)
INSERT [dbo].[MainStat] ([MainStatID], [DueDate], [IsDone], [Notes], [MainstepID], [LinkID]) VALUES (53, NULL, 0, NULL, 72, 22)
INSERT [dbo].[MainStat] ([MainStatID], [DueDate], [IsDone], [Notes], [MainstepID], [LinkID]) VALUES (54, NULL, 0, NULL, 73, 22)
INSERT [dbo].[MainStat] ([MainStatID], [DueDate], [IsDone], [Notes], [MainstepID], [LinkID]) VALUES (55, NULL, 0, NULL, 74, 22)
INSERT [dbo].[MainStat] ([MainStatID], [DueDate], [IsDone], [Notes], [MainstepID], [LinkID]) VALUES (56, NULL, 0, NULL, 75, 22)
INSERT [dbo].[MainStat] ([MainStatID], [DueDate], [IsDone], [Notes], [MainstepID], [LinkID]) VALUES (57, NULL, 0, NULL, 76, 22)
INSERT [dbo].[MainStat] ([MainStatID], [DueDate], [IsDone], [Notes], [MainstepID], [LinkID]) VALUES (58, NULL, 0, NULL, 77, 22)
INSERT [dbo].[MainStat] ([MainStatID], [DueDate], [IsDone], [Notes], [MainstepID], [LinkID]) VALUES (59, NULL, 0, NULL, 78, 22)
INSERT [dbo].[MainStat] ([MainStatID], [DueDate], [IsDone], [Notes], [MainstepID], [LinkID]) VALUES (60, NULL, 0, NULL, 107, 23)
INSERT [dbo].[MainStat] ([MainStatID], [DueDate], [IsDone], [Notes], [MainstepID], [LinkID]) VALUES (61, NULL, 0, NULL, 108, 23)
INSERT [dbo].[MainStat] ([MainStatID], [DueDate], [IsDone], [Notes], [MainstepID], [LinkID]) VALUES (62, NULL, 0, NULL, 109, 23)
INSERT [dbo].[MainStat] ([MainStatID], [DueDate], [IsDone], [Notes], [MainstepID], [LinkID]) VALUES (63, NULL, 0, NULL, 110, 23)
INSERT [dbo].[MainStat] ([MainStatID], [DueDate], [IsDone], [Notes], [MainstepID], [LinkID]) VALUES (64, NULL, 0, NULL, 111, 23)
INSERT [dbo].[MainStat] ([MainStatID], [DueDate], [IsDone], [Notes], [MainstepID], [LinkID]) VALUES (65, NULL, 0, NULL, 112, 23)
INSERT [dbo].[MainStat] ([MainStatID], [DueDate], [IsDone], [Notes], [MainstepID], [LinkID]) VALUES (66, NULL, 0, NULL, 113, 23)
INSERT [dbo].[MainStat] ([MainStatID], [DueDate], [IsDone], [Notes], [MainstepID], [LinkID]) VALUES (67, NULL, 0, NULL, 36, 24)
INSERT [dbo].[MainStat] ([MainStatID], [DueDate], [IsDone], [Notes], [MainstepID], [LinkID]) VALUES (68, NULL, 0, NULL, 37, 24)
INSERT [dbo].[MainStat] ([MainStatID], [DueDate], [IsDone], [Notes], [MainstepID], [LinkID]) VALUES (69, NULL, 0, NULL, 38, 24)
INSERT [dbo].[MainStat] ([MainStatID], [DueDate], [IsDone], [Notes], [MainstepID], [LinkID]) VALUES (70, NULL, 0, NULL, 39, 24)
INSERT [dbo].[MainStat] ([MainStatID], [DueDate], [IsDone], [Notes], [MainstepID], [LinkID]) VALUES (71, NULL, 0, NULL, 40, 24)
INSERT [dbo].[MainStat] ([MainStatID], [DueDate], [IsDone], [Notes], [MainstepID], [LinkID]) VALUES (72, NULL, 0, NULL, 41, 24)
INSERT [dbo].[MainStat] ([MainStatID], [DueDate], [IsDone], [Notes], [MainstepID], [LinkID]) VALUES (73, NULL, 0, NULL, 42, 24)
INSERT [dbo].[MainStat] ([MainStatID], [DueDate], [IsDone], [Notes], [MainstepID], [LinkID]) VALUES (74, NULL, 0, NULL, 44, 25)
INSERT [dbo].[MainStat] ([MainStatID], [DueDate], [IsDone], [Notes], [MainstepID], [LinkID]) VALUES (75, NULL, 0, NULL, 45, 25)
INSERT [dbo].[MainStat] ([MainStatID], [DueDate], [IsDone], [Notes], [MainstepID], [LinkID]) VALUES (76, NULL, 0, NULL, 46, 25)
INSERT [dbo].[MainStat] ([MainStatID], [DueDate], [IsDone], [Notes], [MainstepID], [LinkID]) VALUES (77, NULL, 0, NULL, 47, 25)
INSERT [dbo].[MainStat] ([MainStatID], [DueDate], [IsDone], [Notes], [MainstepID], [LinkID]) VALUES (78, NULL, 0, NULL, 48, 25)
INSERT [dbo].[MainStat] ([MainStatID], [DueDate], [IsDone], [Notes], [MainstepID], [LinkID]) VALUES (79, NULL, 0, NULL, 49, 25)
INSERT [dbo].[MainStat] ([MainStatID], [DueDate], [IsDone], [Notes], [MainstepID], [LinkID]) VALUES (80, NULL, 0, NULL, 50, 25)
INSERT [dbo].[MainStat] ([MainStatID], [DueDate], [IsDone], [Notes], [MainstepID], [LinkID]) VALUES (81, NULL, 0, NULL, 79, 26)
INSERT [dbo].[MainStat] ([MainStatID], [DueDate], [IsDone], [Notes], [MainstepID], [LinkID]) VALUES (82, NULL, 0, NULL, 80, 26)
INSERT [dbo].[MainStat] ([MainStatID], [DueDate], [IsDone], [Notes], [MainstepID], [LinkID]) VALUES (83, NULL, 0, NULL, 81, 26)
INSERT [dbo].[MainStat] ([MainStatID], [DueDate], [IsDone], [Notes], [MainstepID], [LinkID]) VALUES (84, NULL, 0, NULL, 82, 26)
INSERT [dbo].[MainStat] ([MainStatID], [DueDate], [IsDone], [Notes], [MainstepID], [LinkID]) VALUES (85, NULL, 0, NULL, 83, 26)
INSERT [dbo].[MainStat] ([MainStatID], [DueDate], [IsDone], [Notes], [MainstepID], [LinkID]) VALUES (86, NULL, 0, NULL, 84, 26)
INSERT [dbo].[MainStat] ([MainStatID], [DueDate], [IsDone], [Notes], [MainstepID], [LinkID]) VALUES (87, NULL, 0, NULL, 85, 26)
SET IDENTITY_INSERT [dbo].[MainStat] OFF
SET IDENTITY_INSERT [dbo].[Mainstep] ON 

INSERT [dbo].[Mainstep] ([MainstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [RoadmapID]) VALUES (1, CAST(1 AS Decimal(18, 0)), N'Is the Military Right for You?', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 1)
INSERT [dbo].[Mainstep] ([MainstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [RoadmapID]) VALUES (2, CAST(2 AS Decimal(18, 0)), N'Have you Decided on a Branch?', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 1)
INSERT [dbo].[Mainstep] ([MainstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [RoadmapID]) VALUES (3, CAST(3 AS Decimal(18, 0)), N'Which Entry Path is Right for You?', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 1)
INSERT [dbo].[Mainstep] ([MainstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [RoadmapID]) VALUES (4, CAST(4 AS Decimal(18, 0)), N'Recruiting Phase', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 1)
INSERT [dbo].[Mainstep] ([MainstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [RoadmapID]) VALUES (5, CAST(5 AS Decimal(18, 0)), N'Testing Phase', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 1)
INSERT [dbo].[Mainstep] ([MainstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [RoadmapID]) VALUES (6, CAST(6 AS Decimal(18, 0)), N'On-Boarding Phase', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 1)
INSERT [dbo].[Mainstep] ([MainstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [RoadmapID]) VALUES (7, CAST(7 AS Decimal(18, 0)), N'Ready-To-Ship Phase', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 1)
INSERT [dbo].[Mainstep] ([MainstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [RoadmapID]) VALUES (8, CAST(1 AS Decimal(18, 0)), N'Is the Military Right for You?', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 6)
INSERT [dbo].[Mainstep] ([MainstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [RoadmapID]) VALUES (9, CAST(2 AS Decimal(18, 0)), N'Have You Decided on a Branch?', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 6)
INSERT [dbo].[Mainstep] ([MainstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [RoadmapID]) VALUES (10, CAST(3 AS Decimal(18, 0)), N'Which Entry Path is Right for You?', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 6)
INSERT [dbo].[Mainstep] ([MainstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [RoadmapID]) VALUES (11, CAST(4 AS Decimal(18, 0)), N'Recruiting Phase', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 6)
INSERT [dbo].[Mainstep] ([MainstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [RoadmapID]) VALUES (12, CAST(5 AS Decimal(18, 0)), N'Testing Phase ', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 6)
INSERT [dbo].[Mainstep] ([MainstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [RoadmapID]) VALUES (13, CAST(6 AS Decimal(18, 0)), N'On-Boarding Phase ', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 6)
INSERT [dbo].[Mainstep] ([MainstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [RoadmapID]) VALUES (14, CAST(7 AS Decimal(18, 0)), N'Ready-To-Ship Phase', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 6)
INSERT [dbo].[Mainstep] ([MainstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [RoadmapID]) VALUES (15, CAST(1 AS Decimal(18, 0)), N'Is the Military Right for You?', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 2)
INSERT [dbo].[Mainstep] ([MainstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [RoadmapID]) VALUES (16, CAST(2 AS Decimal(18, 0)), N'Have you Decided on a Branch?', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 2)
INSERT [dbo].[Mainstep] ([MainstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [RoadmapID]) VALUES (17, CAST(3 AS Decimal(18, 0)), N'Which Entry Path is Right for You?', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 2)
INSERT [dbo].[Mainstep] ([MainstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [RoadmapID]) VALUES (18, CAST(4 AS Decimal(18, 0)), N'Recruiting Phase', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 2)
INSERT [dbo].[Mainstep] ([MainstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [RoadmapID]) VALUES (19, CAST(5 AS Decimal(18, 0)), N'Testing Phase', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 2)
INSERT [dbo].[Mainstep] ([MainstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [RoadmapID]) VALUES (20, CAST(6 AS Decimal(18, 0)), N'On-Boarding Phase', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 2)
INSERT [dbo].[Mainstep] ([MainstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [RoadmapID]) VALUES (21, CAST(7 AS Decimal(18, 0)), N'Ready-To-Ship Phase', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 2)
INSERT [dbo].[Mainstep] ([MainstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [RoadmapID]) VALUES (22, CAST(1 AS Decimal(18, 0)), N'Is the Military Right for You?', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 3)
INSERT [dbo].[Mainstep] ([MainstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [RoadmapID]) VALUES (23, CAST(2 AS Decimal(18, 0)), N'Have you Decided on a Branch?', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 3)
INSERT [dbo].[Mainstep] ([MainstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [RoadmapID]) VALUES (24, CAST(3 AS Decimal(18, 0)), N'Which Entry Path is Right for You?', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 3)
INSERT [dbo].[Mainstep] ([MainstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [RoadmapID]) VALUES (25, CAST(4 AS Decimal(18, 0)), N'Recruiting Phase', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 3)
INSERT [dbo].[Mainstep] ([MainstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [RoadmapID]) VALUES (26, CAST(5 AS Decimal(18, 0)), N'Testing Phase', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 3)
INSERT [dbo].[Mainstep] ([MainstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [RoadmapID]) VALUES (27, CAST(6 AS Decimal(18, 0)), N'On-Boarding Phase', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 3)
INSERT [dbo].[Mainstep] ([MainstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [RoadmapID]) VALUES (28, CAST(7 AS Decimal(18, 0)), N'Ready-To-Ship Phase', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 3)
INSERT [dbo].[Mainstep] ([MainstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [RoadmapID]) VALUES (29, CAST(1 AS Decimal(18, 0)), N'Is the Military Right for You?', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 4)
INSERT [dbo].[Mainstep] ([MainstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [RoadmapID]) VALUES (30, CAST(2 AS Decimal(18, 0)), N'Have you Decided on a Branch?', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 4)
INSERT [dbo].[Mainstep] ([MainstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [RoadmapID]) VALUES (31, CAST(3 AS Decimal(18, 0)), N'Which Entry Path is Right for You?', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 4)
INSERT [dbo].[Mainstep] ([MainstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [RoadmapID]) VALUES (32, CAST(4 AS Decimal(18, 0)), N'Recruiting Phase', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 4)
INSERT [dbo].[Mainstep] ([MainstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [RoadmapID]) VALUES (33, CAST(5 AS Decimal(18, 0)), N'Testing Phase', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 4)
INSERT [dbo].[Mainstep] ([MainstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [RoadmapID]) VALUES (34, CAST(6 AS Decimal(18, 0)), N'On-Boarding Phase', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 4)
INSERT [dbo].[Mainstep] ([MainstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [RoadmapID]) VALUES (35, CAST(7 AS Decimal(18, 0)), N'Ready-To-Ship Phase', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 4)
INSERT [dbo].[Mainstep] ([MainstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [RoadmapID]) VALUES (36, CAST(1 AS Decimal(18, 0)), N'Is the Military Right for You?', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 5)
INSERT [dbo].[Mainstep] ([MainstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [RoadmapID]) VALUES (37, CAST(2 AS Decimal(18, 0)), N'Have you Decided on a Branch?', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 5)
INSERT [dbo].[Mainstep] ([MainstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [RoadmapID]) VALUES (38, CAST(3 AS Decimal(18, 0)), N'Which Entry Path is Right for You?', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 5)
INSERT [dbo].[Mainstep] ([MainstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [RoadmapID]) VALUES (39, CAST(4 AS Decimal(18, 0)), N'Recruiting Phase', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 5)
INSERT [dbo].[Mainstep] ([MainstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [RoadmapID]) VALUES (40, CAST(5 AS Decimal(18, 0)), N'Testing Phase', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 5)
INSERT [dbo].[Mainstep] ([MainstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [RoadmapID]) VALUES (41, CAST(6 AS Decimal(18, 0)), N'On-Boarding Phase', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 5)
INSERT [dbo].[Mainstep] ([MainstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [RoadmapID]) VALUES (42, CAST(7 AS Decimal(18, 0)), N'Ready-To-Ship Phase', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 5)
INSERT [dbo].[Mainstep] ([MainstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [RoadmapID]) VALUES (44, CAST(1 AS Decimal(18, 0)), N'Is the Military Right for You?', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 7)
INSERT [dbo].[Mainstep] ([MainstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [RoadmapID]) VALUES (45, CAST(2 AS Decimal(18, 0)), N'Have you Decided on a Branch?', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 7)
INSERT [dbo].[Mainstep] ([MainstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [RoadmapID]) VALUES (46, CAST(3 AS Decimal(18, 0)), N'Which Entry Path is Right for You?', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 7)
INSERT [dbo].[Mainstep] ([MainstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [RoadmapID]) VALUES (47, CAST(4 AS Decimal(18, 0)), N'Recruiting Phase', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 7)
INSERT [dbo].[Mainstep] ([MainstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [RoadmapID]) VALUES (48, CAST(5 AS Decimal(18, 0)), N'Testing Phase', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 7)
INSERT [dbo].[Mainstep] ([MainstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [RoadmapID]) VALUES (49, CAST(6 AS Decimal(18, 0)), N'On-Boarding Phase', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 7)
INSERT [dbo].[Mainstep] ([MainstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [RoadmapID]) VALUES (50, CAST(7 AS Decimal(18, 0)), N'Ready-To-Ship Phase', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 7)
INSERT [dbo].[Mainstep] ([MainstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [RoadmapID]) VALUES (51, CAST(1 AS Decimal(18, 0)), N'Is the Military Right for You?', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 8)
INSERT [dbo].[Mainstep] ([MainstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [RoadmapID]) VALUES (52, CAST(2 AS Decimal(18, 0)), N'Have you Decided on a Branch?', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 8)
INSERT [dbo].[Mainstep] ([MainstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [RoadmapID]) VALUES (53, CAST(3 AS Decimal(18, 0)), N'Which Entry Path is Right for You?', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 8)
INSERT [dbo].[Mainstep] ([MainstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [RoadmapID]) VALUES (54, CAST(4 AS Decimal(18, 0)), N'Recruiting Phase', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 8)
INSERT [dbo].[Mainstep] ([MainstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [RoadmapID]) VALUES (55, CAST(5 AS Decimal(18, 0)), N'Testing Phase', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 8)
INSERT [dbo].[Mainstep] ([MainstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [RoadmapID]) VALUES (56, CAST(6 AS Decimal(18, 0)), N'On-Boarding Phase', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 8)
INSERT [dbo].[Mainstep] ([MainstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [RoadmapID]) VALUES (57, CAST(7 AS Decimal(18, 0)), N'Ready-To-Ship Phase', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 8)
INSERT [dbo].[Mainstep] ([MainstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [RoadmapID]) VALUES (58, CAST(1 AS Decimal(18, 0)), N'Is the Military Right for You?', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 9)
INSERT [dbo].[Mainstep] ([MainstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [RoadmapID]) VALUES (59, CAST(2 AS Decimal(18, 0)), N'Have you Decided on a Branch?', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 9)
INSERT [dbo].[Mainstep] ([MainstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [RoadmapID]) VALUES (60, CAST(3 AS Decimal(18, 0)), N'Which Entry Path is Right for You?', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 9)
INSERT [dbo].[Mainstep] ([MainstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [RoadmapID]) VALUES (61, CAST(4 AS Decimal(18, 0)), N'Recruiting Phase', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 9)
INSERT [dbo].[Mainstep] ([MainstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [RoadmapID]) VALUES (62, CAST(5 AS Decimal(18, 0)), N'Testing Phase', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 9)
INSERT [dbo].[Mainstep] ([MainstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [RoadmapID]) VALUES (63, CAST(6 AS Decimal(18, 0)), N'On-Boarding Phase', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 9)
INSERT [dbo].[Mainstep] ([MainstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [RoadmapID]) VALUES (64, CAST(7 AS Decimal(18, 0)), N'Ready-To-Ship Phase', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 9)
INSERT [dbo].[Mainstep] ([MainstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [RoadmapID]) VALUES (65, CAST(1 AS Decimal(18, 0)), N'Is the Military Right for You?', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 10)
INSERT [dbo].[Mainstep] ([MainstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [RoadmapID]) VALUES (66, CAST(2 AS Decimal(18, 0)), N'Have you Decided on a Branch?', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 10)
INSERT [dbo].[Mainstep] ([MainstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [RoadmapID]) VALUES (67, CAST(3 AS Decimal(18, 0)), N'Which Entry Path is Right for You?', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 10)
INSERT [dbo].[Mainstep] ([MainstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [RoadmapID]) VALUES (68, CAST(4 AS Decimal(18, 0)), N'Recruiting Phase', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 10)
INSERT [dbo].[Mainstep] ([MainstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [RoadmapID]) VALUES (69, CAST(5 AS Decimal(18, 0)), N'Testing Phase', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 10)
INSERT [dbo].[Mainstep] ([MainstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [RoadmapID]) VALUES (70, CAST(6 AS Decimal(18, 0)), N'On-Boarding Phase', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 10)
INSERT [dbo].[Mainstep] ([MainstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [RoadmapID]) VALUES (71, CAST(7 AS Decimal(18, 0)), N'Ready-To-Ship Phase', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 10)
INSERT [dbo].[Mainstep] ([MainstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [RoadmapID]) VALUES (72, CAST(1 AS Decimal(18, 0)), N'Is the Military Right for You?', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 11)
INSERT [dbo].[Mainstep] ([MainstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [RoadmapID]) VALUES (73, CAST(2 AS Decimal(18, 0)), N'Have you Decided on a Branch?', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 11)
INSERT [dbo].[Mainstep] ([MainstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [RoadmapID]) VALUES (74, CAST(3 AS Decimal(18, 0)), N'Which Entry Path is Right for You?', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 11)
INSERT [dbo].[Mainstep] ([MainstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [RoadmapID]) VALUES (75, CAST(4 AS Decimal(18, 0)), N'Recruiting Phase', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 11)
INSERT [dbo].[Mainstep] ([MainstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [RoadmapID]) VALUES (76, CAST(5 AS Decimal(18, 0)), N'Testing Phase', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 11)
INSERT [dbo].[Mainstep] ([MainstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [RoadmapID]) VALUES (77, CAST(6 AS Decimal(18, 0)), N'On-Boarding Phase', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 11)
INSERT [dbo].[Mainstep] ([MainstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [RoadmapID]) VALUES (78, CAST(7 AS Decimal(18, 0)), N'Ready-To-Ship Phase', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 11)
INSERT [dbo].[Mainstep] ([MainstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [RoadmapID]) VALUES (79, CAST(1 AS Decimal(18, 0)), N'Is the Military Right for You?', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 12)
INSERT [dbo].[Mainstep] ([MainstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [RoadmapID]) VALUES (80, CAST(2 AS Decimal(18, 0)), N'Have you Decided on a Branch?', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 12)
INSERT [dbo].[Mainstep] ([MainstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [RoadmapID]) VALUES (81, CAST(3 AS Decimal(18, 0)), N'Which Entry Path is Right for You?', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 12)
INSERT [dbo].[Mainstep] ([MainstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [RoadmapID]) VALUES (82, CAST(4 AS Decimal(18, 0)), N'Recruiting Phase', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 12)
INSERT [dbo].[Mainstep] ([MainstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [RoadmapID]) VALUES (83, CAST(5 AS Decimal(18, 0)), N'Testing Phase', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 12)
INSERT [dbo].[Mainstep] ([MainstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [RoadmapID]) VALUES (84, CAST(6 AS Decimal(18, 0)), N'On-Boarding Phase', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 12)
INSERT [dbo].[Mainstep] ([MainstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [RoadmapID]) VALUES (85, CAST(7 AS Decimal(18, 0)), N'Ready-To-Ship Phase', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 12)
INSERT [dbo].[Mainstep] ([MainstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [RoadmapID]) VALUES (86, CAST(1 AS Decimal(18, 0)), N'Is the Military Right for You?', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 13)
INSERT [dbo].[Mainstep] ([MainstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [RoadmapID]) VALUES (87, CAST(2 AS Decimal(18, 0)), N'Have you Decided on a Branch?', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 13)
INSERT [dbo].[Mainstep] ([MainstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [RoadmapID]) VALUES (88, CAST(3 AS Decimal(18, 0)), N'Which Entry Path is Right for You?', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 13)
INSERT [dbo].[Mainstep] ([MainstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [RoadmapID]) VALUES (89, CAST(4 AS Decimal(18, 0)), N'Recruiting Phase', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 13)
INSERT [dbo].[Mainstep] ([MainstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [RoadmapID]) VALUES (90, CAST(5 AS Decimal(18, 0)), N'Testing Phase', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 13)
INSERT [dbo].[Mainstep] ([MainstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [RoadmapID]) VALUES (91, CAST(6 AS Decimal(18, 0)), N'On-Boarding Phase', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 13)
INSERT [dbo].[Mainstep] ([MainstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [RoadmapID]) VALUES (92, CAST(7 AS Decimal(18, 0)), N'Ready-To-Ship Phase', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 13)
INSERT [dbo].[Mainstep] ([MainstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [RoadmapID]) VALUES (93, CAST(1 AS Decimal(18, 0)), N'Is the Military Right for You?', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 14)
INSERT [dbo].[Mainstep] ([MainstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [RoadmapID]) VALUES (94, CAST(2 AS Decimal(18, 0)), N'Have you Decided on a Branch?', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 14)
INSERT [dbo].[Mainstep] ([MainstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [RoadmapID]) VALUES (95, CAST(3 AS Decimal(18, 0)), N'Which Entry Path is Right for You?', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 14)
INSERT [dbo].[Mainstep] ([MainstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [RoadmapID]) VALUES (96, CAST(4 AS Decimal(18, 0)), N'Recruiting Phase', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 14)
INSERT [dbo].[Mainstep] ([MainstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [RoadmapID]) VALUES (97, CAST(5 AS Decimal(18, 0)), N'Testing Phase', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 14)
INSERT [dbo].[Mainstep] ([MainstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [RoadmapID]) VALUES (98, CAST(6 AS Decimal(18, 0)), N'On-Boarding Phase', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 14)
INSERT [dbo].[Mainstep] ([MainstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [RoadmapID]) VALUES (99, CAST(7 AS Decimal(18, 0)), N'Ready-To-Ship Phase', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 14)
INSERT [dbo].[Mainstep] ([MainstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [RoadmapID]) VALUES (100, CAST(1 AS Decimal(18, 0)), N'Is the Military Right for You?', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 15)
GO
INSERT [dbo].[Mainstep] ([MainstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [RoadmapID]) VALUES (101, CAST(2 AS Decimal(18, 0)), N'Have you Decided on a Branch?', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 15)
INSERT [dbo].[Mainstep] ([MainstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [RoadmapID]) VALUES (102, CAST(3 AS Decimal(18, 0)), N'Which Entry Path is Right for You?', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 15)
INSERT [dbo].[Mainstep] ([MainstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [RoadmapID]) VALUES (103, CAST(4 AS Decimal(18, 0)), N'Recruiting Phase', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 15)
INSERT [dbo].[Mainstep] ([MainstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [RoadmapID]) VALUES (104, CAST(5 AS Decimal(18, 0)), N'Testing Phase', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 15)
INSERT [dbo].[Mainstep] ([MainstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [RoadmapID]) VALUES (105, CAST(6 AS Decimal(18, 0)), N'On-Boarding Phase', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 15)
INSERT [dbo].[Mainstep] ([MainstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [RoadmapID]) VALUES (106, CAST(7 AS Decimal(18, 0)), N'Ready-To-Ship Phase', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 15)
INSERT [dbo].[Mainstep] ([MainstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [RoadmapID]) VALUES (107, CAST(1 AS Decimal(18, 0)), N'Is the Military Right for You?', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 16)
INSERT [dbo].[Mainstep] ([MainstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [RoadmapID]) VALUES (108, CAST(2 AS Decimal(18, 0)), N'Have you Decided on a Branch?', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 16)
INSERT [dbo].[Mainstep] ([MainstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [RoadmapID]) VALUES (109, CAST(3 AS Decimal(18, 0)), N'Which Entry Path is Right for You?', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 16)
INSERT [dbo].[Mainstep] ([MainstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [RoadmapID]) VALUES (110, CAST(4 AS Decimal(18, 0)), N'Recruiting Phase', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 16)
INSERT [dbo].[Mainstep] ([MainstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [RoadmapID]) VALUES (111, CAST(5 AS Decimal(18, 0)), N'Testing Phase', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 16)
INSERT [dbo].[Mainstep] ([MainstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [RoadmapID]) VALUES (112, CAST(6 AS Decimal(18, 0)), N'On-Boarding Phase', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 16)
INSERT [dbo].[Mainstep] ([MainstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [RoadmapID]) VALUES (113, CAST(7 AS Decimal(18, 0)), N'Ready-To-Ship Phase', NULL, 0, NULL, CAST(0 AS Decimal(18, 0)), 16)
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

INSERT [dbo].[Profile] ([ProfileID], [FName], [LName], [BirthDate], [Height], [Weight], [Dependents], [Title], [Branch], [AsvabScore], [PracticeScore], [PointsTotal], [PointsEarned], [IsDone], [GenderID], [EducationID], [MaritalStatID], [PriorServiceID], [Id]) VALUES (2, N'Diane', N'Korpics', CAST(N'1962-07-10' AS Date), CAST(65 AS Decimal(18, 0)), CAST(125 AS Decimal(18, 0)), 3, N'a warrant officer', N'Army', NULL, NULL, NULL, NULL, 0, 2, 3, 1, 1, N'26bba179-a37f-409f-9b74-567bac6f3231')
INSERT [dbo].[Profile] ([ProfileID], [FName], [LName], [BirthDate], [Height], [Weight], [Dependents], [Title], [Branch], [AsvabScore], [PracticeScore], [PointsTotal], [PointsEarned], [IsDone], [GenderID], [EducationID], [MaritalStatID], [PriorServiceID], [Id]) VALUES (7, N'Test', N'Person', CAST(N'2001-01-01' AS Date), CAST(70 AS Decimal(18, 0)), CAST(170 AS Decimal(18, 0)), 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 2, 1, 1, N'3938e49a-46d6-44e7-b1af-4aa8e00825bb')
INSERT [dbo].[Profile] ([ProfileID], [FName], [LName], [BirthDate], [Height], [Weight], [Dependents], [Title], [Branch], [AsvabScore], [PracticeScore], [PointsTotal], [PointsEarned], [IsDone], [GenderID], [EducationID], [MaritalStatID], [PriorServiceID], [Id]) VALUES (8, N'Ry', N'Lee', CAST(N'1992-01-01' AS Date), CAST(74 AS Decimal(18, 0)), CAST(215 AS Decimal(18, 0)), 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 4, 1, 1, N'8f7a6a41-1d40-4b42-9467-4883d22b3d91')
INSERT [dbo].[Profile] ([ProfileID], [FName], [LName], [BirthDate], [Height], [Weight], [Dependents], [Title], [Branch], [AsvabScore], [PracticeScore], [PointsTotal], [PointsEarned], [IsDone], [GenderID], [EducationID], [MaritalStatID], [PriorServiceID], [Id]) VALUES (9, N'Diane', N'Korpics', CAST(N'1987-01-20' AS Date), CAST(60 AS Decimal(18, 0)), CAST(112 AS Decimal(18, 0)), 3, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2, 1, 2, 2, N'330efd82-d6fd-4a0a-b030-83fa9cb7ab87')
INSERT [dbo].[Profile] ([ProfileID], [FName], [LName], [BirthDate], [Height], [Weight], [Dependents], [Title], [Branch], [AsvabScore], [PracticeScore], [PointsTotal], [PointsEarned], [IsDone], [GenderID], [EducationID], [MaritalStatID], [PriorServiceID], [Id]) VALUES (10, N'Diane', N'Last', CAST(N'1962-07-10' AS Date), CAST(50 AS Decimal(18, 0)), CAST(124 AS Decimal(18, 0)), 3, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 1, 2, N'bf48aa72-c70a-4d13-901b-07a84d4421d6')
SET IDENTITY_INSERT [dbo].[Profile] OFF
SET IDENTITY_INSERT [dbo].[Roadmap] ON 

INSERT [dbo].[Roadmap] ([RoadmapID], [RoadmapName]) VALUES (1, N'enlisted in the Army')
INSERT [dbo].[Roadmap] ([RoadmapID], [RoadmapName]) VALUES (2, N'enlisted in the Air Force')
INSERT [dbo].[Roadmap] ([RoadmapID], [RoadmapName]) VALUES (3, N'enlisted in the Navy')
INSERT [dbo].[Roadmap] ([RoadmapID], [RoadmapName]) VALUES (4, N'enlisted in the Marines')
INSERT [dbo].[Roadmap] ([RoadmapID], [RoadmapName]) VALUES (5, N'enlisted in the Coast Guard')
INSERT [dbo].[Roadmap] ([RoadmapID], [RoadmapName]) VALUES (6, N'undecided')
INSERT [dbo].[Roadmap] ([RoadmapID], [RoadmapName]) VALUES (7, N'a commissioned officer in the Army')
INSERT [dbo].[Roadmap] ([RoadmapID], [RoadmapName]) VALUES (8, N'a commissioned officer in the Air Force')
INSERT [dbo].[Roadmap] ([RoadmapID], [RoadmapName]) VALUES (9, N'a commissioned officer in the Navy')
INSERT [dbo].[Roadmap] ([RoadmapID], [RoadmapName]) VALUES (10, N'a commissioned officer in the Marines')
INSERT [dbo].[Roadmap] ([RoadmapID], [RoadmapName]) VALUES (11, N'a commissioned officer in the Coast Guard')
INSERT [dbo].[Roadmap] ([RoadmapID], [RoadmapName]) VALUES (12, N'a warrant officer in the Army')
INSERT [dbo].[Roadmap] ([RoadmapID], [RoadmapName]) VALUES (13, N'a warrant officer in the Air Force')
INSERT [dbo].[Roadmap] ([RoadmapID], [RoadmapName]) VALUES (14, N'a warrant officer in the Navy')
INSERT [dbo].[Roadmap] ([RoadmapID], [RoadmapName]) VALUES (15, N'a warrant officer in the Marines')
INSERT [dbo].[Roadmap] ([RoadmapID], [RoadmapName]) VALUES (16, N'a warrant officer in the Coast Guard')
SET IDENTITY_INSERT [dbo].[Roadmap] OFF
SET IDENTITY_INSERT [dbo].[SubStat] ON 

INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (5, NULL, 0, NULL, 1, 12)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (6, NULL, 0, NULL, 2, 12)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (7, NULL, 0, NULL, 3, 12)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (8, NULL, 0, NULL, 4, 12)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (9, NULL, 0, NULL, 5, 12)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (10, NULL, 1, NULL, 1, 1)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (11, NULL, 1, NULL, 2, 1)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (12, NULL, 1, NULL, 3, 1)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (13, NULL, 1, NULL, 4, 1)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (14, NULL, 1, NULL, 5, 1)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (15, NULL, 1, NULL, 6, 1)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (16, NULL, 1, NULL, 7, 1)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (17, NULL, 0, NULL, 8, 1)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (18, NULL, 1, NULL, 9, 1)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (19, NULL, 0, NULL, 10, 1)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (20, NULL, 0, NULL, 11, 1)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (21, NULL, 0, NULL, 12, 1)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (22, NULL, 0, NULL, 13, 1)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (23, NULL, 1, NULL, 14, 1)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (24, NULL, 0, NULL, 15, 1)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (25, NULL, 0, NULL, 16, 1)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (26, NULL, 0, NULL, 17, 1)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (27, NULL, 0, NULL, 18, 1)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (28, NULL, 0, NULL, 19, 1)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (29, NULL, 0, NULL, 20, 1)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (30, NULL, 1, NULL, 21, 1)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (31, NULL, 1, NULL, 24, 1)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (32, NULL, 0, NULL, 25, 1)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (33, NULL, 1, NULL, 26, 1)
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
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (52, NULL, 0, NULL, 1, 17)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (53, NULL, 0, NULL, 2, 17)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (54, NULL, 0, NULL, 3, 17)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (55, NULL, 0, NULL, 4, 17)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (56, NULL, 0, NULL, 5, 17)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (57, NULL, 0, NULL, 6, 17)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (58, NULL, 0, NULL, 7, 17)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (59, NULL, 0, NULL, 8, 17)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (60, NULL, 0, NULL, 9, 17)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (61, NULL, 0, NULL, 10, 17)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (62, NULL, 0, NULL, 11, 17)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (63, NULL, 0, NULL, 12, 17)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (64, NULL, 0, NULL, 13, 17)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (65, NULL, 0, NULL, 14, 17)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (66, NULL, 0, NULL, 18, 17)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (67, NULL, 0, NULL, 15, 17)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (68, NULL, 0, NULL, 19, 17)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (69, NULL, 0, NULL, 16, 17)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (70, NULL, 0, NULL, 20, 17)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (71, NULL, 0, NULL, 17, 17)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (72, NULL, 0, NULL, 21, 17)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (73, NULL, 0, NULL, 24, 17)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (74, NULL, 0, NULL, 25, 17)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (75, NULL, 0, NULL, 26, 17)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (76, NULL, 0, NULL, 27, 17)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (77, NULL, 0, NULL, 28, 17)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (78, NULL, 0, NULL, 29, 17)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (79, NULL, 0, NULL, 30, 17)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (80, NULL, 0, NULL, 31, 17)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (81, NULL, 0, NULL, 32, 17)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (82, NULL, 0, NULL, 33, 17)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (83, NULL, 0, NULL, 34, 17)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (84, NULL, 0, NULL, 35, 17)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (85, NULL, 0, NULL, 36, 17)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (86, NULL, 0, NULL, 37, 17)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (87, NULL, 0, NULL, 38, 17)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (88, NULL, 0, NULL, 39, 17)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (89, NULL, 0, NULL, 40, 17)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (90, NULL, 0, NULL, 41, 17)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (91, NULL, 0, NULL, 42, 17)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (92, NULL, 0, NULL, 43, 17)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (93, NULL, 0, NULL, 44, 17)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (94, NULL, 0, NULL, 45, 17)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (95, NULL, 0, NULL, 45, 1)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (96, NULL, 0, NULL, 46, 12)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (97, NULL, 0, NULL, 47, 12)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (98, NULL, 0, NULL, 48, 12)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (99, NULL, 0, NULL, 49, 12)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (100, NULL, 0, NULL, 50, 12)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (101, NULL, 0, NULL, 51, 12)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (102, NULL, 0, NULL, 52, 12)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (103, NULL, 0, NULL, 53, 12)
GO
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (104, NULL, 0, NULL, 54, 12)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (105, NULL, 0, NULL, 55, 12)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (106, NULL, 0, NULL, 56, 12)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (107, NULL, 0, NULL, 57, 12)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (108, NULL, 0, NULL, 58, 12)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (109, NULL, 0, NULL, 59, 12)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (110, NULL, 0, NULL, 60, 12)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (111, NULL, 0, NULL, 61, 12)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (112, NULL, 0, NULL, 62, 12)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (113, NULL, 0, NULL, 63, 12)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (114, NULL, 0, NULL, 64, 12)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (115, NULL, 0, NULL, 65, 12)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (116, NULL, 0, NULL, 66, 12)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (117, NULL, 0, NULL, 67, 12)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (118, NULL, 0, NULL, 68, 12)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (119, NULL, 0, NULL, 69, 12)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (120, NULL, 0, NULL, 70, 12)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (121, NULL, 0, NULL, 71, 12)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (122, NULL, 0, NULL, 72, 12)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (123, NULL, 0, NULL, 73, 12)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (124, NULL, 0, NULL, 74, 12)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (125, NULL, 0, NULL, 75, 12)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (126, NULL, 0, NULL, 76, 12)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (127, NULL, 0, NULL, 77, 12)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (128, NULL, 0, NULL, 78, 12)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (129, NULL, 0, NULL, 79, 12)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (130, NULL, 0, NULL, 80, 12)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (131, NULL, 0, NULL, 81, 12)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (132, NULL, 0, NULL, 82, 12)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (133, NULL, 0, NULL, 83, 12)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (134, NULL, 0, NULL, 84, 12)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (135, NULL, 0, NULL, 85, 12)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (136, NULL, 0, NULL, 86, 12)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (137, NULL, 0, NULL, 87, 12)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (138, NULL, 0, NULL, 88, 12)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (139, NULL, 0, NULL, 649, 23)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (140, NULL, 0, NULL, 650, 23)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (141, NULL, 0, NULL, 651, 23)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (142, NULL, 0, NULL, 652, 23)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (143, NULL, 0, NULL, 653, 23)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (144, NULL, 0, NULL, 654, 23)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (145, NULL, 0, NULL, 655, 23)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (146, NULL, 0, NULL, 656, 23)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (147, NULL, 0, NULL, 657, 23)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (148, NULL, 0, NULL, 658, 23)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (149, NULL, 0, NULL, 659, 23)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (150, NULL, 0, NULL, 660, 23)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (151, NULL, 0, NULL, 661, 23)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (152, NULL, 0, NULL, 662, 23)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (153, NULL, 0, NULL, 663, 23)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (154, NULL, 0, NULL, 664, 23)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (155, NULL, 0, NULL, 665, 23)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (156, NULL, 0, NULL, 666, 23)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (157, NULL, 0, NULL, 667, 23)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (158, NULL, 0, NULL, 668, 23)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (159, NULL, 0, NULL, 669, 23)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (160, NULL, 0, NULL, 670, 23)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (161, NULL, 0, NULL, 671, 23)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (162, NULL, 0, NULL, 672, 23)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (163, NULL, 0, NULL, 673, 23)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (164, NULL, 0, NULL, 674, 23)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (165, NULL, 0, NULL, 675, 23)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (166, NULL, 0, NULL, 676, 23)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (167, NULL, 0, NULL, 677, 23)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (168, NULL, 0, NULL, 678, 23)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (169, NULL, 0, NULL, 679, 23)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (170, NULL, 0, NULL, 680, 23)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (171, NULL, 0, NULL, 681, 23)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (172, NULL, 0, NULL, 682, 23)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (173, NULL, 0, NULL, 683, 23)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (174, NULL, 0, NULL, 684, 23)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (175, NULL, 0, NULL, 685, 23)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (176, NULL, 0, NULL, 686, 23)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (177, NULL, 0, NULL, 687, 23)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (178, NULL, 0, NULL, 688, 23)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (179, NULL, 0, NULL, 689, 23)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (180, NULL, 0, NULL, 690, 23)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (181, NULL, 0, NULL, 691, 23)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (182, NULL, 0, NULL, 218, 24)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (183, NULL, 0, NULL, 219, 24)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (184, NULL, 0, NULL, 220, 24)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (185, NULL, 0, NULL, 221, 24)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (186, NULL, 0, NULL, 222, 24)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (187, NULL, 0, NULL, 223, 24)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (188, NULL, 0, NULL, 224, 24)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (189, NULL, 0, NULL, 225, 24)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (190, NULL, 0, NULL, 226, 24)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (191, NULL, 0, NULL, 227, 24)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (192, NULL, 0, NULL, 228, 24)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (193, NULL, 0, NULL, 229, 24)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (194, NULL, 0, NULL, 230, 24)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (195, NULL, 0, NULL, 231, 24)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (196, NULL, 0, NULL, 232, 24)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (197, NULL, 0, NULL, 233, 24)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (198, NULL, 0, NULL, 234, 24)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (199, NULL, 0, NULL, 235, 24)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (200, NULL, 0, NULL, 236, 24)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (201, NULL, 0, NULL, 237, 24)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (202, NULL, 0, NULL, 238, 24)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (203, NULL, 0, NULL, 239, 24)
GO
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (204, NULL, 0, NULL, 240, 24)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (205, NULL, 0, NULL, 241, 24)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (206, NULL, 0, NULL, 242, 24)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (207, NULL, 0, NULL, 243, 24)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (208, NULL, 0, NULL, 244, 24)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (209, NULL, 0, NULL, 245, 24)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (210, NULL, 0, NULL, 246, 24)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (211, NULL, 0, NULL, 247, 24)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (212, NULL, 0, NULL, 248, 24)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (213, NULL, 0, NULL, 249, 24)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (214, NULL, 0, NULL, 250, 24)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (215, NULL, 0, NULL, 251, 24)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (216, NULL, 0, NULL, 252, 24)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (217, NULL, 0, NULL, 253, 24)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (218, NULL, 0, NULL, 254, 24)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (219, NULL, 0, NULL, 255, 24)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (220, NULL, 0, NULL, 256, 24)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (221, NULL, 0, NULL, 257, 24)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (222, NULL, 0, NULL, 258, 24)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (223, NULL, 0, NULL, 259, 24)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (224, NULL, 0, NULL, 260, 24)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (225, NULL, 0, NULL, 434, 22)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (226, NULL, 0, NULL, 435, 22)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (227, NULL, 0, NULL, 436, 22)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (228, NULL, 0, NULL, 437, 22)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (229, NULL, 0, NULL, 438, 22)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (230, NULL, 0, NULL, 439, 22)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (231, NULL, 0, NULL, 440, 22)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (232, NULL, 0, NULL, 441, 22)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (233, NULL, 0, NULL, 442, 22)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (234, NULL, 0, NULL, 443, 22)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (235, NULL, 0, NULL, 444, 22)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (236, NULL, 0, NULL, 445, 22)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (237, NULL, 0, NULL, 446, 22)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (238, NULL, 0, NULL, 447, 22)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (239, NULL, 0, NULL, 448, 22)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (240, NULL, 0, NULL, 449, 22)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (241, NULL, 0, NULL, 450, 22)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (242, NULL, 0, NULL, 451, 22)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (243, NULL, 0, NULL, 452, 22)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (244, NULL, 0, NULL, 453, 22)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (245, NULL, 0, NULL, 454, 22)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (246, NULL, 0, NULL, 455, 22)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (247, NULL, 0, NULL, 456, 22)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (248, NULL, 0, NULL, 457, 22)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (249, NULL, 0, NULL, 458, 22)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (250, NULL, 0, NULL, 459, 22)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (251, NULL, 0, NULL, 460, 22)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (252, NULL, 0, NULL, 461, 22)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (253, NULL, 0, NULL, 462, 22)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (254, NULL, 0, NULL, 463, 22)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (255, NULL, 0, NULL, 464, 22)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (256, NULL, 0, NULL, 465, 22)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (257, NULL, 0, NULL, 466, 22)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (258, NULL, 0, NULL, 467, 22)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (259, NULL, 0, NULL, 468, 22)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (260, NULL, 0, NULL, 469, 22)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (261, NULL, 0, NULL, 470, 22)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (262, NULL, 0, NULL, 471, 22)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (263, NULL, 0, NULL, 472, 22)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (264, NULL, 0, NULL, 473, 22)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (265, NULL, 0, NULL, 474, 22)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (266, NULL, 0, NULL, 475, 22)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (267, NULL, 0, NULL, 476, 22)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (268, NULL, 0, NULL, 262, 25)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (269, NULL, 0, NULL, 263, 25)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (270, NULL, 0, NULL, 264, 25)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (271, NULL, 0, NULL, 265, 25)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (272, NULL, 0, NULL, 266, 25)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (273, NULL, 0, NULL, 267, 25)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (274, NULL, 0, NULL, 268, 25)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (275, NULL, 0, NULL, 269, 25)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (276, NULL, 0, NULL, 270, 25)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (277, NULL, 0, NULL, 271, 25)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (278, NULL, 0, NULL, 272, 25)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (279, NULL, 0, NULL, 273, 25)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (280, NULL, 0, NULL, 274, 25)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (281, NULL, 0, NULL, 275, 25)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (282, NULL, 0, NULL, 276, 25)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (283, NULL, 0, NULL, 277, 25)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (284, NULL, 0, NULL, 278, 25)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (285, NULL, 0, NULL, 279, 25)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (286, NULL, 0, NULL, 280, 25)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (287, NULL, 0, NULL, 281, 25)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (288, NULL, 0, NULL, 282, 25)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (289, NULL, 0, NULL, 283, 25)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (290, NULL, 0, NULL, 284, 25)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (291, NULL, 0, NULL, 285, 25)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (292, NULL, 0, NULL, 286, 25)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (293, NULL, 0, NULL, 287, 25)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (294, NULL, 0, NULL, 288, 25)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (295, NULL, 0, NULL, 289, 25)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (296, NULL, 0, NULL, 290, 25)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (297, NULL, 0, NULL, 291, 25)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (298, NULL, 0, NULL, 292, 25)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (299, NULL, 0, NULL, 293, 25)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (300, NULL, 0, NULL, 294, 25)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (301, NULL, 0, NULL, 295, 25)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (302, NULL, 0, NULL, 296, 25)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (303, NULL, 0, NULL, 297, 25)
GO
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (304, NULL, 0, NULL, 298, 25)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (305, NULL, 0, NULL, 299, 25)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (306, NULL, 0, NULL, 300, 25)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (307, NULL, 0, NULL, 301, 25)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (308, NULL, 0, NULL, 302, 25)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (309, NULL, 0, NULL, 303, 25)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (310, NULL, 0, NULL, 304, 25)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (311, NULL, 0, NULL, 175, 18)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (312, NULL, 0, NULL, 176, 18)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (313, NULL, 0, NULL, 177, 18)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (314, NULL, 0, NULL, 178, 18)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (315, NULL, 0, NULL, 179, 18)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (316, NULL, 0, NULL, 180, 18)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (317, NULL, 0, NULL, 181, 18)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (318, NULL, 0, NULL, 182, 18)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (319, NULL, 0, NULL, 183, 18)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (320, NULL, 0, NULL, 184, 18)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (321, NULL, 0, NULL, 185, 18)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (322, NULL, 0, NULL, 186, 18)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (323, NULL, 0, NULL, 187, 18)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (324, NULL, 0, NULL, 188, 18)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (325, NULL, 0, NULL, 189, 18)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (326, NULL, 0, NULL, 190, 18)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (327, NULL, 0, NULL, 191, 18)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (328, NULL, 0, NULL, 192, 18)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (329, NULL, 0, NULL, 193, 18)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (330, NULL, 0, NULL, 194, 18)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (331, NULL, 0, NULL, 195, 18)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (332, NULL, 0, NULL, 196, 18)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (333, NULL, 0, NULL, 197, 18)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (334, NULL, 0, NULL, 198, 18)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (335, NULL, 0, NULL, 199, 18)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (336, NULL, 0, NULL, 200, 18)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (337, NULL, 0, NULL, 201, 18)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (338, NULL, 0, NULL, 202, 18)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (339, NULL, 0, NULL, 203, 18)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (340, NULL, 0, NULL, 204, 18)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (341, NULL, 0, NULL, 205, 18)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (342, NULL, 0, NULL, 206, 18)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (343, NULL, 0, NULL, 207, 18)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (344, NULL, 0, NULL, 208, 18)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (345, NULL, 0, NULL, 209, 18)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (346, NULL, 0, NULL, 210, 18)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (347, NULL, 0, NULL, 211, 18)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (348, NULL, 0, NULL, 212, 18)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (349, NULL, 0, NULL, 213, 18)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (350, NULL, 0, NULL, 214, 18)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (351, NULL, 0, NULL, 215, 18)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (352, NULL, 0, NULL, 216, 18)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (353, NULL, 0, NULL, 217, 18)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (354, NULL, 0, NULL, 477, 26)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (355, NULL, 0, NULL, 478, 26)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (356, NULL, 0, NULL, 479, 26)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (357, NULL, 0, NULL, 480, 26)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (358, NULL, 0, NULL, 481, 26)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (359, NULL, 0, NULL, 482, 26)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (360, NULL, 0, NULL, 483, 26)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (361, NULL, 0, NULL, 484, 26)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (362, NULL, 0, NULL, 485, 26)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (363, NULL, 0, NULL, 486, 26)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (364, NULL, 0, NULL, 487, 26)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (365, NULL, 0, NULL, 488, 26)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (366, NULL, 0, NULL, 489, 26)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (367, NULL, 0, NULL, 490, 26)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (368, NULL, 0, NULL, 491, 26)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (369, NULL, 0, NULL, 492, 26)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (370, NULL, 0, NULL, 493, 26)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (371, NULL, 0, NULL, 494, 26)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (372, NULL, 0, NULL, 495, 26)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (373, NULL, 0, NULL, 496, 26)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (374, NULL, 0, NULL, 497, 26)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (375, NULL, 0, NULL, 498, 26)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (376, NULL, 0, NULL, 499, 26)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (377, NULL, 0, NULL, 500, 26)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (378, NULL, 0, NULL, 501, 26)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (379, NULL, 0, NULL, 502, 26)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (380, NULL, 0, NULL, 503, 26)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (381, NULL, 0, NULL, 504, 26)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (382, NULL, 0, NULL, 505, 26)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (383, NULL, 0, NULL, 506, 26)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (384, NULL, 0, NULL, 507, 26)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (385, NULL, 0, NULL, 508, 26)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (386, NULL, 0, NULL, 509, 26)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (387, NULL, 0, NULL, 510, 26)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (388, NULL, 0, NULL, 511, 26)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (389, NULL, 0, NULL, 512, 26)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (390, NULL, 0, NULL, 513, 26)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (391, NULL, 0, NULL, 514, 26)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (392, NULL, 0, NULL, 515, 26)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (393, NULL, 0, NULL, 516, 26)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (394, NULL, 0, NULL, 517, 26)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (395, NULL, 0, NULL, 518, 26)
INSERT [dbo].[SubStat] ([SubStatID], [DueDate], [IsDone], [Notes], [SubstepID], [LinkID]) VALUES (396, NULL, 0, NULL, 519, 26)
SET IDENTITY_INSERT [dbo].[SubStat] OFF
SET IDENTITY_INSERT [dbo].[Substep] ON 

INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (1, CAST(1 AS Decimal(18, 0)), N'Talk to your family.', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 1)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (2, CAST(2 AS Decimal(18, 0)), N'Talk to veterans.', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 1)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (3, CAST(1 AS Decimal(18, 0)), N'Read "Top 10 Things You Should Know..."', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 2)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (4, CAST(2 AS Decimal(18, 0)), N'Review these Resources', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 2)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (5, CAST(1 AS Decimal(18, 0)), N'Complete the following Questionaire', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 3)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (6, CAST(2 AS Decimal(18, 0)), N'Watch this video!', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 3)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (7, CAST(1 AS Decimal(18, 0)), N'Review qualifications', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 4)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (8, CAST(1 AS Decimal(18, 0)), N'Army Resources ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 5)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (9, CAST(2 AS Decimal(18, 0)), N'Air Force Resources ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 5)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (10, CAST(3 AS Decimal(18, 0)), N'Navy Resources ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 5)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (11, CAST(4 AS Decimal(18, 0)), N'Marines Resources ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 5)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (12, CAST(5 AS Decimal(18, 0)), N'Coast Guard Resources ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 5)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (13, CAST(1 AS Decimal(18, 0)), N'Review Qualifications', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 8)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (14, CAST(2 AS Decimal(18, 0)), N'Pay/Benefits', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 8)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (15, CAST(1 AS Decimal(18, 0)), N'Review Qualifications', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 9)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (16, CAST(2 AS Decimal(18, 0)), N'Pay/Benefits', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 9)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (17, CAST(3 AS Decimal(18, 0)), N'Available Programs', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 9)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (18, CAST(1 AS Decimal(18, 0)), N'Review Qualifications', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 10)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (19, CAST(2 AS Decimal(18, 0)), N'Pay/Benefits', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 10)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (20, CAST(3 AS Decimal(18, 0)), N'Available Programs', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 10)
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
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (44, CAST(1 AS Decimal(18, 0)), N'View the Basic Training Schedule', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 18)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (45, CAST(2 AS Decimal(18, 0)), N'Basic Training Videos', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 18)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (46, CAST(1 AS Decimal(18, 0)), N'Talk to your family.', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 19)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (47, CAST(2 AS Decimal(18, 0)), N'Talk to veterans.', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 19)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (48, CAST(1 AS Decimal(18, 0)), N'Read "Top 10 Things You Should Know..."', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 20)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (49, CAST(2 AS Decimal(18, 0)), N'Review these Resources', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 20)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (50, CAST(1 AS Decimal(18, 0)), N'Complete the following Questionaire', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 21)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (51, CAST(2 AS Decimal(18, 0)), N'Watch this video!', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 21)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (52, CAST(1 AS Decimal(18, 0)), N'Review qualifications', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 22)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (53, CAST(1 AS Decimal(18, 0)), N'Army Resources ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 23)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (54, CAST(2 AS Decimal(18, 0)), N'Air Force Resources ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 23)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (55, CAST(3 AS Decimal(18, 0)), N'Navy Resources ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 23)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (56, CAST(4 AS Decimal(18, 0)), N'Marines Resources ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 23)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (57, CAST(5 AS Decimal(18, 0)), N'Coast Guard Resources ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 23)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (58, CAST(1 AS Decimal(18, 0)), N'Review Qualifications', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 25)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (59, CAST(2 AS Decimal(18, 0)), N'Pay/Benefits', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 25)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (60, CAST(1 AS Decimal(18, 0)), N'Review Qualifications', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 26)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (61, CAST(2 AS Decimal(18, 0)), N'Pay/Benefits', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 26)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (62, CAST(3 AS Decimal(18, 0)), N'Available Programs', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 26)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (63, CAST(1 AS Decimal(18, 0)), N'Review Qualifications', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 27)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (64, CAST(2 AS Decimal(18, 0)), N'Pay/Benefits', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 27)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (65, CAST(3 AS Decimal(18, 0)), N'Available Programs', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 27)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (66, CAST(1 AS Decimal(18, 0)), N'Active Duty Army ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 28)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (67, CAST(2 AS Decimal(18, 0)), N'Army Reserve ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 28)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (68, CAST(3 AS Decimal(18, 0)), N'Army National Guard ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 28)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (69, CAST(1 AS Decimal(18, 0)), N'Gather required information and documents ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 29)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (70, CAST(2 AS Decimal(18, 0)), N'Questions to ask the recruiter ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 29)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (71, CAST(3 AS Decimal(18, 0)), N'Find local recruiter ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 29)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (72, CAST(4 AS Decimal(18, 0)), N'Meet your recruiter/submit application ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 29)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (73, CAST(1 AS Decimal(18, 0)), N'What is the ASVAB?', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 30)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (74, CAST(2 AS Decimal(18, 0)), N'ASVAB preparation tips ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 30)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (75, CAST(3 AS Decimal(18, 0)), N'ASVAB test design/layout ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 30)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (76, CAST(4 AS Decimal(18, 0)), N'ASVAB scores for specific careers ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 30)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (77, CAST(1 AS Decimal(18, 0)), N'Take the practice ASVAB test', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 31)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (78, CAST(2 AS Decimal(18, 0)), N'Ace the real ASVAB test ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 31)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (79, CAST(1 AS Decimal(18, 0)), N'Physical exam preparation ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 32)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (80, CAST(2 AS Decimal(18, 0)), N'Pass the physical exam ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 32)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (81, CAST(3 AS Decimal(18, 0)), N'Choose the MOS ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 32)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (82, CAST(4 AS Decimal(18, 0)), N'Take the oath of Enlistment ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 32)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (83, CAST(1 AS Decimal(18, 0)), N'Direct ship/Delayed Entry?', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 34)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (84, CAST(2 AS Decimal(18, 0)), N'What to expect in basic training ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 34)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (85, CAST(3 AS Decimal(18, 0)), N'Physical Fitness', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 34)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (86, CAST(4 AS Decimal(18, 0)), N'Packing List ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 34)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (87, CAST(1 AS Decimal(18, 0)), N'View the Basic Training Schedule', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 35)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (88, CAST(2 AS Decimal(18, 0)), N'Basic Training Videos', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 35)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (89, CAST(1 AS Decimal(18, 0)), N'Talk to your family.', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 36)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (90, CAST(2 AS Decimal(18, 0)), N'Talk to veterans.', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 36)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (91, CAST(1 AS Decimal(18, 0)), N'Read "Top 10 Things You Should Know..."', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 37)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (92, CAST(2 AS Decimal(18, 0)), N'Review these Resources', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 37)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (93, CAST(1 AS Decimal(18, 0)), N'Complete the following Questionaire', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 38)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (94, CAST(2 AS Decimal(18, 0)), N'Watch this video!', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 38)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (95, CAST(1 AS Decimal(18, 0)), N'Review qualifications', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 39)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (96, CAST(1 AS Decimal(18, 0)), N'Army Resources ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 40)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (97, CAST(2 AS Decimal(18, 0)), N'Air Force Resources ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 40)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (98, CAST(3 AS Decimal(18, 0)), N'Navy Resources ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 40)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (99, CAST(4 AS Decimal(18, 0)), N'Marines Resources ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 40)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (100, CAST(5 AS Decimal(18, 0)), N'Coast Guard Resources ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 40)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (101, CAST(1 AS Decimal(18, 0)), N'Review Qualifications', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 42)
GO
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (102, CAST(2 AS Decimal(18, 0)), N'Pay/Benefits', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 42)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (103, CAST(1 AS Decimal(18, 0)), N'Review Qualifications', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 43)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (104, CAST(2 AS Decimal(18, 0)), N'Pay/Benefits', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 43)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (105, CAST(3 AS Decimal(18, 0)), N'Available Programs', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 43)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (106, CAST(1 AS Decimal(18, 0)), N'Review Qualifications', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 44)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (107, CAST(2 AS Decimal(18, 0)), N'Pay/Benefits', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 44)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (108, CAST(3 AS Decimal(18, 0)), N'Available Programs', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 44)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (109, CAST(1 AS Decimal(18, 0)), N'Active Duty Army ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 45)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (110, CAST(2 AS Decimal(18, 0)), N'Army Reserve ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 45)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (111, CAST(3 AS Decimal(18, 0)), N'Army National Guard ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 45)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (112, CAST(1 AS Decimal(18, 0)), N'Gather required information and documents ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 46)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (113, CAST(2 AS Decimal(18, 0)), N'Questions to ask the recruiter ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 46)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (114, CAST(3 AS Decimal(18, 0)), N'Find local recruiter ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 46)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (115, CAST(4 AS Decimal(18, 0)), N'Meet your recruiter/submit application ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 46)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (116, CAST(1 AS Decimal(18, 0)), N'What is the ASVAB?', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 47)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (117, CAST(2 AS Decimal(18, 0)), N'ASVAB preparation tips ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 47)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (118, CAST(3 AS Decimal(18, 0)), N'ASVAB test design/layout ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 47)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (119, CAST(4 AS Decimal(18, 0)), N'ASVAB scores for specific careers ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 47)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (120, CAST(1 AS Decimal(18, 0)), N'Take the practice ASVAB test', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 48)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (121, CAST(2 AS Decimal(18, 0)), N'Ace the real ASVAB test ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 48)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (122, CAST(1 AS Decimal(18, 0)), N'Physical exam preparation ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 49)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (123, CAST(2 AS Decimal(18, 0)), N'Pass the physical exam ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 49)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (124, CAST(3 AS Decimal(18, 0)), N'Choose the MOS ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 49)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (125, CAST(4 AS Decimal(18, 0)), N'Take the oath of Enlistment ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 49)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (126, CAST(1 AS Decimal(18, 0)), N'Direct ship/Delayed Entry?', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 51)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (127, CAST(2 AS Decimal(18, 0)), N'What to expect in basic training ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 51)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (128, CAST(3 AS Decimal(18, 0)), N'Physical Fitness', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 51)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (129, CAST(4 AS Decimal(18, 0)), N'Packing List ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 51)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (130, CAST(1 AS Decimal(18, 0)), N'View the Basic Training Schedule', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 52)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (131, CAST(2 AS Decimal(18, 0)), N'Basic Training Videos', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 52)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (132, CAST(1 AS Decimal(18, 0)), N'Talk to your family.', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 53)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (133, CAST(2 AS Decimal(18, 0)), N'Talk to veterans.', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 53)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (134, CAST(1 AS Decimal(18, 0)), N'Read "Top 10 Things You Should Know..."', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 54)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (135, CAST(2 AS Decimal(18, 0)), N'Review these Resources', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 54)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (136, CAST(1 AS Decimal(18, 0)), N'Complete the following Questionaire', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 55)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (137, CAST(2 AS Decimal(18, 0)), N'Watch this video!', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 55)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (138, CAST(1 AS Decimal(18, 0)), N'Review qualifications', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 56)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (139, CAST(1 AS Decimal(18, 0)), N'Army Resources ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 57)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (140, CAST(2 AS Decimal(18, 0)), N'Air Force Resources ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 57)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (141, CAST(3 AS Decimal(18, 0)), N'Navy Resources ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 57)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (142, CAST(4 AS Decimal(18, 0)), N'Marines Resources ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 57)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (143, CAST(5 AS Decimal(18, 0)), N'Coast Guard Resources ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 57)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (144, CAST(1 AS Decimal(18, 0)), N'Review Qualifications', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 59)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (145, CAST(2 AS Decimal(18, 0)), N'Pay/Benefits', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 59)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (146, CAST(1 AS Decimal(18, 0)), N'Review Qualifications', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 60)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (147, CAST(2 AS Decimal(18, 0)), N'Pay/Benefits', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 60)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (148, CAST(3 AS Decimal(18, 0)), N'Available Programs', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 60)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (149, CAST(1 AS Decimal(18, 0)), N'Review Qualifications', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 61)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (150, CAST(2 AS Decimal(18, 0)), N'Pay/Benefits', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 61)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (151, CAST(3 AS Decimal(18, 0)), N'Available Programs', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 61)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (152, CAST(1 AS Decimal(18, 0)), N'Active Duty Army ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 62)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (153, CAST(2 AS Decimal(18, 0)), N'Army Reserve ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 62)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (154, CAST(3 AS Decimal(18, 0)), N'Army National Guard ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 62)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (155, CAST(1 AS Decimal(18, 0)), N'Gather required information and documents ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 63)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (156, CAST(2 AS Decimal(18, 0)), N'Questions to ask the recruiter ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 63)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (157, CAST(3 AS Decimal(18, 0)), N'Find local recruiter ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 63)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (158, CAST(4 AS Decimal(18, 0)), N'Meet your recruiter/submit application ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 63)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (159, CAST(1 AS Decimal(18, 0)), N'What is the ASVAB?', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 64)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (160, CAST(2 AS Decimal(18, 0)), N'ASVAB preparation tips ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 64)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (161, CAST(3 AS Decimal(18, 0)), N'ASVAB test design/layout ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 64)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (162, CAST(4 AS Decimal(18, 0)), N'ASVAB scores for specific careers ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 64)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (163, CAST(1 AS Decimal(18, 0)), N'Take the practice ASVAB test', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 65)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (164, CAST(2 AS Decimal(18, 0)), N'Ace the real ASVAB test ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 65)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (165, CAST(1 AS Decimal(18, 0)), N'Physical exam preparation ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 66)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (166, CAST(2 AS Decimal(18, 0)), N'Pass the physical exam ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 66)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (167, CAST(3 AS Decimal(18, 0)), N'Choose the MOS ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 66)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (168, CAST(4 AS Decimal(18, 0)), N'Take the oath of Enlistment ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 66)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (169, CAST(1 AS Decimal(18, 0)), N'Direct ship/Delayed Entry?', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 68)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (170, CAST(2 AS Decimal(18, 0)), N'What to expect in basic training ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 68)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (171, CAST(3 AS Decimal(18, 0)), N'Physical Fitness', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 68)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (172, CAST(4 AS Decimal(18, 0)), N'Packing List ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 68)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (173, CAST(1 AS Decimal(18, 0)), N'View the Basic Training Schedule', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 69)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (174, CAST(2 AS Decimal(18, 0)), N'Basic Training Videos', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 69)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (175, CAST(1 AS Decimal(18, 0)), N'Talk to your family.', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 70)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (176, CAST(2 AS Decimal(18, 0)), N'Talk to veterans.', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 70)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (177, CAST(1 AS Decimal(18, 0)), N'Read "Top 10 Things You Should Know..."', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 71)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (178, CAST(2 AS Decimal(18, 0)), N'Review these Resources', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 71)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (179, CAST(1 AS Decimal(18, 0)), N'Complete the following Questionaire', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 72)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (180, CAST(2 AS Decimal(18, 0)), N'Watch this video!', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 72)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (181, CAST(1 AS Decimal(18, 0)), N'Review qualifications', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 73)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (182, CAST(1 AS Decimal(18, 0)), N'Army Resources ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 74)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (183, CAST(2 AS Decimal(18, 0)), N'Air Force Resources ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 74)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (184, CAST(3 AS Decimal(18, 0)), N'Navy Resources ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 74)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (185, CAST(4 AS Decimal(18, 0)), N'Marines Resources ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 74)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (186, CAST(5 AS Decimal(18, 0)), N'Coast Guard Resources ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 74)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (187, CAST(1 AS Decimal(18, 0)), N'Review Qualifications', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 76)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (188, CAST(2 AS Decimal(18, 0)), N'Pay/Benefits', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 76)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (189, CAST(1 AS Decimal(18, 0)), N'Review Qualifications', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 77)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (190, CAST(2 AS Decimal(18, 0)), N'Pay/Benefits', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 77)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (191, CAST(3 AS Decimal(18, 0)), N'Available Programs', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 77)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (192, CAST(1 AS Decimal(18, 0)), N'Review Qualifications', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 78)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (193, CAST(2 AS Decimal(18, 0)), N'Pay/Benefits', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 78)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (194, CAST(3 AS Decimal(18, 0)), N'Available Programs', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 78)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (195, CAST(1 AS Decimal(18, 0)), N'Active Duty Army ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 79)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (196, CAST(2 AS Decimal(18, 0)), N'Army Reserve ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 79)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (197, CAST(3 AS Decimal(18, 0)), N'Army National Guard ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 79)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (198, CAST(1 AS Decimal(18, 0)), N'Gather required information and documents ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 80)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (199, CAST(2 AS Decimal(18, 0)), N'Questions to ask the recruiter ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 80)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (200, CAST(3 AS Decimal(18, 0)), N'Find local recruiter ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 80)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (201, CAST(4 AS Decimal(18, 0)), N'Meet your recruiter/submit application ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 80)
GO
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (202, CAST(1 AS Decimal(18, 0)), N'What is the ASVAB?', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 81)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (203, CAST(2 AS Decimal(18, 0)), N'ASVAB preparation tips ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 81)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (204, CAST(3 AS Decimal(18, 0)), N'ASVAB test design/layout ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 81)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (205, CAST(4 AS Decimal(18, 0)), N'ASVAB scores for specific careers ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 81)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (206, CAST(1 AS Decimal(18, 0)), N'Take the practice ASVAB test', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 82)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (207, CAST(2 AS Decimal(18, 0)), N'Ace the real ASVAB test ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 82)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (208, CAST(1 AS Decimal(18, 0)), N'Physical exam preparation ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 83)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (209, CAST(2 AS Decimal(18, 0)), N'Pass the physical exam ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 83)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (210, CAST(3 AS Decimal(18, 0)), N'Choose the MOS ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 83)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (211, CAST(4 AS Decimal(18, 0)), N'Take the oath of Enlistment ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 83)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (212, CAST(1 AS Decimal(18, 0)), N'Direct ship/Delayed Entry?', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 85)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (213, CAST(2 AS Decimal(18, 0)), N'What to expect in basic training ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 85)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (214, CAST(3 AS Decimal(18, 0)), N'Physical Fitness', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 85)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (215, CAST(4 AS Decimal(18, 0)), N'Packing List ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 85)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (216, CAST(1 AS Decimal(18, 0)), N'View the Basic Training Schedule', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 86)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (217, CAST(2 AS Decimal(18, 0)), N'Basic Training Videos', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 86)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (218, CAST(1 AS Decimal(18, 0)), N'Talk to your family.', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 87)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (219, CAST(2 AS Decimal(18, 0)), N'Talk to veterans.', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 87)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (220, CAST(1 AS Decimal(18, 0)), N'Read "Top 10 Things You Should Know..."', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 88)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (221, CAST(2 AS Decimal(18, 0)), N'Review these Resources', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 88)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (222, CAST(1 AS Decimal(18, 0)), N'Complete the following Questionaire', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 89)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (223, CAST(2 AS Decimal(18, 0)), N'Watch this video!', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 89)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (224, CAST(1 AS Decimal(18, 0)), N'Review qualifications', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 90)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (225, CAST(1 AS Decimal(18, 0)), N'Army Resources ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 91)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (226, CAST(2 AS Decimal(18, 0)), N'Air Force Resources ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 91)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (227, CAST(3 AS Decimal(18, 0)), N'Navy Resources ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 91)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (228, CAST(4 AS Decimal(18, 0)), N'Marines Resources ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 91)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (229, CAST(5 AS Decimal(18, 0)), N'Coast Guard Resources ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 91)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (230, CAST(1 AS Decimal(18, 0)), N'Review Qualifications', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 93)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (231, CAST(2 AS Decimal(18, 0)), N'Pay/Benefits', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 93)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (232, CAST(1 AS Decimal(18, 0)), N'Review Qualifications', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 94)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (233, CAST(2 AS Decimal(18, 0)), N'Pay/Benefits', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 94)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (234, CAST(3 AS Decimal(18, 0)), N'Available Programs', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 94)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (235, CAST(1 AS Decimal(18, 0)), N'Review Qualifications', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 95)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (236, CAST(2 AS Decimal(18, 0)), N'Pay/Benefits', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 95)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (237, CAST(3 AS Decimal(18, 0)), N'Available Programs', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 95)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (238, CAST(1 AS Decimal(18, 0)), N'Active Duty Army ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 96)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (239, CAST(2 AS Decimal(18, 0)), N'Army Reserve ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 96)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (240, CAST(3 AS Decimal(18, 0)), N'Army National Guard ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 96)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (241, CAST(1 AS Decimal(18, 0)), N'Gather required information and documents ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 97)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (242, CAST(2 AS Decimal(18, 0)), N'Questions to ask the recruiter ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 97)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (243, CAST(3 AS Decimal(18, 0)), N'Find local recruiter ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 97)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (244, CAST(4 AS Decimal(18, 0)), N'Meet your recruiter/submit application ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 97)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (245, CAST(1 AS Decimal(18, 0)), N'What is the ASVAB?', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 98)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (246, CAST(2 AS Decimal(18, 0)), N'ASVAB preparation tips ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 98)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (247, CAST(3 AS Decimal(18, 0)), N'ASVAB test design/layout ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 98)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (248, CAST(4 AS Decimal(18, 0)), N'ASVAB scores for specific careers ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 98)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (249, CAST(1 AS Decimal(18, 0)), N'Take the practice ASVAB test', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 99)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (250, CAST(2 AS Decimal(18, 0)), N'Ace the real ASVAB test ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 99)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (251, CAST(1 AS Decimal(18, 0)), N'Physical exam preparation ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 100)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (252, CAST(2 AS Decimal(18, 0)), N'Pass the physical exam ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 100)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (253, CAST(3 AS Decimal(18, 0)), N'Choose the MOS ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 100)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (254, CAST(4 AS Decimal(18, 0)), N'Take the oath of Enlistment ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 100)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (255, CAST(1 AS Decimal(18, 0)), N'Direct ship/Delayed Entry?', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 102)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (256, CAST(2 AS Decimal(18, 0)), N'What to expect in basic training ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 102)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (257, CAST(3 AS Decimal(18, 0)), N'Physical Fitness', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 102)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (258, CAST(4 AS Decimal(18, 0)), N'Packing List ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 102)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (259, CAST(1 AS Decimal(18, 0)), N'View the Basic Training Schedule', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 103)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (260, CAST(2 AS Decimal(18, 0)), N'Basic Training Videos', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 103)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (262, CAST(1 AS Decimal(18, 0)), N'Talk to your family.', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 105)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (263, CAST(2 AS Decimal(18, 0)), N'Talk to veterans.', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 105)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (264, CAST(1 AS Decimal(18, 0)), N'Read "Top 10 Things You Should Know..."', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 106)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (265, CAST(2 AS Decimal(18, 0)), N'Review these Resources', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 106)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (266, CAST(1 AS Decimal(18, 0)), N'Complete the following Questionaire', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 107)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (267, CAST(2 AS Decimal(18, 0)), N'Watch this video!', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 107)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (268, CAST(1 AS Decimal(18, 0)), N'Review qualifications', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 108)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (269, CAST(1 AS Decimal(18, 0)), N'Army Resources ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 109)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (270, CAST(2 AS Decimal(18, 0)), N'Air Force Resources ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 109)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (271, CAST(3 AS Decimal(18, 0)), N'Navy Resources ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 109)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (272, CAST(4 AS Decimal(18, 0)), N'Marines Resources ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 109)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (273, CAST(5 AS Decimal(18, 0)), N'Coast Guard Resources ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 109)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (274, CAST(1 AS Decimal(18, 0)), N'Review Qualifications', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 111)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (275, CAST(2 AS Decimal(18, 0)), N'Pay/Benefits', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 111)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (276, CAST(1 AS Decimal(18, 0)), N'Review Qualifications', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 112)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (277, CAST(2 AS Decimal(18, 0)), N'Pay/Benefits', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 112)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (278, CAST(3 AS Decimal(18, 0)), N'Available Programs', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 112)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (279, CAST(1 AS Decimal(18, 0)), N'Review Qualifications', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 113)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (280, CAST(2 AS Decimal(18, 0)), N'Pay/Benefits', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 113)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (281, CAST(3 AS Decimal(18, 0)), N'Available Programs', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 113)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (282, CAST(1 AS Decimal(18, 0)), N'Active Duty Army ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 114)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (283, CAST(2 AS Decimal(18, 0)), N'Army Reserve ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 114)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (284, CAST(3 AS Decimal(18, 0)), N'Army National Guard ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 114)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (285, CAST(1 AS Decimal(18, 0)), N'Gather required information and documents ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 115)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (286, CAST(2 AS Decimal(18, 0)), N'Questions to ask the recruiter ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 115)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (287, CAST(3 AS Decimal(18, 0)), N'Find local recruiter ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 115)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (288, CAST(4 AS Decimal(18, 0)), N'Meet your recruiter/submit application ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 115)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (289, CAST(1 AS Decimal(18, 0)), N'What is the ASVAB?', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 116)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (290, CAST(2 AS Decimal(18, 0)), N'ASVAB preparation tips ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 116)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (291, CAST(3 AS Decimal(18, 0)), N'ASVAB test design/layout ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 116)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (292, CAST(4 AS Decimal(18, 0)), N'ASVAB scores for specific careers ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 116)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (293, CAST(1 AS Decimal(18, 0)), N'Take the practice ASVAB test', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 117)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (294, CAST(2 AS Decimal(18, 0)), N'Ace the real ASVAB test ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 117)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (295, CAST(1 AS Decimal(18, 0)), N'Physical exam preparation ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 118)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (296, CAST(2 AS Decimal(18, 0)), N'Pass the physical exam ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 118)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (297, CAST(3 AS Decimal(18, 0)), N'Choose the MOS ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 118)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (298, CAST(4 AS Decimal(18, 0)), N'Take the oath of Enlistment ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 118)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (299, CAST(1 AS Decimal(18, 0)), N'Direct ship/Delayed Entry?', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 120)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (300, CAST(2 AS Decimal(18, 0)), N'What to expect in basic training ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 120)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (301, CAST(3 AS Decimal(18, 0)), N'Physical Fitness', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 120)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (302, CAST(4 AS Decimal(18, 0)), N'Packing List ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 120)
GO
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (303, CAST(1 AS Decimal(18, 0)), N'View the Basic Training Schedule', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 121)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (304, CAST(2 AS Decimal(18, 0)), N'Basic Training Videos', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 121)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (305, CAST(1 AS Decimal(18, 0)), N'Talk to your family.', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 122)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (306, CAST(2 AS Decimal(18, 0)), N'Talk to veterans.', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 122)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (307, CAST(1 AS Decimal(18, 0)), N'Read "Top 10 Things You Should Know..."', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 123)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (308, CAST(2 AS Decimal(18, 0)), N'Review these Resources', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 123)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (309, CAST(1 AS Decimal(18, 0)), N'Complete the following Questionaire', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 124)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (310, CAST(2 AS Decimal(18, 0)), N'Watch this video!', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 124)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (311, CAST(1 AS Decimal(18, 0)), N'Review qualifications', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 125)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (312, CAST(1 AS Decimal(18, 0)), N'Army Resources ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 126)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (313, CAST(2 AS Decimal(18, 0)), N'Air Force Resources ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 126)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (314, CAST(3 AS Decimal(18, 0)), N'Navy Resources ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 126)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (315, CAST(4 AS Decimal(18, 0)), N'Marines Resources ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 126)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (316, CAST(5 AS Decimal(18, 0)), N'Coast Guard Resources ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 126)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (317, CAST(1 AS Decimal(18, 0)), N'Review Qualifications', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 128)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (318, CAST(2 AS Decimal(18, 0)), N'Pay/Benefits', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 128)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (319, CAST(1 AS Decimal(18, 0)), N'Review Qualifications', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 129)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (320, CAST(2 AS Decimal(18, 0)), N'Pay/Benefits', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 129)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (321, CAST(3 AS Decimal(18, 0)), N'Available Programs', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 129)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (322, CAST(1 AS Decimal(18, 0)), N'Review Qualifications', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 130)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (323, CAST(2 AS Decimal(18, 0)), N'Pay/Benefits', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 130)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (324, CAST(3 AS Decimal(18, 0)), N'Available Programs', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 130)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (325, CAST(1 AS Decimal(18, 0)), N'Active Duty Army ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 131)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (326, CAST(2 AS Decimal(18, 0)), N'Army Reserve ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 131)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (327, CAST(3 AS Decimal(18, 0)), N'Army National Guard ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 131)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (328, CAST(1 AS Decimal(18, 0)), N'Gather required information and documents ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 132)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (329, CAST(2 AS Decimal(18, 0)), N'Questions to ask the recruiter ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 132)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (330, CAST(3 AS Decimal(18, 0)), N'Find local recruiter ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 132)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (331, CAST(4 AS Decimal(18, 0)), N'Meet your recruiter/submit application ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 132)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (332, CAST(1 AS Decimal(18, 0)), N'What is the ASVAB?', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 133)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (333, CAST(2 AS Decimal(18, 0)), N'ASVAB preparation tips ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 133)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (334, CAST(3 AS Decimal(18, 0)), N'ASVAB test design/layout ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 133)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (335, CAST(4 AS Decimal(18, 0)), N'ASVAB scores for specific careers ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 133)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (336, CAST(1 AS Decimal(18, 0)), N'Take the practice ASVAB test', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 134)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (337, CAST(2 AS Decimal(18, 0)), N'Ace the real ASVAB test ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 134)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (338, CAST(1 AS Decimal(18, 0)), N'Physical exam preparation ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 135)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (339, CAST(2 AS Decimal(18, 0)), N'Pass the physical exam ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 135)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (340, CAST(3 AS Decimal(18, 0)), N'Choose the MOS ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 135)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (341, CAST(4 AS Decimal(18, 0)), N'Take the oath of Enlistment ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 135)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (342, CAST(1 AS Decimal(18, 0)), N'Direct ship/Delayed Entry?', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 137)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (343, CAST(2 AS Decimal(18, 0)), N'What to expect in basic training ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 137)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (344, CAST(3 AS Decimal(18, 0)), N'Physical Fitness', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 137)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (345, CAST(4 AS Decimal(18, 0)), N'Packing List ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 137)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (346, CAST(1 AS Decimal(18, 0)), N'View the Basic Training Schedule', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 138)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (347, CAST(2 AS Decimal(18, 0)), N'Basic Training Videos', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 138)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (348, CAST(1 AS Decimal(18, 0)), N'Talk to your family.', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 139)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (349, CAST(2 AS Decimal(18, 0)), N'Talk to veterans.', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 139)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (350, CAST(1 AS Decimal(18, 0)), N'Read "Top 10 Things You Should Know..."', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 140)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (351, CAST(2 AS Decimal(18, 0)), N'Review these Resources', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 140)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (352, CAST(1 AS Decimal(18, 0)), N'Complete the following Questionaire', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 141)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (353, CAST(2 AS Decimal(18, 0)), N'Watch this video!', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 141)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (354, CAST(1 AS Decimal(18, 0)), N'Review qualifications', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 142)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (355, CAST(1 AS Decimal(18, 0)), N'Army Resources ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 143)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (356, CAST(2 AS Decimal(18, 0)), N'Air Force Resources ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 143)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (357, CAST(3 AS Decimal(18, 0)), N'Navy Resources ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 143)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (358, CAST(4 AS Decimal(18, 0)), N'Marines Resources ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 143)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (359, CAST(5 AS Decimal(18, 0)), N'Coast Guard Resources ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 143)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (360, CAST(1 AS Decimal(18, 0)), N'Review Qualifications', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 145)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (361, CAST(2 AS Decimal(18, 0)), N'Pay/Benefits', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 145)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (362, CAST(1 AS Decimal(18, 0)), N'Review Qualifications', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 146)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (363, CAST(2 AS Decimal(18, 0)), N'Pay/Benefits', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 146)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (364, CAST(3 AS Decimal(18, 0)), N'Available Programs', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 146)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (365, CAST(1 AS Decimal(18, 0)), N'Review Qualifications', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 147)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (366, CAST(2 AS Decimal(18, 0)), N'Pay/Benefits', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 147)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (367, CAST(3 AS Decimal(18, 0)), N'Available Programs', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 147)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (368, CAST(1 AS Decimal(18, 0)), N'Active Duty Army ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 148)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (369, CAST(2 AS Decimal(18, 0)), N'Army Reserve ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 148)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (370, CAST(3 AS Decimal(18, 0)), N'Army National Guard ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 148)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (371, CAST(1 AS Decimal(18, 0)), N'Gather required information and documents ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 149)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (372, CAST(2 AS Decimal(18, 0)), N'Questions to ask the recruiter ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 149)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (373, CAST(3 AS Decimal(18, 0)), N'Find local recruiter ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 149)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (374, CAST(4 AS Decimal(18, 0)), N'Meet your recruiter/submit application ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 149)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (375, CAST(1 AS Decimal(18, 0)), N'What is the ASVAB?', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 150)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (376, CAST(2 AS Decimal(18, 0)), N'ASVAB preparation tips ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 150)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (377, CAST(3 AS Decimal(18, 0)), N'ASVAB test design/layout ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 150)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (378, CAST(4 AS Decimal(18, 0)), N'ASVAB scores for specific careers ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 150)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (379, CAST(1 AS Decimal(18, 0)), N'Take the practice ASVAB test', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 151)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (380, CAST(2 AS Decimal(18, 0)), N'Ace the real ASVAB test ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 151)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (381, CAST(1 AS Decimal(18, 0)), N'Physical exam preparation ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 152)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (382, CAST(2 AS Decimal(18, 0)), N'Pass the physical exam ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 152)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (383, CAST(3 AS Decimal(18, 0)), N'Choose the MOS ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 152)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (384, CAST(4 AS Decimal(18, 0)), N'Take the oath of Enlistment ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 152)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (385, CAST(1 AS Decimal(18, 0)), N'Direct ship/Delayed Entry?', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 154)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (386, CAST(2 AS Decimal(18, 0)), N'What to expect in basic training ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 154)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (387, CAST(3 AS Decimal(18, 0)), N'Physical Fitness', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 154)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (388, CAST(4 AS Decimal(18, 0)), N'Packing List ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 154)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (389, CAST(1 AS Decimal(18, 0)), N'View the Basic Training Schedule', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 155)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (390, CAST(2 AS Decimal(18, 0)), N'Basic Training Videos', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 155)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (391, CAST(1 AS Decimal(18, 0)), N'Talk to your family.', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 156)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (392, CAST(2 AS Decimal(18, 0)), N'Talk to veterans.', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 156)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (393, CAST(1 AS Decimal(18, 0)), N'Read "Top 10 Things You Should Know..."', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 157)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (394, CAST(2 AS Decimal(18, 0)), N'Review these Resources', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 157)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (395, CAST(1 AS Decimal(18, 0)), N'Complete the following Questionaire', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 158)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (396, CAST(2 AS Decimal(18, 0)), N'Watch this video!', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 158)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (397, CAST(1 AS Decimal(18, 0)), N'Review qualifications', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 159)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (398, CAST(1 AS Decimal(18, 0)), N'Army Resources ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 160)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (399, CAST(2 AS Decimal(18, 0)), N'Air Force Resources ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 160)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (400, CAST(3 AS Decimal(18, 0)), N'Navy Resources ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 160)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (401, CAST(4 AS Decimal(18, 0)), N'Marines Resources ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 160)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (402, CAST(5 AS Decimal(18, 0)), N'Coast Guard Resources ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 160)
GO
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (403, CAST(1 AS Decimal(18, 0)), N'Review Qualifications', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 162)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (404, CAST(2 AS Decimal(18, 0)), N'Pay/Benefits', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 162)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (405, CAST(1 AS Decimal(18, 0)), N'Review Qualifications', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 163)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (406, CAST(2 AS Decimal(18, 0)), N'Pay/Benefits', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 163)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (407, CAST(3 AS Decimal(18, 0)), N'Available Programs', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 163)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (408, CAST(1 AS Decimal(18, 0)), N'Review Qualifications', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 164)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (409, CAST(2 AS Decimal(18, 0)), N'Pay/Benefits', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 164)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (410, CAST(3 AS Decimal(18, 0)), N'Available Programs', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 164)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (411, CAST(1 AS Decimal(18, 0)), N'Active Duty Army ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 165)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (412, CAST(2 AS Decimal(18, 0)), N'Army Reserve ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 165)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (413, CAST(3 AS Decimal(18, 0)), N'Army National Guard ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 165)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (414, CAST(1 AS Decimal(18, 0)), N'Gather required information and documents ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 166)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (415, CAST(2 AS Decimal(18, 0)), N'Questions to ask the recruiter ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 166)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (416, CAST(3 AS Decimal(18, 0)), N'Find local recruiter ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 166)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (417, CAST(4 AS Decimal(18, 0)), N'Meet your recruiter/submit application ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 166)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (418, CAST(1 AS Decimal(18, 0)), N'What is the ASVAB?', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 167)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (419, CAST(2 AS Decimal(18, 0)), N'ASVAB preparation tips ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 167)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (420, CAST(3 AS Decimal(18, 0)), N'ASVAB test design/layout ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 167)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (421, CAST(4 AS Decimal(18, 0)), N'ASVAB scores for specific careers ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 167)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (422, CAST(1 AS Decimal(18, 0)), N'Take the practice ASVAB test', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 168)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (423, CAST(2 AS Decimal(18, 0)), N'Ace the real ASVAB test ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 168)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (424, CAST(1 AS Decimal(18, 0)), N'Physical exam preparation ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 169)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (425, CAST(2 AS Decimal(18, 0)), N'Pass the physical exam ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 169)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (426, CAST(3 AS Decimal(18, 0)), N'Choose the MOS ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 169)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (427, CAST(4 AS Decimal(18, 0)), N'Take the oath of Enlistment ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 169)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (428, CAST(1 AS Decimal(18, 0)), N'Direct ship/Delayed Entry?', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 171)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (429, CAST(2 AS Decimal(18, 0)), N'What to expect in basic training ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 171)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (430, CAST(3 AS Decimal(18, 0)), N'Physical Fitness', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 171)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (431, CAST(4 AS Decimal(18, 0)), N'Packing List ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 171)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (432, CAST(1 AS Decimal(18, 0)), N'View the Basic Training Schedule', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 172)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (433, CAST(2 AS Decimal(18, 0)), N'Basic Training Videos', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 172)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (434, CAST(1 AS Decimal(18, 0)), N'Talk to your family.', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 173)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (435, CAST(2 AS Decimal(18, 0)), N'Talk to veterans.', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 173)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (436, CAST(1 AS Decimal(18, 0)), N'Read "Top 10 Things You Should Know..."', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 174)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (437, CAST(2 AS Decimal(18, 0)), N'Review these Resources', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 174)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (438, CAST(1 AS Decimal(18, 0)), N'Complete the following Questionaire', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 175)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (439, CAST(2 AS Decimal(18, 0)), N'Watch this video!', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 175)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (440, CAST(1 AS Decimal(18, 0)), N'Review qualifications', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 176)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (441, CAST(1 AS Decimal(18, 0)), N'Army Resources ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 177)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (442, CAST(2 AS Decimal(18, 0)), N'Air Force Resources ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 177)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (443, CAST(3 AS Decimal(18, 0)), N'Navy Resources ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 177)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (444, CAST(4 AS Decimal(18, 0)), N'Marines Resources ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 177)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (445, CAST(5 AS Decimal(18, 0)), N'Coast Guard Resources ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 177)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (446, CAST(1 AS Decimal(18, 0)), N'Review Qualifications', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 179)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (447, CAST(2 AS Decimal(18, 0)), N'Pay/Benefits', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 179)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (448, CAST(1 AS Decimal(18, 0)), N'Review Qualifications', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 180)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (449, CAST(2 AS Decimal(18, 0)), N'Pay/Benefits', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 180)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (450, CAST(3 AS Decimal(18, 0)), N'Available Programs', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 180)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (451, CAST(1 AS Decimal(18, 0)), N'Review Qualifications', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 181)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (452, CAST(2 AS Decimal(18, 0)), N'Pay/Benefits', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 181)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (453, CAST(3 AS Decimal(18, 0)), N'Available Programs', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 181)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (454, CAST(1 AS Decimal(18, 0)), N'Active Duty Army ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 182)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (455, CAST(2 AS Decimal(18, 0)), N'Army Reserve ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 182)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (456, CAST(3 AS Decimal(18, 0)), N'Army National Guard ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 182)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (457, CAST(1 AS Decimal(18, 0)), N'Gather required information and documents ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 183)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (458, CAST(2 AS Decimal(18, 0)), N'Questions to ask the recruiter ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 183)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (459, CAST(3 AS Decimal(18, 0)), N'Find local recruiter ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 183)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (460, CAST(4 AS Decimal(18, 0)), N'Meet your recruiter/submit application ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 183)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (461, CAST(1 AS Decimal(18, 0)), N'What is the ASVAB?', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 184)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (462, CAST(2 AS Decimal(18, 0)), N'ASVAB preparation tips ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 184)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (463, CAST(3 AS Decimal(18, 0)), N'ASVAB test design/layout ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 184)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (464, CAST(4 AS Decimal(18, 0)), N'ASVAB scores for specific careers ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 184)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (465, CAST(1 AS Decimal(18, 0)), N'Take the practice ASVAB test', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 185)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (466, CAST(2 AS Decimal(18, 0)), N'Ace the real ASVAB test ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 185)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (467, CAST(1 AS Decimal(18, 0)), N'Physical exam preparation ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 186)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (468, CAST(2 AS Decimal(18, 0)), N'Pass the physical exam ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 186)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (469, CAST(3 AS Decimal(18, 0)), N'Choose the MOS ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 186)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (470, CAST(4 AS Decimal(18, 0)), N'Take the oath of Enlistment ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 186)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (471, CAST(1 AS Decimal(18, 0)), N'Direct ship/Delayed Entry?', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 188)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (472, CAST(2 AS Decimal(18, 0)), N'What to expect in basic training ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 188)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (473, CAST(3 AS Decimal(18, 0)), N'Physical Fitness', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 188)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (474, CAST(4 AS Decimal(18, 0)), N'Packing List ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 188)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (475, CAST(1 AS Decimal(18, 0)), N'View the Basic Training Schedule', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 189)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (476, CAST(2 AS Decimal(18, 0)), N'Basic Training Videos', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 189)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (477, CAST(1 AS Decimal(18, 0)), N'Talk to your family.', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 190)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (478, CAST(2 AS Decimal(18, 0)), N'Talk to veterans.', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 190)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (479, CAST(1 AS Decimal(18, 0)), N'Read "Top 10 Things You Should Know..."', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 191)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (480, CAST(2 AS Decimal(18, 0)), N'Review these Resources', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 191)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (481, CAST(1 AS Decimal(18, 0)), N'Complete the following Questionaire', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 192)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (482, CAST(2 AS Decimal(18, 0)), N'Watch this video!', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 192)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (483, CAST(1 AS Decimal(18, 0)), N'Review qualifications', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 193)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (484, CAST(1 AS Decimal(18, 0)), N'Army Resources ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 194)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (485, CAST(2 AS Decimal(18, 0)), N'Air Force Resources ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 194)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (486, CAST(3 AS Decimal(18, 0)), N'Navy Resources ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 194)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (487, CAST(4 AS Decimal(18, 0)), N'Marines Resources ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 194)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (488, CAST(5 AS Decimal(18, 0)), N'Coast Guard Resources ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 194)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (489, CAST(1 AS Decimal(18, 0)), N'Review Qualifications', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 196)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (490, CAST(2 AS Decimal(18, 0)), N'Pay/Benefits', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 196)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (491, CAST(1 AS Decimal(18, 0)), N'Review Qualifications', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 197)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (492, CAST(2 AS Decimal(18, 0)), N'Pay/Benefits', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 197)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (493, CAST(3 AS Decimal(18, 0)), N'Available Programs', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 197)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (494, CAST(1 AS Decimal(18, 0)), N'Review Qualifications', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 198)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (495, CAST(2 AS Decimal(18, 0)), N'Pay/Benefits', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 198)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (496, CAST(3 AS Decimal(18, 0)), N'Available Programs', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 198)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (497, CAST(1 AS Decimal(18, 0)), N'Active Duty Army ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 199)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (498, CAST(2 AS Decimal(18, 0)), N'Army Reserve ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 199)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (499, CAST(3 AS Decimal(18, 0)), N'Army National Guard ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 199)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (500, CAST(1 AS Decimal(18, 0)), N'Gather required information and documents ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 200)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (501, CAST(2 AS Decimal(18, 0)), N'Questions to ask the recruiter ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 200)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (502, CAST(3 AS Decimal(18, 0)), N'Find local recruiter ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 200)
GO
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (503, CAST(4 AS Decimal(18, 0)), N'Meet your recruiter/submit application ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 200)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (504, CAST(1 AS Decimal(18, 0)), N'What is the ASVAB?', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 201)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (505, CAST(2 AS Decimal(18, 0)), N'ASVAB preparation tips ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 201)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (506, CAST(3 AS Decimal(18, 0)), N'ASVAB test design/layout ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 201)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (507, CAST(4 AS Decimal(18, 0)), N'ASVAB scores for specific careers ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 201)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (508, CAST(1 AS Decimal(18, 0)), N'Take the practice ASVAB test', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 202)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (509, CAST(2 AS Decimal(18, 0)), N'Ace the real ASVAB test ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 202)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (510, CAST(1 AS Decimal(18, 0)), N'Physical exam preparation ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 203)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (511, CAST(2 AS Decimal(18, 0)), N'Pass the physical exam ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 203)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (512, CAST(3 AS Decimal(18, 0)), N'Choose the MOS ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 203)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (513, CAST(4 AS Decimal(18, 0)), N'Take the oath of Enlistment ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 203)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (514, CAST(1 AS Decimal(18, 0)), N'Direct ship/Delayed Entry?', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 205)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (515, CAST(2 AS Decimal(18, 0)), N'What to expect in basic training ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 205)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (516, CAST(3 AS Decimal(18, 0)), N'Physical Fitness', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 205)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (517, CAST(4 AS Decimal(18, 0)), N'Packing List ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 205)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (518, CAST(1 AS Decimal(18, 0)), N'View the Basic Training Schedule', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 206)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (519, CAST(2 AS Decimal(18, 0)), N'Basic Training Videos', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 206)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (520, CAST(1 AS Decimal(18, 0)), N'Talk to your family.', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 207)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (521, CAST(2 AS Decimal(18, 0)), N'Talk to veterans.', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 207)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (522, CAST(1 AS Decimal(18, 0)), N'Read "Top 10 Things You Should Know..."', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 208)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (523, CAST(2 AS Decimal(18, 0)), N'Review these Resources', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 208)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (524, CAST(1 AS Decimal(18, 0)), N'Complete the following Questionaire', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 209)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (525, CAST(2 AS Decimal(18, 0)), N'Watch this video!', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 209)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (526, CAST(1 AS Decimal(18, 0)), N'Review qualifications', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 210)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (527, CAST(1 AS Decimal(18, 0)), N'Army Resources ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 211)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (528, CAST(2 AS Decimal(18, 0)), N'Air Force Resources ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 211)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (529, CAST(3 AS Decimal(18, 0)), N'Navy Resources ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 211)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (530, CAST(4 AS Decimal(18, 0)), N'Marines Resources ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 211)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (531, CAST(5 AS Decimal(18, 0)), N'Coast Guard Resources ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 211)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (532, CAST(1 AS Decimal(18, 0)), N'Review Qualifications', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 213)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (533, CAST(2 AS Decimal(18, 0)), N'Pay/Benefits', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 213)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (534, CAST(1 AS Decimal(18, 0)), N'Review Qualifications', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 214)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (535, CAST(2 AS Decimal(18, 0)), N'Pay/Benefits', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 214)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (536, CAST(3 AS Decimal(18, 0)), N'Available Programs', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 214)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (537, CAST(1 AS Decimal(18, 0)), N'Review Qualifications', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 215)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (538, CAST(2 AS Decimal(18, 0)), N'Pay/Benefits', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 215)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (539, CAST(3 AS Decimal(18, 0)), N'Available Programs', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 215)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (540, CAST(1 AS Decimal(18, 0)), N'Active Duty Army ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 216)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (541, CAST(2 AS Decimal(18, 0)), N'Army Reserve ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 216)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (542, CAST(3 AS Decimal(18, 0)), N'Army National Guard ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 216)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (543, CAST(1 AS Decimal(18, 0)), N'Gather required information and documents ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 217)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (544, CAST(2 AS Decimal(18, 0)), N'Questions to ask the recruiter ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 217)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (545, CAST(3 AS Decimal(18, 0)), N'Find local recruiter ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 217)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (546, CAST(4 AS Decimal(18, 0)), N'Meet your recruiter/submit application ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 217)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (547, CAST(1 AS Decimal(18, 0)), N'What is the ASVAB?', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 218)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (548, CAST(2 AS Decimal(18, 0)), N'ASVAB preparation tips ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 218)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (549, CAST(3 AS Decimal(18, 0)), N'ASVAB test design/layout ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 218)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (550, CAST(4 AS Decimal(18, 0)), N'ASVAB scores for specific careers ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 218)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (551, CAST(1 AS Decimal(18, 0)), N'Take the practice ASVAB test', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 219)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (552, CAST(2 AS Decimal(18, 0)), N'Ace the real ASVAB test ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 219)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (553, CAST(1 AS Decimal(18, 0)), N'Physical exam preparation ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 220)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (554, CAST(2 AS Decimal(18, 0)), N'Pass the physical exam ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 220)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (555, CAST(3 AS Decimal(18, 0)), N'Choose the MOS ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 220)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (556, CAST(4 AS Decimal(18, 0)), N'Take the oath of Enlistment ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 220)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (557, CAST(1 AS Decimal(18, 0)), N'Direct ship/Delayed Entry?', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 222)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (558, CAST(2 AS Decimal(18, 0)), N'What to expect in basic training ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 222)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (559, CAST(3 AS Decimal(18, 0)), N'Physical Fitness', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 222)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (560, CAST(4 AS Decimal(18, 0)), N'Packing List ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 222)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (561, CAST(1 AS Decimal(18, 0)), N'View the Basic Training Schedule', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 223)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (562, CAST(2 AS Decimal(18, 0)), N'Basic Training Videos', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 223)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (563, CAST(1 AS Decimal(18, 0)), N'Talk to your family.', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 224)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (564, CAST(2 AS Decimal(18, 0)), N'Talk to veterans.', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 224)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (565, CAST(1 AS Decimal(18, 0)), N'Read "Top 10 Things You Should Know..."', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 225)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (566, CAST(2 AS Decimal(18, 0)), N'Review these Resources', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 225)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (567, CAST(1 AS Decimal(18, 0)), N'Complete the following Questionaire', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 226)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (568, CAST(2 AS Decimal(18, 0)), N'Watch this video!', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 226)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (569, CAST(1 AS Decimal(18, 0)), N'Review qualifications', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 227)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (570, CAST(1 AS Decimal(18, 0)), N'Army Resources ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 228)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (571, CAST(2 AS Decimal(18, 0)), N'Air Force Resources ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 228)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (572, CAST(3 AS Decimal(18, 0)), N'Navy Resources ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 228)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (573, CAST(4 AS Decimal(18, 0)), N'Marines Resources ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 228)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (574, CAST(5 AS Decimal(18, 0)), N'Coast Guard Resources ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 228)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (575, CAST(1 AS Decimal(18, 0)), N'Review Qualifications', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 230)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (576, CAST(2 AS Decimal(18, 0)), N'Pay/Benefits', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 230)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (577, CAST(1 AS Decimal(18, 0)), N'Review Qualifications', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 231)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (578, CAST(2 AS Decimal(18, 0)), N'Pay/Benefits', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 231)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (579, CAST(3 AS Decimal(18, 0)), N'Available Programs', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 231)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (580, CAST(1 AS Decimal(18, 0)), N'Review Qualifications', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 232)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (581, CAST(2 AS Decimal(18, 0)), N'Pay/Benefits', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 232)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (582, CAST(3 AS Decimal(18, 0)), N'Available Programs', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 232)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (583, CAST(1 AS Decimal(18, 0)), N'Active Duty Army ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 233)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (584, CAST(2 AS Decimal(18, 0)), N'Army Reserve ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 233)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (585, CAST(3 AS Decimal(18, 0)), N'Army National Guard ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 233)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (586, CAST(1 AS Decimal(18, 0)), N'Gather required information and documents ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 234)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (587, CAST(2 AS Decimal(18, 0)), N'Questions to ask the recruiter ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 234)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (588, CAST(3 AS Decimal(18, 0)), N'Find local recruiter ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 234)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (589, CAST(4 AS Decimal(18, 0)), N'Meet your recruiter/submit application ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 234)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (590, CAST(1 AS Decimal(18, 0)), N'What is the ASVAB?', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 235)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (591, CAST(2 AS Decimal(18, 0)), N'ASVAB preparation tips ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 235)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (592, CAST(3 AS Decimal(18, 0)), N'ASVAB test design/layout ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 235)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (593, CAST(4 AS Decimal(18, 0)), N'ASVAB scores for specific careers ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 235)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (594, CAST(1 AS Decimal(18, 0)), N'Take the practice ASVAB test', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 236)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (595, CAST(2 AS Decimal(18, 0)), N'Ace the real ASVAB test ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 236)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (596, CAST(1 AS Decimal(18, 0)), N'Physical exam preparation ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 237)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (597, CAST(2 AS Decimal(18, 0)), N'Pass the physical exam ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 237)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (598, CAST(3 AS Decimal(18, 0)), N'Choose the MOS ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 237)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (599, CAST(4 AS Decimal(18, 0)), N'Take the oath of Enlistment ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 237)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (600, CAST(1 AS Decimal(18, 0)), N'Direct ship/Delayed Entry?', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 239)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (601, CAST(2 AS Decimal(18, 0)), N'What to expect in basic training ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 239)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (602, CAST(3 AS Decimal(18, 0)), N'Physical Fitness', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 239)
GO
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (603, CAST(4 AS Decimal(18, 0)), N'Packing List ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 239)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (604, CAST(1 AS Decimal(18, 0)), N'View the Basic Training Schedule', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 240)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (605, CAST(2 AS Decimal(18, 0)), N'Basic Training Videos', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 240)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (606, CAST(1 AS Decimal(18, 0)), N'Talk to your family.', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 241)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (607, CAST(2 AS Decimal(18, 0)), N'Talk to veterans.', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 241)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (608, CAST(1 AS Decimal(18, 0)), N'Read "Top 10 Things You Should Know..."', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 242)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (609, CAST(2 AS Decimal(18, 0)), N'Review these Resources', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 242)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (610, CAST(1 AS Decimal(18, 0)), N'Complete the following Questionaire', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 243)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (611, CAST(2 AS Decimal(18, 0)), N'Watch this video!', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 243)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (612, CAST(1 AS Decimal(18, 0)), N'Review qualifications', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 244)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (613, CAST(1 AS Decimal(18, 0)), N'Army Resources ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 245)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (614, CAST(2 AS Decimal(18, 0)), N'Air Force Resources ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 245)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (615, CAST(3 AS Decimal(18, 0)), N'Navy Resources ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 245)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (616, CAST(4 AS Decimal(18, 0)), N'Marines Resources ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 245)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (617, CAST(5 AS Decimal(18, 0)), N'Coast Guard Resources ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 245)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (618, CAST(1 AS Decimal(18, 0)), N'Review Qualifications', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 247)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (619, CAST(2 AS Decimal(18, 0)), N'Pay/Benefits', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 247)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (620, CAST(1 AS Decimal(18, 0)), N'Review Qualifications', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 248)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (621, CAST(2 AS Decimal(18, 0)), N'Pay/Benefits', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 248)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (622, CAST(3 AS Decimal(18, 0)), N'Available Programs', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 248)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (623, CAST(1 AS Decimal(18, 0)), N'Review Qualifications', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 249)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (624, CAST(2 AS Decimal(18, 0)), N'Pay/Benefits', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 249)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (625, CAST(3 AS Decimal(18, 0)), N'Available Programs', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 249)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (626, CAST(1 AS Decimal(18, 0)), N'Active Duty Army ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 250)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (627, CAST(2 AS Decimal(18, 0)), N'Army Reserve ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 250)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (628, CAST(3 AS Decimal(18, 0)), N'Army National Guard ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 250)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (629, CAST(1 AS Decimal(18, 0)), N'Gather required information and documents ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 251)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (630, CAST(2 AS Decimal(18, 0)), N'Questions to ask the recruiter ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 251)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (631, CAST(3 AS Decimal(18, 0)), N'Find local recruiter ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 251)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (632, CAST(4 AS Decimal(18, 0)), N'Meet your recruiter/submit application ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 251)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (633, CAST(1 AS Decimal(18, 0)), N'What is the ASVAB?', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 252)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (634, CAST(2 AS Decimal(18, 0)), N'ASVAB preparation tips ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 252)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (635, CAST(3 AS Decimal(18, 0)), N'ASVAB test design/layout ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 252)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (636, CAST(4 AS Decimal(18, 0)), N'ASVAB scores for specific careers ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 252)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (637, CAST(1 AS Decimal(18, 0)), N'Take the practice ASVAB test', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 253)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (638, CAST(2 AS Decimal(18, 0)), N'Ace the real ASVAB test ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 253)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (639, CAST(1 AS Decimal(18, 0)), N'Physical exam preparation ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 254)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (640, CAST(2 AS Decimal(18, 0)), N'Pass the physical exam ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 254)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (641, CAST(3 AS Decimal(18, 0)), N'Choose the MOS ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 254)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (642, CAST(4 AS Decimal(18, 0)), N'Take the oath of Enlistment ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 254)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (643, CAST(1 AS Decimal(18, 0)), N'Direct ship/Delayed Entry?', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 256)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (644, CAST(2 AS Decimal(18, 0)), N'What to expect in basic training ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 256)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (645, CAST(3 AS Decimal(18, 0)), N'Physical Fitness', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 256)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (646, CAST(4 AS Decimal(18, 0)), N'Packing List ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 256)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (647, CAST(1 AS Decimal(18, 0)), N'View the Basic Training Schedule', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 257)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (648, CAST(2 AS Decimal(18, 0)), N'Basic Training Videos', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 257)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (649, CAST(1 AS Decimal(18, 0)), N'Talk to your family.', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 258)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (650, CAST(2 AS Decimal(18, 0)), N'Talk to veterans.', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 258)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (651, CAST(1 AS Decimal(18, 0)), N'Read "Top 10 Things You Should Know..."', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 259)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (652, CAST(2 AS Decimal(18, 0)), N'Review these Resources', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 259)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (653, CAST(1 AS Decimal(18, 0)), N'Complete the following Questionaire', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 260)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (654, CAST(2 AS Decimal(18, 0)), N'Watch this video!', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 260)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (655, CAST(1 AS Decimal(18, 0)), N'Review qualifications', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 261)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (656, CAST(1 AS Decimal(18, 0)), N'Army Resources ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 262)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (657, CAST(2 AS Decimal(18, 0)), N'Air Force Resources ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 262)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (658, CAST(3 AS Decimal(18, 0)), N'Navy Resources ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 262)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (659, CAST(4 AS Decimal(18, 0)), N'Marines Resources ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 262)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (660, CAST(5 AS Decimal(18, 0)), N'Coast Guard Resources ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 262)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (661, CAST(1 AS Decimal(18, 0)), N'Review Qualifications', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 264)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (662, CAST(2 AS Decimal(18, 0)), N'Pay/Benefits', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 264)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (663, CAST(1 AS Decimal(18, 0)), N'Review Qualifications', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 265)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (664, CAST(2 AS Decimal(18, 0)), N'Pay/Benefits', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 265)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (665, CAST(3 AS Decimal(18, 0)), N'Available Programs', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 265)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (666, CAST(1 AS Decimal(18, 0)), N'Review Qualifications', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 266)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (667, CAST(2 AS Decimal(18, 0)), N'Pay/Benefits', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 266)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (668, CAST(3 AS Decimal(18, 0)), N'Available Programs', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 266)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (669, CAST(1 AS Decimal(18, 0)), N'Active Duty Army ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 267)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (670, CAST(2 AS Decimal(18, 0)), N'Army Reserve ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 267)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (671, CAST(3 AS Decimal(18, 0)), N'Army National Guard ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 267)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (672, CAST(1 AS Decimal(18, 0)), N'Gather required information and documents ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 268)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (673, CAST(2 AS Decimal(18, 0)), N'Questions to ask the recruiter ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 268)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (674, CAST(3 AS Decimal(18, 0)), N'Find local recruiter ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 268)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (675, CAST(4 AS Decimal(18, 0)), N'Meet your recruiter/submit application ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 268)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (676, CAST(1 AS Decimal(18, 0)), N'What is the ASVAB?', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 269)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (677, CAST(2 AS Decimal(18, 0)), N'ASVAB preparation tips ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 269)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (678, CAST(3 AS Decimal(18, 0)), N'ASVAB test design/layout ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 269)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (679, CAST(4 AS Decimal(18, 0)), N'ASVAB scores for specific careers ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 269)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (680, CAST(1 AS Decimal(18, 0)), N'Take the practice ASVAB test', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 270)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (681, CAST(2 AS Decimal(18, 0)), N'Ace the real ASVAB test ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 270)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (682, CAST(1 AS Decimal(18, 0)), N'Physical exam preparation ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 271)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (683, CAST(2 AS Decimal(18, 0)), N'Pass the physical exam ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 271)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (684, CAST(3 AS Decimal(18, 0)), N'Choose the MOS ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 271)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (685, CAST(4 AS Decimal(18, 0)), N'Take the oath of Enlistment ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 271)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (686, CAST(1 AS Decimal(18, 0)), N'Direct ship/Delayed Entry?', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 273)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (687, CAST(2 AS Decimal(18, 0)), N'What to expect in basic training ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 273)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (688, CAST(3 AS Decimal(18, 0)), N'Physical Fitness', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 273)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (689, CAST(4 AS Decimal(18, 0)), N'Packing List ', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 273)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (690, CAST(1 AS Decimal(18, 0)), N'View the Basic Training Schedule', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 274)
INSERT [dbo].[Substep] ([SubstepID], [Number], [Name], [DueDate], [IsDone], [Notes], [Points], [HeadstepID]) VALUES (691, CAST(2 AS Decimal(18, 0)), N'Basic Training Videos', NULL, 0, NULL, CAST(2 AS Decimal(18, 0)), 274)
SET IDENTITY_INSERT [dbo].[Substep] OFF
SET ANSI_PADDING ON

GO
/****** Object:  Index [RoleNameIndex]    Script Date: 6/19/2017 8:59:23 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 6/19/2017 8:59:23 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 6/19/2017 8:59:23 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_RoleId]    Script Date: 6/19/2017 8:59:23 PM ******/
CREATE NONCLUSTERED INDEX [IX_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 6/19/2017 8:59:23 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserRoles]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UserNameIndex]    Script Date: 6/19/2017 8:59:23 PM ******/
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
