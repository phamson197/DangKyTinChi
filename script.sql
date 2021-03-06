USE [master]
GO
/****** Object:  Database [DangKyTinChi]    Script Date: 5/15/2018 11:57:20 PM ******/
CREATE DATABASE [DangKyTinChi]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DangKyTinChi', FILENAME = N'E:\SQLServerMS\MSSQL13.SQLEXPRESS\MSSQL\DATA\DangKyTinChi.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DangKyTinChi_log', FILENAME = N'E:\SQLServerMS\MSSQL13.SQLEXPRESS\MSSQL\DATA\DangKyTinChi_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [DangKyTinChi] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DangKyTinChi].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DangKyTinChi] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DangKyTinChi] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DangKyTinChi] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DangKyTinChi] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DangKyTinChi] SET ARITHABORT OFF 
GO
ALTER DATABASE [DangKyTinChi] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [DangKyTinChi] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DangKyTinChi] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DangKyTinChi] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DangKyTinChi] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DangKyTinChi] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DangKyTinChi] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DangKyTinChi] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DangKyTinChi] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DangKyTinChi] SET  ENABLE_BROKER 
GO
ALTER DATABASE [DangKyTinChi] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DangKyTinChi] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DangKyTinChi] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DangKyTinChi] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DangKyTinChi] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DangKyTinChi] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DangKyTinChi] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DangKyTinChi] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DangKyTinChi] SET  MULTI_USER 
GO
ALTER DATABASE [DangKyTinChi] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DangKyTinChi] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DangKyTinChi] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DangKyTinChi] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DangKyTinChi] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DangKyTinChi] SET QUERY_STORE = OFF
GO
USE [DangKyTinChi]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [DangKyTinChi]
GO
/****** Object:  Table [dbo].[building]    Script Date: 5/15/2018 11:57:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[building](
	[code] [varchar](10) NOT NULL,
	[name] [nvarchar](20) NULL,
	[campusareacode] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[campusarea]    Script Date: 5/15/2018 11:57:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[campusarea](
	[code] [varchar](10) NOT NULL,
	[name] [nvarchar](20) NULL,
	[location] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[class]    Script Date: 5/15/2018 11:57:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[class](
	[classcode] [varchar](10) NOT NULL,
	[classname] [nvarchar](50) NOT NULL,
	[facultycode] [varchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[classcode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[course]    Script Date: 5/15/2018 11:57:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[course](
	[code] [varchar](10) NOT NULL,
	[codeview] [varchar](10) NULL,
	[subjectcode] [varchar](10) NULL,
	[semestercode] [varchar](10) NULL,
	[year] [int] NULL,
	[maxstudent] [int] NULL,
	[signedstudent] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[courseschedule]    Script Date: 5/15/2018 11:57:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[courseschedule](
	[code] [varchar](10) NOT NULL,
	[coursecode] [varchar](10) NULL,
	[coursetimecode] [varchar](10) NULL,
	[roomcode] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[coursetime]    Script Date: 5/15/2018 11:57:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[coursetime](
	[code] [varchar](10) NOT NULL,
	[timestart] [int] NULL,
	[timeend] [int] NULL,
	[dayinweek] [nvarchar](10) NULL,
	[codeview] [nvarchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[detailsubjecteducationprogram]    Script Date: 5/15/2018 11:57:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[detailsubjecteducationprogram](
	[educationprogramcode] [varchar](10) NOT NULL,
	[subjectcode] [varchar](10) NOT NULL,
	[term] [int] NULL,
	[type] [bit] NULL,
	[numbericalorder] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[educationprogramcode] ASC,
	[subjectcode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[educationprogram]    Script Date: 5/15/2018 11:57:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[educationprogram](
	[code] [varchar](10) NOT NULL,
	[name] [nvarchar](50) NULL,
	[majorcode] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[faculty]    Script Date: 5/15/2018 11:57:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[faculty](
	[facultycode] [varchar](10) NOT NULL,
	[facultyname] [nvarchar](50) NOT NULL,
	[amount] [int] NULL,
	[adress] [nvarchar](100) NULL,
	[phone] [char](15) NULL,
	[codebossfaculty] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[facultycode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[major]    Script Date: 5/15/2018 11:57:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[major](
	[code] [varchar](10) NOT NULL,
	[name] [nvarchar](50) NULL,
	[facilitycode] [varchar](10) NOT NULL,
	[levelcode] [varchar](10) NULL,
 CONSTRAINT [PK__major__357D4CF8F072D631] PRIMARY KEY CLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[mark]    Script Date: 5/15/2018 11:57:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[mark](
	[code] [varchar](10) NOT NULL,
	[studentcode] [varchar](10) NULL,
	[coursecode] [varchar](10) NULL,
	[attentdancepoint] [varchar](10) NULL,
	[midtermpoint] [varchar](10) NULL,
	[endingpoint] [varchar](10) NULL,
	[tenpoint] [float] NULL,
	[fourpoint] [float] NULL,
	[wordpoint] [varchar](10) NULL,
	[average] [float] NULL,
	[numbered] [varchar](10) NULL,
	[dateupdate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[previoussubject]    Script Date: 5/15/2018 11:57:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[previoussubject](
	[code] [varchar](10) NOT NULL,
	[previouscode] [varchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[code] ASC,
	[previouscode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[register]    Script Date: 5/15/2018 11:57:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[register](
	[studentcode] [varchar](10) NOT NULL,
	[courseclasscode] [varchar](10) NOT NULL,
	[price] [int] NULL,
	[issuccess] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[studentcode] ASC,
	[courseclasscode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[result]    Script Date: 5/15/2018 11:57:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[result](
	[resultcode] [varchar](10) NOT NULL,
	[average] [decimal](18, 3) NULL,
	[academicstrength] [nvarchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[resultcode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[room]    Script Date: 5/15/2018 11:57:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[room](
	[code] [varchar](10) NOT NULL,
	[buildingcode] [varchar](10) NULL,
	[floor] [int] NULL,
	[codeview] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[semester]    Script Date: 5/15/2018 11:57:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[semester](
	[semestercode] [varchar](10) NOT NULL,
	[namesemester] [varchar](10) NULL,
	[schoolyear] [varchar](10) NULL,
	[pricepercredit] [float] NULL,
	[typesemester] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[semestercode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[student]    Script Date: 5/15/2018 11:57:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[student](
	[code] [varchar](10) NOT NULL,
	[filecode] [varchar](50) NULL,
	[lastname] [nvarchar](30) NULL,
	[firstname] [nvarchar](30) NULL,
	[sex] [bit] NULL,
	[placeofbirth] [nvarchar](255) NULL,
	[pernamenaddress] [nvarchar](255) NULL,
	[nation] [nvarchar](50) NULL,
	[nationality] [nvarchar](50) NULL,
	[religion] [nvarchar](50) NULL,
	[email] [nvarchar](50) NULL,
	[phone] [nvarchar](50) NULL,
	[idcardnumber] [varchar](12) NULL,
	[note] [nvarchar](50) NULL,
	[classcode] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[subjects]    Script Date: 5/15/2018 11:57:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[subjects](
	[code] [varchar](10) NOT NULL,
	[name] [nvarchar](100) NULL,
	[numbercredit] [int] NULL,
	[theory] [int] NULL,
	[task] [int] NULL,
	[pratice] [int] NULL,
	[discussion] [int] NULL,
	[totalsession] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLogin]    Script Date: 5/15/2018 11:57:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLogin](
	[id] [int] NOT NULL,
	[username] [varchar](20) NOT NULL,
	[passwords] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[teachercourse]    Script Date: 5/15/2018 11:57:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[teachercourse](
	[teachercode] [varchar](10) NOT NULL,
	[coursecode] [varchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[teachercode] ASC,
	[coursecode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[building] ([code], [name], [campusareacode]) VALUES (N'H5', NULL, N'A')
INSERT [dbo].[building] ([code], [name], [campusareacode]) VALUES (N'H9', NULL, N'A')
INSERT [dbo].[building] ([code], [name], [campusareacode]) VALUES (N'S1', NULL, N'B')
INSERT [dbo].[campusarea] ([code], [name], [location]) VALUES (N'A', N'Khu A', N'Hoang Quoc Viet')
INSERT [dbo].[campusarea] ([code], [name], [location]) VALUES (N'B', N'Khu B', N'Xuan Phuong')
INSERT [dbo].[class] ([classcode], [classname], [facultycode]) VALUES (N'CNTT14', N'Công nghê thông tin 14', N'CNTT')
INSERT [dbo].[course] ([code], [codeview], [subjectcode], [semestercode], [year], [maxstudent], [signedstudent]) VALUES (N'06103151 1', NULL, N'06103151', N'1', NULL, NULL, NULL)
INSERT [dbo].[course] ([code], [codeview], [subjectcode], [semestercode], [year], [maxstudent], [signedstudent]) VALUES (N'12100151 1', NULL, N'12100151', N'1', NULL, NULL, NULL)
INSERT [dbo].[course] ([code], [codeview], [subjectcode], [semestercode], [year], [maxstudent], [signedstudent]) VALUES (N'12101151 1', NULL, N'12101151', N'1', NULL, NULL, NULL)
INSERT [dbo].[course] ([code], [codeview], [subjectcode], [semestercode], [year], [maxstudent], [signedstudent]) VALUES (N'12500151 1', NULL, N'12500151', N'1', NULL, NULL, NULL)
INSERT [dbo].[course] ([code], [codeview], [subjectcode], [semestercode], [year], [maxstudent], [signedstudent]) VALUES (N'51101151 1', NULL, N'51101151', N'1', NULL, NULL, NULL)
INSERT [dbo].[courseschedule] ([code], [coursecode], [coursetimecode], [roomcode]) VALUES (N'0', N'12100151 1', NULL, N'H9201')
INSERT [dbo].[courseschedule] ([code], [coursecode], [coursetimecode], [roomcode]) VALUES (N'1', N'12101151 1', NULL, N'H9202')
INSERT [dbo].[courseschedule] ([code], [coursecode], [coursetimecode], [roomcode]) VALUES (N'2', N'12500151 1', NULL, N'H9203')
INSERT [dbo].[courseschedule] ([code], [coursecode], [coursetimecode], [roomcode]) VALUES (N'3', N'51101151 1', NULL, N'H9204')
INSERT [dbo].[courseschedule] ([code], [coursecode], [coursetimecode], [roomcode]) VALUES (N'4', N'06103151 1', NULL, N'H5302')
INSERT [dbo].[detailsubjecteducationprogram] ([educationprogramcode], [subjectcode], [term], [type], [numbericalorder]) VALUES (N'CNTT', N'06103151', 1, 1, NULL)
INSERT [dbo].[detailsubjecteducationprogram] ([educationprogramcode], [subjectcode], [term], [type], [numbericalorder]) VALUES (N'CNTT', N'06104151', 1, 1, NULL)
INSERT [dbo].[detailsubjecteducationprogram] ([educationprogramcode], [subjectcode], [term], [type], [numbericalorder]) VALUES (N'CNTT', N'06204151', 1, 1, NULL)
INSERT [dbo].[detailsubjecteducationprogram] ([educationprogramcode], [subjectcode], [term], [type], [numbericalorder]) VALUES (N'CNTT', N'06303151', 1, 1, NULL)
INSERT [dbo].[detailsubjecteducationprogram] ([educationprogramcode], [subjectcode], [term], [type], [numbericalorder]) VALUES (N'CNTT', N'06401151', 2, 1, NULL)
INSERT [dbo].[detailsubjecteducationprogram] ([educationprogramcode], [subjectcode], [term], [type], [numbericalorder]) VALUES (N'CNTT', N'11101151', 2, 1, NULL)
INSERT [dbo].[detailsubjecteducationprogram] ([educationprogramcode], [subjectcode], [term], [type], [numbericalorder]) VALUES (N'CNTT', N'11102151', 2, 1, NULL)
INSERT [dbo].[detailsubjecteducationprogram] ([educationprogramcode], [subjectcode], [term], [type], [numbericalorder]) VALUES (N'CNTT', N'11103151', 3, 1, NULL)
INSERT [dbo].[detailsubjecteducationprogram] ([educationprogramcode], [subjectcode], [term], [type], [numbericalorder]) VALUES (N'CNTT', N'11104151', 3, 1, NULL)
INSERT [dbo].[detailsubjecteducationprogram] ([educationprogramcode], [subjectcode], [term], [type], [numbericalorder]) VALUES (N'CNTT', N'11201151', 3, 1, NULL)
INSERT [dbo].[detailsubjecteducationprogram] ([educationprogramcode], [subjectcode], [term], [type], [numbericalorder]) VALUES (N'CNTT', N'11202151', 3, 1, NULL)
INSERT [dbo].[detailsubjecteducationprogram] ([educationprogramcode], [subjectcode], [term], [type], [numbericalorder]) VALUES (N'CNTT', N'12100151', 1, 1, NULL)
INSERT [dbo].[detailsubjecteducationprogram] ([educationprogramcode], [subjectcode], [term], [type], [numbericalorder]) VALUES (N'CNTT', N'12101151', 1, 1, NULL)
INSERT [dbo].[detailsubjecteducationprogram] ([educationprogramcode], [subjectcode], [term], [type], [numbericalorder]) VALUES (N'CNTT', N'12102151', 2, 1, NULL)
INSERT [dbo].[detailsubjecteducationprogram] ([educationprogramcode], [subjectcode], [term], [type], [numbericalorder]) VALUES (N'CNTT', N'12103151', 3, 1, NULL)
INSERT [dbo].[detailsubjecteducationprogram] ([educationprogramcode], [subjectcode], [term], [type], [numbericalorder]) VALUES (N'CNTT', N'12500151', 1, 1, NULL)
INSERT [dbo].[detailsubjecteducationprogram] ([educationprogramcode], [subjectcode], [term], [type], [numbericalorder]) VALUES (N'CNTT', N'13103151', 6, 1, NULL)
INSERT [dbo].[detailsubjecteducationprogram] ([educationprogramcode], [subjectcode], [term], [type], [numbericalorder]) VALUES (N'CNTT', N'13104151', 7, 1, NULL)
INSERT [dbo].[detailsubjecteducationprogram] ([educationprogramcode], [subjectcode], [term], [type], [numbericalorder]) VALUES (N'CNTT', N'21201151', 2, 1, NULL)
INSERT [dbo].[detailsubjecteducationprogram] ([educationprogramcode], [subjectcode], [term], [type], [numbericalorder]) VALUES (N'CNTT', N'51101151', 1, 1, NULL)
INSERT [dbo].[detailsubjecteducationprogram] ([educationprogramcode], [subjectcode], [term], [type], [numbericalorder]) VALUES (N'CNTT', N'51201151', 2, 1, NULL)
INSERT [dbo].[detailsubjecteducationprogram] ([educationprogramcode], [subjectcode], [term], [type], [numbericalorder]) VALUES (N'CNTT', N'51301151', 3, 1, NULL)
INSERT [dbo].[detailsubjecteducationprogram] ([educationprogramcode], [subjectcode], [term], [type], [numbericalorder]) VALUES (N'CNTT', N'51401151', 3, 1, NULL)
INSERT [dbo].[detailsubjecteducationprogram] ([educationprogramcode], [subjectcode], [term], [type], [numbericalorder]) VALUES (N'CNTT', N'52201151', 4, 1, NULL)
INSERT [dbo].[educationprogram] ([code], [name], [majorcode]) VALUES (N'ATTT', N'An toàn thông tin', N'CNTT')
INSERT [dbo].[educationprogram] ([code], [name], [majorcode]) VALUES (N'CNDL', N'Công nghệ dữ liệu', N'CNTT')
INSERT [dbo].[educationprogram] ([code], [name], [majorcode]) VALUES (N'CNPM', N'Công nghệ phần mềm', N'KTPM')
INSERT [dbo].[educationprogram] ([code], [name], [majorcode]) VALUES (N'CNTT', N'Công nghệ thông tin', N'CNTT')
INSERT [dbo].[educationprogram] ([code], [name], [majorcode]) VALUES (N'KTPM', N'Kĩ thuật phần mềm', N'KTPM')
INSERT [dbo].[faculty] ([facultycode], [facultyname], [amount], [adress], [phone], [codebossfaculty]) VALUES (N'CNTT', N'Công nghệ thông tin', NULL, NULL, NULL, NULL)
INSERT [dbo].[major] ([code], [name], [facilitycode], [levelcode]) VALUES (N'CNTT', N'Công nghệ thông tin', N'CNTT', N'')
INSERT [dbo].[major] ([code], [name], [facilitycode], [levelcode]) VALUES (N'KTPM', N'Kỹ thuật phần mềm', N'CNTT', N'')
INSERT [dbo].[mark] ([code], [studentcode], [coursecode], [attentdancepoint], [midtermpoint], [endingpoint], [tenpoint], [fourpoint], [wordpoint], [average], [numbered], [dateupdate]) VALUES (N'0', N'15150419', N'51101151 1', NULL, NULL, NULL, NULL, NULL, NULL, 1.5, NULL, NULL)
INSERT [dbo].[mark] ([code], [studentcode], [coursecode], [attentdancepoint], [midtermpoint], [endingpoint], [tenpoint], [fourpoint], [wordpoint], [average], [numbered], [dateupdate]) VALUES (N'1', N'15150419', N'12100151 1', NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL)
INSERT [dbo].[mark] ([code], [studentcode], [coursecode], [attentdancepoint], [midtermpoint], [endingpoint], [tenpoint], [fourpoint], [wordpoint], [average], [numbered], [dateupdate]) VALUES (N'2', N'15150419', N'12101151 1', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL)
INSERT [dbo].[mark] ([code], [studentcode], [coursecode], [attentdancepoint], [midtermpoint], [endingpoint], [tenpoint], [fourpoint], [wordpoint], [average], [numbered], [dateupdate]) VALUES (N'3', N'15150419', N'12500151 1', NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, NULL)
INSERT [dbo].[previoussubject] ([code], [previouscode]) VALUES (N'06103151', N'0')
INSERT [dbo].[previoussubject] ([code], [previouscode]) VALUES (N'06104151', N'0')
INSERT [dbo].[previoussubject] ([code], [previouscode]) VALUES (N'06204151', N'0')
INSERT [dbo].[previoussubject] ([code], [previouscode]) VALUES (N'06303151', N'0')
INSERT [dbo].[previoussubject] ([code], [previouscode]) VALUES (N'06401151', N'0')
INSERT [dbo].[previoussubject] ([code], [previouscode]) VALUES (N'11101151', N'12101151')
INSERT [dbo].[previoussubject] ([code], [previouscode]) VALUES (N'11102151', N'0')
INSERT [dbo].[previoussubject] ([code], [previouscode]) VALUES (N'11103151', N'11101151')
INSERT [dbo].[previoussubject] ([code], [previouscode]) VALUES (N'11103151', N'11102151')
INSERT [dbo].[previoussubject] ([code], [previouscode]) VALUES (N'11104151', N'11101151')
INSERT [dbo].[previoussubject] ([code], [previouscode]) VALUES (N'11104151', N'11102151')
INSERT [dbo].[previoussubject] ([code], [previouscode]) VALUES (N'11201151', N'0')
INSERT [dbo].[previoussubject] ([code], [previouscode]) VALUES (N'11202151', N'0')
INSERT [dbo].[previoussubject] ([code], [previouscode]) VALUES (N'12100151', N'0')
INSERT [dbo].[previoussubject] ([code], [previouscode]) VALUES (N'12101151', N'0')
INSERT [dbo].[previoussubject] ([code], [previouscode]) VALUES (N'12102151', N'12101151')
INSERT [dbo].[previoussubject] ([code], [previouscode]) VALUES (N'12103151', N'12102151')
INSERT [dbo].[previoussubject] ([code], [previouscode]) VALUES (N'12500151', N'0')
INSERT [dbo].[previoussubject] ([code], [previouscode]) VALUES (N'13103151', N'0')
INSERT [dbo].[previoussubject] ([code], [previouscode]) VALUES (N'13104151', N'13103151')
INSERT [dbo].[previoussubject] ([code], [previouscode]) VALUES (N'21201151', N'0')
INSERT [dbo].[previoussubject] ([code], [previouscode]) VALUES (N'51101151', N'0')
INSERT [dbo].[previoussubject] ([code], [previouscode]) VALUES (N'51201151', N'51101151')
INSERT [dbo].[previoussubject] ([code], [previouscode]) VALUES (N'51301151', N'0')
INSERT [dbo].[previoussubject] ([code], [previouscode]) VALUES (N'51401151', N'0')
INSERT [dbo].[previoussubject] ([code], [previouscode]) VALUES (N'52201151', N'0')
INSERT [dbo].[register] ([studentcode], [courseclasscode], [price], [issuccess]) VALUES (N'15150419', N'06103151 1', NULL, 1)
INSERT [dbo].[room] ([code], [buildingcode], [floor], [codeview]) VALUES (N'H5302', N'H5', 3, NULL)
INSERT [dbo].[room] ([code], [buildingcode], [floor], [codeview]) VALUES (N'H9201', N'H9', 2, NULL)
INSERT [dbo].[room] ([code], [buildingcode], [floor], [codeview]) VALUES (N'H9202', N'H9', 2, NULL)
INSERT [dbo].[room] ([code], [buildingcode], [floor], [codeview]) VALUES (N'H9203', N'H9', 2, NULL)
INSERT [dbo].[room] ([code], [buildingcode], [floor], [codeview]) VALUES (N'H9204', N'H9', 2, NULL)
INSERT [dbo].[student] ([code], [filecode], [lastname], [firstname], [sex], [placeofbirth], [pernamenaddress], [nation], [nationality], [religion], [email], [phone], [idcardnumber], [note], [classcode]) VALUES (N'1', NULL, N'duong', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[student] ([code], [filecode], [lastname], [firstname], [sex], [placeofbirth], [pernamenaddress], [nation], [nationality], [religion], [email], [phone], [idcardnumber], [note], [classcode]) VALUES (N'15150419', NULL, N'Đặng Đức', N'Trung', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'2015', N'CNTT14')
INSERT [dbo].[student] ([code], [filecode], [lastname], [firstname], [sex], [placeofbirth], [pernamenaddress], [nation], [nationality], [religion], [email], [phone], [idcardnumber], [note], [classcode]) VALUES (N'2', NULL, N'giap', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[subjects] ([code], [name], [numbercredit], [theory], [task], [pratice], [discussion], [totalsession]) VALUES (N'0', N'Không có h?c ph?n tiên quy?t', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[subjects] ([code], [name], [numbercredit], [theory], [task], [pratice], [discussion], [totalsession]) VALUES (N'06103151', N'Đường lối quốc phòng và an ninh của Đảng Cộng sản Việt Nam', 2, 30, 0, 0, 0, 30)
INSERT [dbo].[subjects] ([code], [name], [numbercredit], [theory], [task], [pratice], [discussion], [totalsession]) VALUES (N'06104151', N'Hiểu biết chung về quân, binh chủng', 1, 10, 10, 0, 0, 20)
INSERT [dbo].[subjects] ([code], [name], [numbercredit], [theory], [task], [pratice], [discussion], [totalsession]) VALUES (N'06204151', N'Quân sự chung, chiến thuật, kỹ thuật bắn súng ngắn và lựu đạn', 3, 20, 65, 0, 0, 85)
INSERT [dbo].[subjects] ([code], [name], [numbercredit], [theory], [task], [pratice], [discussion], [totalsession]) VALUES (N'06303151', N'Công tác quốc phòng và anh ninh', 2, 30, 30, 0, 0, 30)
INSERT [dbo].[subjects] ([code], [name], [numbercredit], [theory], [task], [pratice], [discussion], [totalsession]) VALUES (N'06401151', N'Giáo dục thể chất cơ bản', 1, 24, 0, 0, 0, 0)
INSERT [dbo].[subjects] ([code], [name], [numbercredit], [theory], [task], [pratice], [discussion], [totalsession]) VALUES (N'06402151', N'Chạy cự li trung bình', 1, 30, 0, 0, 0, 0)
INSERT [dbo].[subjects] ([code], [name], [numbercredit], [theory], [task], [pratice], [discussion], [totalsession]) VALUES (N'06403151', N'Nhảy xa', 1, 30, 0, 0, 0, 0)
INSERT [dbo].[subjects] ([code], [name], [numbercredit], [theory], [task], [pratice], [discussion], [totalsession]) VALUES (N'06404151', N'Nhảy cao úp bụng', 1, 30, 0, 0, 0, 0)
INSERT [dbo].[subjects] ([code], [name], [numbercredit], [theory], [task], [pratice], [discussion], [totalsession]) VALUES (N'06405151', N'Bóng chuyền', 1, 30, 0, 0, 0, 0)
INSERT [dbo].[subjects] ([code], [name], [numbercredit], [theory], [task], [pratice], [discussion], [totalsession]) VALUES (N'06406151', N'Bóng bàn', 1, 30, 0, 0, 0, 0)
INSERT [dbo].[subjects] ([code], [name], [numbercredit], [theory], [task], [pratice], [discussion], [totalsession]) VALUES (N'06407151', N'Bóng rổ', 1, 30, 0, 0, 0, 0)
INSERT [dbo].[subjects] ([code], [name], [numbercredit], [theory], [task], [pratice], [discussion], [totalsession]) VALUES (N'06408151', N'Cầu lông', 1, 30, 0, 0, 0, 0)
INSERT [dbo].[subjects] ([code], [name], [numbercredit], [theory], [task], [pratice], [discussion], [totalsession]) VALUES (N'06409151', N'Bơi lội', 1, 30, 0, 0, 0, 0)
INSERT [dbo].[subjects] ([code], [name], [numbercredit], [theory], [task], [pratice], [discussion], [totalsession]) VALUES (N'11101151', N'Vật lý đại cương 1', 4, 45, 30, 0, 0, 75)
INSERT [dbo].[subjects] ([code], [name], [numbercredit], [theory], [task], [pratice], [discussion], [totalsession]) VALUES (N'11102151', N'Thí nghiệm vật lý đại cương 1', 1, 0, 0, 0, 0, 0)
INSERT [dbo].[subjects] ([code], [name], [numbercredit], [theory], [task], [pratice], [discussion], [totalsession]) VALUES (N'11103151', N'Vật lý đại cương 2', 4, 45, 30, 0, 0, 75)
INSERT [dbo].[subjects] ([code], [name], [numbercredit], [theory], [task], [pratice], [discussion], [totalsession]) VALUES (N'11104151', N'Thí nghiệm vật lý đại cương 2', 1, 0, 0, 0, 0, 0)
INSERT [dbo].[subjects] ([code], [name], [numbercredit], [theory], [task], [pratice], [discussion], [totalsession]) VALUES (N'11201151', N'Cơ sở lý thuyết hóa học', 2, 39, 6, 0, 0, 45)
INSERT [dbo].[subjects] ([code], [name], [numbercredit], [theory], [task], [pratice], [discussion], [totalsession]) VALUES (N'11202151', N'Thí nghiệm cơ sở lý thuyết hóa học', 1, 0, 0, 0, 0, 0)
INSERT [dbo].[subjects] ([code], [name], [numbercredit], [theory], [task], [pratice], [discussion], [totalsession]) VALUES (N'12100151', N'Hình giải tích và đại số tuyến tính', 3, 30, 30, 0, 0, 60)
INSERT [dbo].[subjects] ([code], [name], [numbercredit], [theory], [task], [pratice], [discussion], [totalsession]) VALUES (N'12101151', N'Giải tích 1', 4, 45, 30, 0, 0, 75)
INSERT [dbo].[subjects] ([code], [name], [numbercredit], [theory], [task], [pratice], [discussion], [totalsession]) VALUES (N'12102151', N'Giải tích 2', 4, 45, 30, 0, 0, 75)
INSERT [dbo].[subjects] ([code], [name], [numbercredit], [theory], [task], [pratice], [discussion], [totalsession]) VALUES (N'12103151', N'Lý thuyết xác suất thống kê', 3, 30, 30, 0, 0, 60)
INSERT [dbo].[subjects] ([code], [name], [numbercredit], [theory], [task], [pratice], [discussion], [totalsession]) VALUES (N'12160151', N'Toán chuyên đề', 3, 30, 15, 0, 0, 45)
INSERT [dbo].[subjects] ([code], [name], [numbercredit], [theory], [task], [pratice], [discussion], [totalsession]) VALUES (N'12221151', N'Toán rời rạc', 3, 30, 15, 0, 15, 60)
INSERT [dbo].[subjects] ([code], [name], [numbercredit], [theory], [task], [pratice], [discussion], [totalsession]) VALUES (N'12222151', N'Đạo đức nghề nghiệp', 2, 30, 0, 0, 0, 30)
INSERT [dbo].[subjects] ([code], [name], [numbercredit], [theory], [task], [pratice], [discussion], [totalsession]) VALUES (N'12226151', N'Lý thuyết hệ điều hành', 3, 45, 0, 0, 0, 45)
INSERT [dbo].[subjects] ([code], [name], [numbercredit], [theory], [task], [pratice], [discussion], [totalsession]) VALUES (N'12227151', N'Trí tuệ nhân tạo', 3, 30, 15, 9, 6, 60)
INSERT [dbo].[subjects] ([code], [name], [numbercredit], [theory], [task], [pratice], [discussion], [totalsession]) VALUES (N'12257151', N'Các hệ tri thức', 3, 30, 15, 9, 6, 60)
INSERT [dbo].[subjects] ([code], [name], [numbercredit], [theory], [task], [pratice], [discussion], [totalsession]) VALUES (N'12259151', N'Nhận dạng mẫu', 3, 30, 15, 9, 6, 60)
INSERT [dbo].[subjects] ([code], [name], [numbercredit], [theory], [task], [pratice], [discussion], [totalsession]) VALUES (N'12262151', N'Xử lý ngôn ngữ tự nhiên', 3, 30, 15, 9, 6, 60)
INSERT [dbo].[subjects] ([code], [name], [numbercredit], [theory], [task], [pratice], [discussion], [totalsession]) VALUES (N'12264151', N'Công nghệ XML và Web ngữ nghĩa', 3, 30, 15, 9, 6, 60)
INSERT [dbo].[subjects] ([code], [name], [numbercredit], [theory], [task], [pratice], [discussion], [totalsession]) VALUES (N'12269151', N'Thực tập công nghiệp', 6, 0, 0, 120, 0, 0)
INSERT [dbo].[subjects] ([code], [name], [numbercredit], [theory], [task], [pratice], [discussion], [totalsession]) VALUES (N'12274151', N'Lý thuyết ngôn ngữ lập trình', 3, 30, 15, 9, 6, 60)
INSERT [dbo].[subjects] ([code], [name], [numbercredit], [theory], [task], [pratice], [discussion], [totalsession]) VALUES (N'12321151', N'Cơ sở dữ liệu', 4, 45, 15, 9, 6, 75)
INSERT [dbo].[subjects] ([code], [name], [numbercredit], [theory], [task], [pratice], [discussion], [totalsession]) VALUES (N'12322151', N'Đảm bảo và an toàn thông tin', 3, 45, 0, 0, 0, 45)
INSERT [dbo].[subjects] ([code], [name], [numbercredit], [theory], [task], [pratice], [discussion], [totalsession]) VALUES (N'12323151', N'Công nghệ web', 2, 15, 15, 9, 6, 45)
INSERT [dbo].[subjects] ([code], [name], [numbercredit], [theory], [task], [pratice], [discussion], [totalsession]) VALUES (N'12324151', N'Tương tác người máy', 2, 30, 0, 0, 0, 30)
INSERT [dbo].[subjects] ([code], [name], [numbercredit], [theory], [task], [pratice], [discussion], [totalsession]) VALUES (N'12325151', N'Phân tích và thiết kế giải thuật', 3, 30, 15, 9, 6, 60)
INSERT [dbo].[subjects] ([code], [name], [numbercredit], [theory], [task], [pratice], [discussion], [totalsession]) VALUES (N'12359151', N'Cơ sở dữ liệu nâng cao', 3, 30, 15, 9, 6, 60)
INSERT [dbo].[subjects] ([code], [name], [numbercredit], [theory], [task], [pratice], [discussion], [totalsession]) VALUES (N'12360151', N'Các hệ thống thông tin địa lý', 3, 30, 15, 9, 6, 60)
INSERT [dbo].[subjects] ([code], [name], [numbercredit], [theory], [task], [pratice], [discussion], [totalsession]) VALUES (N'12361151', N'Phân tích và thiết kế hệ thống', 3, 30, 15, 9, 6, 60)
INSERT [dbo].[subjects] ([code], [name], [numbercredit], [theory], [task], [pratice], [discussion], [totalsession]) VALUES (N'12364151', N'Lập trình trò chơi và mô phỏng', 3, 30, 15, 9, 6, 60)
INSERT [dbo].[subjects] ([code], [name], [numbercredit], [theory], [task], [pratice], [discussion], [totalsession]) VALUES (N'12370151', N'Lập trình nhúng', 3, 30, 15, 9, 6, 60)
INSERT [dbo].[subjects] ([code], [name], [numbercredit], [theory], [task], [pratice], [discussion], [totalsession]) VALUES (N'12371151', N'Thực tập cơ sở dữ liệu', 3, 0, 0, 120, 0, 0)
INSERT [dbo].[subjects] ([code], [name], [numbercredit], [theory], [task], [pratice], [discussion], [totalsession]) VALUES (N'12374151', N'Công nghệ Web nâng cao', 3, 30, 15, 9, 6, 60)
INSERT [dbo].[subjects] ([code], [name], [numbercredit], [theory], [task], [pratice], [discussion], [totalsession]) VALUES (N'12375151', N'Nhập môn cơ sở dữ liệu lớn', 3, 30, 15, 9, 6, 60)
INSERT [dbo].[subjects] ([code], [name], [numbercredit], [theory], [task], [pratice], [discussion], [totalsession]) VALUES (N'12378151', N'An ninh các hệ thống không dây', 3, 30, 15, 9, 6, 60)
INSERT [dbo].[subjects] ([code], [name], [numbercredit], [theory], [task], [pratice], [discussion], [totalsession]) VALUES (N'12421151', N'Mạng máy tính', 3, 30, 9, 15, 6, 60)
INSERT [dbo].[subjects] ([code], [name], [numbercredit], [theory], [task], [pratice], [discussion], [totalsession]) VALUES (N'12422151', N'Xây dựng quản trị và bảo trì hệ thống', 2, 30, 0, 0, 0, 30)
INSERT [dbo].[subjects] ([code], [name], [numbercredit], [theory], [task], [pratice], [discussion], [totalsession]) VALUES (N'12423151', N'Công nghệ lập trình tích hợp', 3, 30, 15, 15, 0, 60)
INSERT [dbo].[subjects] ([code], [name], [numbercredit], [theory], [task], [pratice], [discussion], [totalsession]) VALUES (N'12439151', N'Truyền dữ liệu', 3, 30, 15, 9, 6, 60)
INSERT [dbo].[subjects] ([code], [name], [numbercredit], [theory], [task], [pratice], [discussion], [totalsession]) VALUES (N'12456151', N'Kỹ thuật liên mạng', 3, 30, 15, 9, 6, 60)
INSERT [dbo].[subjects] ([code], [name], [numbercredit], [theory], [task], [pratice], [discussion], [totalsession]) VALUES (N'12460151', N'Mạng không dây', 3, 30, 15, 9, 6, 60)
INSERT [dbo].[subjects] ([code], [name], [numbercredit], [theory], [task], [pratice], [discussion], [totalsession]) VALUES (N'12461151', N'An ninh mạng', 3, 30, 15, 9, 6, 60)
INSERT [dbo].[subjects] ([code], [name], [numbercredit], [theory], [task], [pratice], [discussion], [totalsession]) VALUES (N'12464151', N'Mã hóa', 3, 30, 15, 9, 6, 60)
INSERT [dbo].[subjects] ([code], [name], [numbercredit], [theory], [task], [pratice], [discussion], [totalsession]) VALUES (N'12468151', N'Thực tập công nghệ thông tin', 3, 0, 0, 120, 0, 0)
INSERT [dbo].[subjects] ([code], [name], [numbercredit], [theory], [task], [pratice], [discussion], [totalsession]) VALUES (N'12469151', N'Lập trình phần mềm an toàn', 3, 30, 15, 9, 6, 60)
INSERT [dbo].[subjects] ([code], [name], [numbercredit], [theory], [task], [pratice], [discussion], [totalsession]) VALUES (N'12470151', N'Lập trình ghép nối thiết bị', 3, 30, 15, 9, 6, 60)
INSERT [dbo].[subjects] ([code], [name], [numbercredit], [theory], [task], [pratice], [discussion], [totalsession]) VALUES (N'12473151', N'Phân tích Malwares', 3, 30, 15, 9, 6, 60)
INSERT [dbo].[subjects] ([code], [name], [numbercredit], [theory], [task], [pratice], [discussion], [totalsession]) VALUES (N'12475151', N'An toàn cơ sở dữ liệu', 3, 30, 15, 9, 6, 60)
INSERT [dbo].[subjects] ([code], [name], [numbercredit], [theory], [task], [pratice], [discussion], [totalsession]) VALUES (N'12476151', N'An toàn hệ điều hành', 3, 30, 15, 9, 6, 60)
INSERT [dbo].[subjects] ([code], [name], [numbercredit], [theory], [task], [pratice], [discussion], [totalsession]) VALUES (N'12483151', N'Điều tra số', 3, 30, 15, 9, 6, 60)
INSERT [dbo].[subjects] ([code], [name], [numbercredit], [theory], [task], [pratice], [discussion], [totalsession]) VALUES (N'12500151', N'Lập trình cơ bản', 3, 45, 15, 0, 0, 60)
INSERT [dbo].[subjects] ([code], [name], [numbercredit], [theory], [task], [pratice], [discussion], [totalsession]) VALUES (N'12521151', N'Công nghệ phần mềm', 3, 45, 0, 0, 0, 45)
INSERT [dbo].[subjects] ([code], [name], [numbercredit], [theory], [task], [pratice], [discussion], [totalsession]) VALUES (N'12522151', N'Lập trình hướng đối tượng', 3, 30, 15, 9, 6, 60)
INSERT [dbo].[subjects] ([code], [name], [numbercredit], [theory], [task], [pratice], [discussion], [totalsession]) VALUES (N'12523151', N'Phương pháp nghiên cứu IT', 2, 30, 0, 0, 0, 30)
INSERT [dbo].[subjects] ([code], [name], [numbercredit], [theory], [task], [pratice], [discussion], [totalsession]) VALUES (N'12524151', N'Ngôn ngữ lập trình 1', 2, 15, 15, 15, 0, 45)
INSERT [dbo].[subjects] ([code], [name], [numbercredit], [theory], [task], [pratice], [discussion], [totalsession]) VALUES (N'12525151', N'Kỹ thuật lập trình', 3, 30, 15, 9, 6, 60)
INSERT [dbo].[subjects] ([code], [name], [numbercredit], [theory], [task], [pratice], [discussion], [totalsession]) VALUES (N'12526151', N'Ngôn ngữ lập trình 2', 3, 15, 15, 15, 0, 45)
INSERT [dbo].[subjects] ([code], [name], [numbercredit], [theory], [task], [pratice], [discussion], [totalsession]) VALUES (N'12556151', N'Lập trình nâng cao', 3, 30, 15, 9, 6, 60)
INSERT [dbo].[subjects] ([code], [name], [numbercredit], [theory], [task], [pratice], [discussion], [totalsession]) VALUES (N'12557151', N'Hệ hỗ trợ quyết định', 3, 30, 15, 9, 6, 60)
INSERT [dbo].[subjects] ([code], [name], [numbercredit], [theory], [task], [pratice], [discussion], [totalsession]) VALUES (N'12558151', N'Công nghệ Client/Server', 3, 30, 15, 9, 6, 60)
INSERT [dbo].[subjects] ([code], [name], [numbercredit], [theory], [task], [pratice], [discussion], [totalsession]) VALUES (N'12559151', N'Phân tích và mô hình hóa phần mềm', 3, 30, 15, 9, 6, 60)
INSERT [dbo].[subjects] ([code], [name], [numbercredit], [theory], [task], [pratice], [discussion], [totalsession]) VALUES (N'12560151', N'Quản lý dự án phần mềm', 3, 30, 15, 9, 6, 60)
INSERT [dbo].[subjects] ([code], [name], [numbercredit], [theory], [task], [pratice], [discussion], [totalsession]) VALUES (N'12561151', N'Thiết kế và xây dựng phần mềm', 3, 30, 15, 9, 6, 60)
INSERT [dbo].[subjects] ([code], [name], [numbercredit], [theory], [task], [pratice], [discussion], [totalsession]) VALUES (N'12562151', N'Đánh giá chất lượng phần mềm', 3, 30, 15, 9, 6, 60)
INSERT [dbo].[subjects] ([code], [name], [numbercredit], [theory], [task], [pratice], [discussion], [totalsession]) VALUES (N'12563151', N'Công nghệ tác tử và phát triển phần mềm', 3, 30, 15, 9, 6, 60)
INSERT [dbo].[subjects] ([code], [name], [numbercredit], [theory], [task], [pratice], [discussion], [totalsession]) VALUES (N'12564151', N'Thiết kế giao diện người sử dụng', 3, 30, 15, 9, 6, 60)
INSERT [dbo].[subjects] ([code], [name], [numbercredit], [theory], [task], [pratice], [discussion], [totalsession]) VALUES (N'12565151', N'Khai phá dữ liệu', 3, 30, 15, 9, 6, 60)
INSERT [dbo].[subjects] ([code], [name], [numbercredit], [theory], [task], [pratice], [discussion], [totalsession]) VALUES (N'12567151', N'Thực tập kỹ thuật lập trình', 3, 0, 0, 120, 0, 0)
INSERT [dbo].[subjects] ([code], [name], [numbercredit], [theory], [task], [pratice], [discussion], [totalsession]) VALUES (N'12568151', N'Thực tập nhóm', 3, 0, 0, 120, 0, 0)
INSERT [dbo].[subjects] ([code], [name], [numbercredit], [theory], [task], [pratice], [discussion], [totalsession]) VALUES (N'12570151', N'Đồ án phần I', 3, 0, 0, 0, 0, 0)
INSERT [dbo].[subjects] ([code], [name], [numbercredit], [theory], [task], [pratice], [discussion], [totalsession]) VALUES (N'12571151', N'Phát triển phần mềm di động', 3, 30, 15, 9, 6, 60)
INSERT [dbo].[subjects] ([code], [name], [numbercredit], [theory], [task], [pratice], [discussion], [totalsession]) VALUES (N'12572151', N'Hệ điều hành trong hệ thống nhúng', 3, 30, 15, 9, 6, 60)
INSERT [dbo].[subjects] ([code], [name], [numbercredit], [theory], [task], [pratice], [discussion], [totalsession]) VALUES (N'12573151', N'Hệ điều hành di động', 3, 30, 15, 9, 6, 60)
INSERT [dbo].[subjects] ([code], [name], [numbercredit], [theory], [task], [pratice], [discussion], [totalsession]) VALUES (N'12597151', N'Đồ án tốt nghiệp', 7, 0, 0, 0, 0, 0)
INSERT [dbo].[subjects] ([code], [name], [numbercredit], [theory], [task], [pratice], [discussion], [totalsession]) VALUES (N'13103151', N'Tiếng anh B11', 3, 45, 0, 0, 45, 90)
INSERT [dbo].[subjects] ([code], [name], [numbercredit], [theory], [task], [pratice], [discussion], [totalsession]) VALUES (N'13104151', N'Tiếng anh B12', 3, 45, 0, 0, 45, 90)
INSERT [dbo].[subjects] ([code], [name], [numbercredit], [theory], [task], [pratice], [discussion], [totalsession]) VALUES (N'21201151', N'Hình họa và vẽ kĩ thuật cơ bản + BTL', 2, 15, 30, 0, 0, 45)
INSERT [dbo].[subjects] ([code], [name], [numbercredit], [theory], [task], [pratice], [discussion], [totalsession]) VALUES (N'21460151', N'Công nghệ CAD/CAM', 2, 30, 0, 0, 15, 45)
INSERT [dbo].[subjects] ([code], [name], [numbercredit], [theory], [task], [pratice], [discussion], [totalsession]) VALUES (N'21756151', N'Kinh tế công nghiệp', 2, 30, 0, 0, 0, 30)
INSERT [dbo].[subjects] ([code], [name], [numbercredit], [theory], [task], [pratice], [discussion], [totalsession]) VALUES (N'31123151', N'Điện tử số + BTL', 2, 30, 9, 0, 6, 40)
INSERT [dbo].[subjects] ([code], [name], [numbercredit], [theory], [task], [pratice], [discussion], [totalsession]) VALUES (N'31124151', N'Kỹ thuật vi xử lý và lập trình assembler', 2, 30, 0, 0, 15, 45)
INSERT [dbo].[subjects] ([code], [name], [numbercredit], [theory], [task], [pratice], [discussion], [totalsession]) VALUES (N'31221151', N'Điện tử tương tự + BTL', 3, 45, 15, 0, 0, 60)
INSERT [dbo].[subjects] ([code], [name], [numbercredit], [theory], [task], [pratice], [discussion], [totalsession]) VALUES (N'31564151', N'Mạng viễn thông', 3, 48, 6, 6, 0, 60)
INSERT [dbo].[subjects] ([code], [name], [numbercredit], [theory], [task], [pratice], [discussion], [totalsession]) VALUES (N'32222151', N'Cấu trúc máy tính', 2, 39, 6, 0, 0, 45)
INSERT [dbo].[subjects] ([code], [name], [numbercredit], [theory], [task], [pratice], [discussion], [totalsession]) VALUES (N'32471151', N'Hệ thống thông tin y tế', 2, 30, 0, 0, 15, 45)
INSERT [dbo].[subjects] ([code], [name], [numbercredit], [theory], [task], [pratice], [discussion], [totalsession]) VALUES (N'51101151', N'Những nguyên lý cơ bản của chủ nghĩa Mác - Lênin 1', 2, 39, 0, 0, 6, 45)
GO
INSERT [dbo].[subjects] ([code], [name], [numbercredit], [theory], [task], [pratice], [discussion], [totalsession]) VALUES (N'51201151', N'Những nguyên lý cơ bản của chủ nghĩa Mác - Lênin 2', 3, 48, 0, 0, 12, 60)
INSERT [dbo].[subjects] ([code], [name], [numbercredit], [theory], [task], [pratice], [discussion], [totalsession]) VALUES (N'51301151', N'Pháp luật đại cương', 2, 0, 0, 0, 0, 30)
INSERT [dbo].[subjects] ([code], [name], [numbercredit], [theory], [task], [pratice], [discussion], [totalsession]) VALUES (N'51401151', N'Tư tưởng Hồ Chí Minh + TL', 2, 39, 0, 0, 6, 45)
INSERT [dbo].[subjects] ([code], [name], [numbercredit], [theory], [task], [pratice], [discussion], [totalsession]) VALUES (N'52201151', N'Đường lối cách mạng của Đảng Cộng sản Việt Nam', 3, 48, 0, 0, 12, 60)
INSERT [dbo].[tblLogin] ([id], [username], [passwords]) VALUES (0, N'15150419', N'123456')
ALTER TABLE [dbo].[building]  WITH CHECK ADD  CONSTRAINT [FK_building_campusarea] FOREIGN KEY([campusareacode])
REFERENCES [dbo].[campusarea] ([code])
GO
ALTER TABLE [dbo].[building] CHECK CONSTRAINT [FK_building_campusarea]
GO
ALTER TABLE [dbo].[class]  WITH CHECK ADD  CONSTRAINT [FK_falculty_class] FOREIGN KEY([facultycode])
REFERENCES [dbo].[faculty] ([facultycode])
GO
ALTER TABLE [dbo].[class] CHECK CONSTRAINT [FK_falculty_class]
GO
ALTER TABLE [dbo].[course]  WITH CHECK ADD  CONSTRAINT [FK_course_subjects] FOREIGN KEY([subjectcode])
REFERENCES [dbo].[subjects] ([code])
GO
ALTER TABLE [dbo].[course] CHECK CONSTRAINT [FK_course_subjects]
GO
ALTER TABLE [dbo].[courseschedule]  WITH CHECK ADD  CONSTRAINT [FK_course_cs] FOREIGN KEY([coursecode])
REFERENCES [dbo].[course] ([code])
GO
ALTER TABLE [dbo].[courseschedule] CHECK CONSTRAINT [FK_course_cs]
GO
ALTER TABLE [dbo].[courseschedule]  WITH CHECK ADD  CONSTRAINT [FK_cs_room] FOREIGN KEY([roomcode])
REFERENCES [dbo].[room] ([code])
GO
ALTER TABLE [dbo].[courseschedule] CHECK CONSTRAINT [FK_cs_room]
GO
ALTER TABLE [dbo].[detailsubjecteducationprogram]  WITH CHECK ADD  CONSTRAINT [FK_detailsubjecteducationprogram_educationprogram] FOREIGN KEY([educationprogramcode])
REFERENCES [dbo].[educationprogram] ([code])
GO
ALTER TABLE [dbo].[detailsubjecteducationprogram] CHECK CONSTRAINT [FK_detailsubjecteducationprogram_educationprogram]
GO
ALTER TABLE [dbo].[detailsubjecteducationprogram]  WITH CHECK ADD  CONSTRAINT [FK_detailsubjecteducationprogram_subjects] FOREIGN KEY([subjectcode])
REFERENCES [dbo].[subjects] ([code])
GO
ALTER TABLE [dbo].[detailsubjecteducationprogram] CHECK CONSTRAINT [FK_detailsubjecteducationprogram_subjects]
GO
ALTER TABLE [dbo].[educationprogram]  WITH CHECK ADD  CONSTRAINT [FK_educationprogram_major] FOREIGN KEY([majorcode])
REFERENCES [dbo].[major] ([code])
GO
ALTER TABLE [dbo].[educationprogram] CHECK CONSTRAINT [FK_educationprogram_major]
GO
ALTER TABLE [dbo].[major]  WITH CHECK ADD  CONSTRAINT [FK_falculty_major] FOREIGN KEY([facilitycode])
REFERENCES [dbo].[faculty] ([facultycode])
GO
ALTER TABLE [dbo].[major] CHECK CONSTRAINT [FK_falculty_major]
GO
ALTER TABLE [dbo].[mark]  WITH CHECK ADD  CONSTRAINT [FK_mark_course] FOREIGN KEY([coursecode])
REFERENCES [dbo].[course] ([code])
GO
ALTER TABLE [dbo].[mark] CHECK CONSTRAINT [FK_mark_course]
GO
ALTER TABLE [dbo].[mark]  WITH CHECK ADD  CONSTRAINT [FK_mark_student] FOREIGN KEY([studentcode])
REFERENCES [dbo].[student] ([code])
GO
ALTER TABLE [dbo].[mark] CHECK CONSTRAINT [FK_mark_student]
GO
ALTER TABLE [dbo].[register]  WITH CHECK ADD  CONSTRAINT [FK_register_course] FOREIGN KEY([courseclasscode])
REFERENCES [dbo].[course] ([code])
GO
ALTER TABLE [dbo].[register] CHECK CONSTRAINT [FK_register_course]
GO
ALTER TABLE [dbo].[register]  WITH CHECK ADD  CONSTRAINT [FK_register_student] FOREIGN KEY([studentcode])
REFERENCES [dbo].[student] ([code])
GO
ALTER TABLE [dbo].[register] CHECK CONSTRAINT [FK_register_student]
GO
ALTER TABLE [dbo].[room]  WITH CHECK ADD  CONSTRAINT [FK_room_building] FOREIGN KEY([buildingcode])
REFERENCES [dbo].[building] ([code])
GO
ALTER TABLE [dbo].[room] CHECK CONSTRAINT [FK_room_building]
GO
ALTER TABLE [dbo].[student]  WITH CHECK ADD  CONSTRAINT [FK_student_class] FOREIGN KEY([classcode])
REFERENCES [dbo].[class] ([classcode])
GO
ALTER TABLE [dbo].[student] CHECK CONSTRAINT [FK_student_class]
GO
/****** Object:  StoredProcedure [dbo].[getDanhSachDangKy]    Script Date: 5/15/2018 11:57:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[getDanhSachDangKy](@masv varchar(10),@semester int)
as
begin
	declare @tblDSDDK table(subject_ID varchar(10))
	insert into @tblDSDDK(subject_ID)
	exec LayDanhSachMonDuocDangKy @masv,@semester
	
	select * from @tblDSDDK
end
GO
/****** Object:  StoredProcedure [dbo].[LayDanhSachMonDuocDangKy]    Script Date: 5/15/2018 11:57:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--alter 
CREATE proc [dbo].[LayDanhSachMonDuocDangKy](@masv varchar(10),@semester int)
as
begin
	--lấy mã ctđt
	declare @ctdt varchar(10) = (select student.classcode
						from student												
						where student.code = '15150419')
	set @ctdt = (select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE (@ctdt,'0', ''),'1', ''),'2', ''),'3', ''),'4', ''),'5', ''),'6', ''),'7', ''),'8', ''),'9', ''))
	--bảng chứa toàn bộ các môn thuộc CTDT
	declare @tblSubject table(subject_ID varchar(10))
	insert into @tblSubject(subject_ID)
		select A.subjectcode
		from detailsubjecteducationprogram A
		where A.educationprogramcode = @ctdt AND A.term <= @semester

	--bảng chứa các môn đã học
	declare @tblLearned table(subject_ID varchar(10))
	insert into @tblLearned(subject_ID)
		select C.code
		from mark A
		inner join course B on B.code = A.coursecode
		inner join subjects C on C.code = B.subjectcode
		where A.studentcode = @masv
	
	--bảng chứa số lượng các môn tiên quyết của các môn 
	declare @tblPrerequisite table(subject_ID varchar(10),SL int)
	insert into @tblPrerequisite(subject_ID,SL)
		select code,count(previouscode)
		from previoussubject

		group by code

	--bảng chứa các môn đăng ký
	declare @tblFail table(subject_ID varchar(10))
	--bao gồm các môn bị điểm dưới 1 (hệ 4) / trượt
	insert into @tblFail(subject_ID)
		select B.subjectcode
		from mark A
		inner join course B on B.code = A.coursecode
		where A.average < 1
	--bao gồm các môn chưa học nhưng đủ điều kiện tiên quyết và các môn chưa học mà không cần đk tiên quyết
	--gồm 2 phần: so sánh giữa bảng Prerequisite (chứa số lượng tiên quyết của các môn) 
	--					   với bảng CheckPreq (được join giữa các môn trong bảng tblSubject với bảng dbo.previoussubjects)
	--					   rồi count mã môn tiên quyết và group by theo mã môn học
	--lấy mã môn với đk: có đủ số môn tiên quyết
	declare @tblCheckPreq table (subject_ID varchar(10),SL int)
	insert into @tblCheckPreq(subject_ID,SL)
		select B.code, count(B.previouscode)
		from @tblSubject A
		inner join previoussubject B on A.subject_ID = B.previouscode
		group by B.code
	--kiem tra
	declare @approvedSubject table(subject_ID varchar(10))
	insert into @approvedSubject(subject_ID)
		select A.subject_ID
		from @tblCheckPreq A
		inner join @tblPrerequisite B on B.subject_ID = A.subject_ID
		where A.SL = B.SL
	--danh sach nhung mon chua hoc ma khong can mon tien quyet
	declare @noprev table(subject_ID varchar(10))
	insert into @noprev(subject_ID)
		select A.subject_ID
		from @tblSubject A
		inner join previoussubject B on B.code = A.subject_ID
		where B.previouscode = '0' and not exists (select C.subject_ID from @tblLearned C where A.subject_ID = C.subject_ID)
	--
	--danh sach nhung mon da dang ky thanh cong
	declare @reg_sucess table(subject_ID varchar(10))
	insert into @reg_sucess(subject_ID)
		select C.code
		from register A
		inner join course B on B.code = A.courseclasscode
		inner join subjects C on C.code = B.subjectcode
		where A.studentcode = @masv
	--
	declare @final table(subject_ID varchar(10))
	insert into @final(subject_ID)
		select *
		from @approvedSubject
	insert into @final(subject_ID)
		select *
		from @tblFail
	insert into @final(subject_ID)
		select *
		from @noprev
	--
	select * from @final B
	inner join subjects A on A.code = B.subject_ID
	inner join detailsubjecteducationprogram C on C.subjectcode = B.subject_ID
	where term <= @semester and not exists(select * from @reg_sucess E where B.subject_ID = E.subject_ID)
	order by term
end
GO
/****** Object:  StoredProcedure [dbo].[Login]    Script Date: 5/15/2018 11:57:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Login](@username varchar(10),@pass varchar(10))
as
begin
	select count(*) as result
	from (select * from tblLogin A where A.username = @username and A.passwords = @pass) as B
end
GO
USE [master]
GO
ALTER DATABASE [DangKyTinChi] SET  READ_WRITE 
GO
