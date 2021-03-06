USE [master]
GO
/****** Object:  Database [MiniProjectDM]    Script Date: 12/10/2014 10:53:45 PM ******/
CREATE DATABASE [MiniProjectDM]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'MiniProjectDM', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\MiniProjectDM.mdf' , SIZE = 51200KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'MiniProjectDM_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\MiniProjectDM_log.ldf' , SIZE = 8384KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [MiniProjectDM] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [MiniProjectDM].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [MiniProjectDM] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [MiniProjectDM] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [MiniProjectDM] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [MiniProjectDM] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [MiniProjectDM] SET ARITHABORT OFF 
GO
ALTER DATABASE [MiniProjectDM] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [MiniProjectDM] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [MiniProjectDM] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [MiniProjectDM] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [MiniProjectDM] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [MiniProjectDM] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [MiniProjectDM] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [MiniProjectDM] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [MiniProjectDM] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [MiniProjectDM] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [MiniProjectDM] SET  DISABLE_BROKER 
GO
ALTER DATABASE [MiniProjectDM] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [MiniProjectDM] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [MiniProjectDM] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [MiniProjectDM] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [MiniProjectDM] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [MiniProjectDM] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [MiniProjectDM] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [MiniProjectDM] SET RECOVERY FULL 
GO
ALTER DATABASE [MiniProjectDM] SET  MULTI_USER 
GO
ALTER DATABASE [MiniProjectDM] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [MiniProjectDM] SET DB_CHAINING OFF 
GO
ALTER DATABASE [MiniProjectDM] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [MiniProjectDM] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'MiniProjectDM', N'ON'
GO
USE [MiniProjectDM]
GO
/****** Object:  Table [dbo].[Client]    Script Date: 12/10/2014 10:53:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Client](
	[C_Num] [varchar](500) NULL,
	[E_Client] [varchar](500) NULL,
	[F_Client] [varchar](500) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Date]    Script Date: 12/10/2014 10:53:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Date](
	[D_ID] [varchar](500) NULL,
	[R_Num] [varchar](500) NULL,
	[R_LN] [varchar](500) NULL,
	[R_FN] [varchar](500) NULL,
	[C_Date] [datetime] NULL,
	[Cer_Date] [datetime] NULL,
	[P_Date] [datetime] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Dim_Client]    Script Date: 12/10/2014 10:53:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Dim_Client](
	[Client_Num] [varchar](500) NOT NULL,
	[EN_Client] [varchar](500) NULL,
	[FN_CLient] [varchar](500) NULL,
 CONSTRAINT [PK_Dim_Client] PRIMARY KEY CLUSTERED 
(
	[Client_Num] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Dim_Date]    Script Date: 12/10/2014 10:53:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Dim_Date](
	[Date_ID] [varchar](500) NOT NULL,
	[Reg_Num] [varchar](500) NULL,
	[Reg_LN] [varchar](500) NULL,
	[Reg_FN] [varchar](500) NULL,
	[Comm_Date] [datetime] NULL,
	[Cert_Date] [datetime] NULL,
	[Post_Date] [datetime] NULL,
 CONSTRAINT [PK_Dim_Date] PRIMARY KEY CLUSTERED 
(
	[Date_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Dim_Institution]    Script Date: 12/10/2014 10:53:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Dim_Institution](
	[Institution_ID] [varchar](500) NOT NULL,
	[Institution] [varchar](500) NULL,
 CONSTRAINT [PK_Dim_Institution] PRIMARY KEY CLUSTERED 
(
	[Institution_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Dim_Sender]    Script Date: 12/10/2014 10:53:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Dim_Sender](
	[Sender_ID] [varchar](500) NOT NULL,
	[Sender_LN] [varchar](500) NULL,
	[Sender_FN] [varchar](500) NULL,
	[Sender_PosTit] [varchar](500) NULL,
	[Sender_Branch] [varchar](500) NULL,
 CONSTRAINT [PK_Dim_Sender] PRIMARY KEY CLUSTERED 
(
	[Sender_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Dim_Subject]    Script Date: 12/10/2014 10:53:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Dim_Subject](
	[Subject_ID] [varchar](500) NOT NULL,
	[Subj_Comm] [varchar](500) NULL,
 CONSTRAINT [PK_Dim_Subject] PRIMARY KEY CLUSTERED 
(
	[Subject_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Fact]    Script Date: 12/10/2014 10:53:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Fact](
	[F_ID] [varchar](500) NULL,
	[CostFact] [int] NULL,
	[C_Num] [varchar](500) NULL,
	[D_ID] [varchar](500) NULL,
	[Sub_ID] [varchar](500) NULL,
	[I_ID] [varchar](500) NULL,
	[Sen_ID] [varchar](500) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Institution]    Script Date: 12/10/2014 10:53:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Institution](
	[I_ID] [varchar](500) NULL,
	[Inst] [varchar](500) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Mini_Project_Fact]    Script Date: 12/10/2014 10:53:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Mini_Project_Fact](
	[Fact_ID] [varchar](500) NULL,
	[Cost_Of_Communication] [int] NULL,
	[Client_Num] [varchar](500) NULL,
	[Date_ID] [varchar](500) NULL,
	[Subject_ID] [varchar](500) NULL,
	[Institution_ID] [varchar](500) NULL,
	[Sender_ID] [varchar](500) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Sender]    Script Date: 12/10/2014 10:53:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sender](
	[Sen_ID] [varchar](500) NULL,
	[S_LN] [varchar](500) NULL,
	[S_FN] [varchar](500) NULL,
	[S_PosTit] [varchar](500) NULL,
	[S_Branch] [varchar](500) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Subject]    Script Date: 12/10/2014 10:53:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Subject](
	[Sub_ID] [varchar](500) NULL,
	[S_Comm] [varchar](500) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[Mini_Project_Fact]  WITH CHECK ADD  CONSTRAINT [FK_Mini_Project_Fact_Dim_Client] FOREIGN KEY([Client_Num])
REFERENCES [dbo].[Dim_Client] ([Client_Num])
GO
ALTER TABLE [dbo].[Mini_Project_Fact] CHECK CONSTRAINT [FK_Mini_Project_Fact_Dim_Client]
GO
ALTER TABLE [dbo].[Mini_Project_Fact]  WITH CHECK ADD  CONSTRAINT [FK_Mini_Project_Fact_Dim_Date] FOREIGN KEY([Date_ID])
REFERENCES [dbo].[Dim_Date] ([Date_ID])
GO
ALTER TABLE [dbo].[Mini_Project_Fact] CHECK CONSTRAINT [FK_Mini_Project_Fact_Dim_Date]
GO
ALTER TABLE [dbo].[Mini_Project_Fact]  WITH CHECK ADD  CONSTRAINT [FK_Mini_Project_Fact_Dim_Institution] FOREIGN KEY([Institution_ID])
REFERENCES [dbo].[Dim_Institution] ([Institution_ID])
GO
ALTER TABLE [dbo].[Mini_Project_Fact] CHECK CONSTRAINT [FK_Mini_Project_Fact_Dim_Institution]
GO
ALTER TABLE [dbo].[Mini_Project_Fact]  WITH CHECK ADD  CONSTRAINT [FK_Mini_Project_Fact_Dim_Sender] FOREIGN KEY([Sender_ID])
REFERENCES [dbo].[Dim_Sender] ([Sender_ID])
GO
ALTER TABLE [dbo].[Mini_Project_Fact] CHECK CONSTRAINT [FK_Mini_Project_Fact_Dim_Sender]
GO
ALTER TABLE [dbo].[Mini_Project_Fact]  WITH CHECK ADD  CONSTRAINT [FK_Mini_Project_Fact_Dim_Subject] FOREIGN KEY([Subject_ID])
REFERENCES [dbo].[Dim_Subject] ([Subject_ID])
GO
ALTER TABLE [dbo].[Mini_Project_Fact] CHECK CONSTRAINT [FK_Mini_Project_Fact_Dim_Subject]
GO
USE [master]
GO
ALTER DATABASE [MiniProjectDM] SET  READ_WRITE 
GO
