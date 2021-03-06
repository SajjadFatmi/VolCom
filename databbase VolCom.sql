USE [master]
GO
/****** Object:  Database [VolCom]    Script Date: 11/20/2019 12:20:23 PM ******/
CREATE DATABASE [VolCom]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'VolCom', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\VolCom.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'VolCom_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\VolCom_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [VolCom] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [VolCom].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [VolCom] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [VolCom] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [VolCom] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [VolCom] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [VolCom] SET ARITHABORT OFF 
GO
ALTER DATABASE [VolCom] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [VolCom] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [VolCom] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [VolCom] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [VolCom] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [VolCom] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [VolCom] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [VolCom] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [VolCom] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [VolCom] SET  DISABLE_BROKER 
GO
ALTER DATABASE [VolCom] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [VolCom] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [VolCom] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [VolCom] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [VolCom] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [VolCom] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [VolCom] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [VolCom] SET RECOVERY FULL 
GO
ALTER DATABASE [VolCom] SET  MULTI_USER 
GO
ALTER DATABASE [VolCom] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [VolCom] SET DB_CHAINING OFF 
GO
ALTER DATABASE [VolCom] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [VolCom] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [VolCom] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'VolCom', N'ON'
GO
USE [VolCom]
GO
/****** Object:  Table [dbo].[Event]    Script Date: 11/20/2019 12:20:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Event](
	[PK_Event] [int] NULL,
	[CreatedBy] [nchar](10) NULL,
	[Name] [nchar](10) NULL,
	[Description] [nchar](10) NULL,
	[EndTime] [nchar](10) NULL,
	[FK_EventType] [nchar](10) NULL,
	[Host] [nchar](10) NULL,
	[FK_Picture] [nchar](10) NULL,
	[StartTime] [nchar](10) NULL,
	[TagLine] [nchar](10) NULL,
	[UpdateTime] [nchar](10) NULL,
	[FK_Location] [nchar](10) NULL,
	[FK_RSVP] [nchar](10) NULL,
	[FK_Rating] [nchar](10) NULL,
	[RateComments] [nchar](10) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EventType]    Script Date: 11/20/2019 12:20:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EventType](
	[PK_EventType] [int] NULL,
	[Title] [nchar](10) NULL,
	[Description] [nchar](10) NULL,
	[IsActive] [nchar](10) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Issue]    Script Date: 11/20/2019 12:20:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Issue](
	[PK_Issue] [int] NULL,
	[Title] [nchar](10) NULL,
	[Description] [nchar](10) NULL,
	[Location] [nchar](10) NULL,
	[MapID] [nchar](10) NULL,
	[PreRequistes] [nchar](10) NULL,
	[IsDonationOn] [nchar](10) NULL,
	[IsActive] [nchar](10) NULL,
	[UpdateTime] [nchar](10) NULL,
	[FK_Picture] [nchar](10) NULL,
	[FK_Video] [nchar](10) NULL,
	[FK_ReferenceURL] [nchar](10) NULL,
	[CreatedBy] [nchar](10) NULL,
	[IsApproved] [nchar](10) NULL,
	[Category] [nchar](10) NULL,
	[IsProtest] [nchar](10) NULL,
	[Status] [nchar](10) NULL,
	[ExpiryDate] [nchar](10) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[IssueCategory]    Script Date: 11/20/2019 12:20:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IssueCategory](
	[PK_IssueCategory] [int] NOT NULL,
	[Title] [nchar](10) NULL,
	[Description] [nchar](10) NULL,
	[UpdateTime] [nchar](10) NULL,
	[IsActive] [nchar](10) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[IssueStatus]    Script Date: 11/20/2019 12:20:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IssueStatus](
	[PK_IssueStatus] [int] NULL,
	[Title] [nchar](10) NULL,
	[Description] [nchar](10) NULL,
	[IsActive] [nchar](10) NULL,
	[UpdateTime] [datetime] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Location]    Script Date: 11/20/2019 12:20:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Location](
	[PK_Location] [int] NOT NULL,
	[City] [nchar](10) NULL,
	[Country] [nchar](10) NULL,
	[Town] [nchar](10) NULL,
	[UpdateTime] [datetime] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Membership]    Script Date: 11/20/2019 12:20:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Membership](
	[PK_Membership] [int] NULL,
	[FK_UserProfile] [int] NULL,
	[FK_MembershipType] [int] NULL,
	[UpdateTime] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MembershipTypes]    Script Date: 11/20/2019 12:20:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MembershipTypes](
	[PK_MembershipType] [int] NULL,
	[Types] [nchar](10) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Picture]    Script Date: 11/20/2019 12:20:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Picture](
	[PK_Picture] [int] NULL,
	[Data] [nchar](10) NULL,
	[Type] [nchar](10) NULL,
	[UpdateTime] [datetime] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Rating]    Script Date: 11/20/2019 12:20:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rating](
	[PK_Rating] [int] NULL,
	[FK_RatingType] [nchar](10) NULL,
	[Title] [nchar](10) NULL,
	[Details] [nchar](10) NULL,
	[UpdateTime] [nchar](10) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TeamProfile]    Script Date: 11/20/2019 12:20:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TeamProfile](
	[PK_TeamProfile] [int] NOT NULL,
	[Name] [nchar](10) NOT NULL,
	[MaxMemberCount] [int] NULL,
	[Picture] [nchar](10) NULL,
	[UpdateTime] [datetime] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TeamRelation]    Script Date: 11/20/2019 12:20:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TeamRelation](
	[PK_TeamRelation] [int] NOT NULL,
	[FK_UserProfile] [int] NULL,
	[FK_TeamProfile] [int] NULL,
	[UpdateTime] [datetime] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserAccount]    Script Date: 11/20/2019 12:20:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserAccount](
	[PK_UserAccount] [int] NOT NULL,
	[FK_UserProfile] [int] NOT NULL,
	[Acount] [nchar](10) NULL,
	[Status] [nchar](10) NULL,
	[Password] [nchar](10) NULL,
	[UpdateTime] [datetime] NULL,
	[LateLogin] [datetime] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserAppRelation]    Script Date: 11/20/2019 12:20:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserAppRelation](
	[PK_App] [int] NOT NULL,
	[CurrentVersion] [nchar](10) NULL,
	[Title] [nchar](10) NULL,
	[Description] [nchar](10) NULL,
	[UpdateTime] [nchar](10) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserProfile]    Script Date: 11/20/2019 12:20:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserProfile](
	[AboutMe] [nchar](10) NULL,
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[Picure] [nchar](10) NULL,
	[FirstName] [nchar](10) NULL,
	[LastName] [nchar](10) NULL,
	[Activities] [nchar](10) NULL,
	[Created] [datetime] NULL,
	[Updated] [datetime] NULL,
	[Phone] [nchar](10) NOT NULL,
	[Email] [nchar](10) NULL,
	[FacebookID] [nchar](10) NULL,
	[CurrentStatus] [nchar](10) NULL,
	[HomeTownLocation] [nchar](10) NULL,
	[Gender] [nchar](10) NULL,
	[Interest] [nchar](10) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserStatus]    Script Date: 11/20/2019 12:20:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserStatus](
	[PK_StatusID] [int] IDENTITY(1,1) NOT NULL,
	[Status] [nchar](10) NULL,
	[UpdateTime] [datetime] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Video]    Script Date: 11/20/2019 12:20:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Video](
	[PK_Video] [int] NULL,
	[Data] [nchar](10) NULL,
	[Type] [nchar](10) NULL,
	[UpdateTime] [datetime] NULL
) ON [PRIMARY]

GO
/****** Object:  StoredProcedure [dbo].[AddEvent]    Script Date: 11/20/2019 12:20:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[AddEvent]
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    select * from UserProfile
END

GO
/****** Object:  StoredProcedure [dbo].[AddIssue]    Script Date: 11/20/2019 12:20:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[AddIssue]
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    select * from UserProfile
END

GO
/****** Object:  StoredProcedure [dbo].[AssignTeam]    Script Date: 11/20/2019 12:20:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[AssignTeam]
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    select * from UserProfile
END

GO
/****** Object:  StoredProcedure [dbo].[Authenticate]    Script Date: 11/20/2019 12:20:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Authenticate]
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    select * from UserProfile
END

GO
/****** Object:  StoredProcedure [dbo].[GetLookups]    Script Date: 11/20/2019 12:20:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetLookups]
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    select * from UserProfile
END

GO
/****** Object:  StoredProcedure [dbo].[GetTeams]    Script Date: 11/20/2019 12:20:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetTeams]
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    select * from UserProfile
END

GO
/****** Object:  StoredProcedure [dbo].[GiveRating]    Script Date: 11/20/2019 12:20:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GiveRating]
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    select * from UserProfile
END

GO
/****** Object:  StoredProcedure [dbo].[LoginUser]    Script Date: 11/20/2019 12:20:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[LoginUser]
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    select * from UserProfile
END

GO
/****** Object:  StoredProcedure [dbo].[Logout]    Script Date: 11/20/2019 12:20:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Logout]
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    select * from UserProfile
END

GO
/****** Object:  StoredProcedure [dbo].[Search]    Script Date: 11/20/2019 12:20:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Search]
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    select * from UserProfile
END

GO
USE [master]
GO
ALTER DATABASE [VolCom] SET  READ_WRITE 
GO
