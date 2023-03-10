USE [master]
GO
/****** Object:  Database [Stage]    Script Date: 12/25/2022 11:51:07 PM ******/
CREATE DATABASE [Stage]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Stage', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.CUONGPHAM\MSSQL\DATA\Stage.mdf' , SIZE = 729088KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Stage_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.CUONGPHAM\MSSQL\DATA\Stage_log.ldf' , SIZE = 598016KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Stage] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Stage].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Stage] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Stage] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Stage] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Stage] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Stage] SET ARITHABORT OFF 
GO
ALTER DATABASE [Stage] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Stage] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Stage] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Stage] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Stage] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Stage] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Stage] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Stage] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Stage] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Stage] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Stage] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Stage] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Stage] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Stage] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Stage] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Stage] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Stage] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Stage] SET RECOVERY FULL 
GO
ALTER DATABASE [Stage] SET  MULTI_USER 
GO
ALTER DATABASE [Stage] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Stage] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Stage] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Stage] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Stage] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Stage] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Stage', N'ON'
GO
ALTER DATABASE [Stage] SET QUERY_STORE = OFF
GO
USE [Stage]
GO
/****** Object:  Table [dbo].[Canada_Case_Report_Stage]    Script Date: 12/25/2022 11:51:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Canada_Case_Report_Stage](
	[CaseID] [int] IDENTITY(30000,1) NOT NULL,
	[Phu_ID] [nvarchar](250) NULL,
	[Date_reported] [varchar](50) NULL,
	[trangthai] [varchar](50) NULL,
	[gender] [varchar](50) NULL,
	[Age_group] [varchar](50) NULL,
	[Province] [varchar](50) NULL,
 CONSTRAINT [PK__Canada_C__6CAE526C85A744D7] PRIMARY KEY CLUSTERED 
(
	[CaseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Canada_Error_Insert]    Script Date: 12/25/2022 11:51:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Canada_Error_Insert](
	[row_id] [varchar](50) NULL,
	[date_reported] [varchar](50) NULL,
	[health_region] [varchar](255) NULL,
	[age_group] [varchar](50) NULL,
	[gender] [varchar](50) NULL,
	[exposure] [varchar](50) NULL,
	[case_status] [varchar](50) NULL,
	[province] [varchar](50) NULL,
	[ObjectId] [varchar](50) NULL,
	[ErrorCode] [int] NULL,
	[ErrorColumn] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Data_Error]    Script Date: 12/25/2022 11:51:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Data_Error](
	[row_id] [varchar](50) NULL,
	[date_reported] [varchar](50) NULL,
	[health_region] [varchar](255) NULL,
	[age_group] [varchar](50) NULL,
	[gender] [varchar](50) NULL,
	[exposure] [varchar](50) NULL,
	[case_status] [varchar](50) NULL,
	[province] [varchar](50) NULL,
	[ObjectId] [varchar](50) NULL,
	[ErrorCode] [int] NULL,
	[ErrorColumn] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OLE DB Destination 1]    Script Date: 12/25/2022 11:51:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OLE DB Destination 1](
	[row_id] [varchar](50) NULL,
	[date_reported] [varchar](50) NULL,
	[health_region] [nvarchar](255) NULL,
	[age_group] [varchar](50) NULL,
	[gender] [varchar](50) NULL,
	[exposure] [varchar](50) NULL,
	[case_status] [varchar](50) NULL,
	[province] [varchar](50) NULL,
	[ObjectId] [varchar](50) NULL,
	[ErrorCode] [int] NULL,
	[ErrorColumn] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ontario_Case_Report_Stage]    Script Date: 12/25/2022 11:51:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ontario_Case_Report_Stage](
	[CaseID] [int] IDENTITY(1,1) NOT NULL,
	[Phu_Name] [varchar](250) NULL,
	[Date_reported] [date] NULL,
	[trangthai] [varchar](10) NULL,
	[gender] [varchar](10) NULL,
	[Age_group] [varchar](50) NULL,
	[Province] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[CaseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OutBreak_Stage]    Script Date: 12/25/2022 11:51:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OutBreak_Stage](
	[OutBreakID] [int] IDENTITY(1,1) NOT NULL,
	[Date_Reported] [date] NULL,
	[Out_break_group] [varchar](10) NULL,
	[Phu_Num] [varchar](10) NULL,
	[Number_Ongoing_outbreaks] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[OutBreakID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Phu_Group_Stage]    Script Date: 12/25/2022 11:51:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Phu_Group_Stage](
	[PhuGroupID] [int] IDENTITY(1,1) NOT NULL,
	[PhuGroupName] [varchar](50) NULL,
	[PhuCity] [varchar](50) NULL,
	[PhuRegion] [nvarchar](250) NULL,
 CONSTRAINT [PK__Phu_Grou__2611C18CA0074AD3] PRIMARY KEY CLUSTERED 
(
	[PhuGroupID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PHU_Stage]    Script Date: 12/25/2022 11:51:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHU_Stage](
	[PhuID] [int] NOT NULL,
	[PhuName] [nvarchar](250) NULL,
	[City] [varchar](100) NULL,
	[Address] [varchar](100) NULL,
	[PostCode] [varchar](40) NULL,
	[Website] [varchar](100) NULL,
	[latitude] [varchar](30) NULL,
	[longitude] [varchar](30) NULL,
 CONSTRAINT [PK__PHU_Stag__5AF51DB6800F8154] PRIMARY KEY CLUSTERED 
(
	[PhuID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vacxin_by_age_Stage]    Script Date: 12/25/2022 11:51:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vacxin_by_age_Stage](
	[VxID] [int] IDENTITY(1,1) NOT NULL,
	[DateReported] [date] NULL,
	[PhuID] [varchar](10) NULL,
	[At_least_one_dose_cumulative] [int] NULL,
	[Second_dose_cumulative] [int] NULL,
	[fully_vaccinated_cumulative] [int] NULL,
	[third_dose_cumulative] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[VxID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Ontario_Case_Report_Stage] ADD  DEFAULT ('Ontario') FOR [Province]
GO
USE [master]
GO
ALTER DATABASE [Stage] SET  READ_WRITE 
GO
