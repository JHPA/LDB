USE [master]
GO
/****** Object:  Database [Pagina web]    Script Date: 03/03/2018 11:06:30 a.m. ******/
CREATE DATABASE [Pagina web]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Pagina web', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\Pagina web.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Pagina web_log', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\Pagina web_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Pagina web] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Pagina web].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Pagina web] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Pagina web] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Pagina web] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Pagina web] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Pagina web] SET ARITHABORT OFF 
GO
ALTER DATABASE [Pagina web] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Pagina web] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [Pagina web] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Pagina web] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Pagina web] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Pagina web] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Pagina web] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Pagina web] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Pagina web] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Pagina web] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Pagina web] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Pagina web] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Pagina web] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Pagina web] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Pagina web] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Pagina web] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Pagina web] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Pagina web] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Pagina web] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Pagina web] SET  MULTI_USER 
GO
ALTER DATABASE [Pagina web] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Pagina web] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Pagina web] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Pagina web] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [Pagina web]
GO
/****** Object:  Table [dbo].[Table_Email]    Script Date: 03/03/2018 11:06:30 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Table_Email](
	[Email] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Table_Email] PRIMARY KEY CLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Table_Empleados]    Script Date: 03/03/2018 11:06:30 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Table_Empleados](
	[Profesionistas] [int] NOT NULL,
 CONSTRAINT [PK_Table_Empleados] PRIMARY KEY CLUSTERED 
(
	[Profesionistas] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Table_ID]    Script Date: 03/03/2018 11:06:30 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Table_ID](
	[Id] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Table_ID] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Table_Nombre]    Script Date: 03/03/2018 11:06:30 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Table_Nombre](
	[Nombre] [varchar](max) NOT NULL,
	[ApellidoPaterno] [varchar](50) NOT NULL,
	[ApellidoMaterno] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Table_Nombre] PRIMARY KEY CLUSTERED 
(
	[ApellidoPaterno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Table_Sexo]    Script Date: 03/03/2018 11:06:30 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Table_Sexo](
	[Masculino] [nchar](10) NOT NULL,
	[Femenino] [nchar](10) NOT NULL,
 CONSTRAINT [PK_Table_Sexo] PRIMARY KEY CLUSTERED 
(
	[Masculino] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TableSexo]    Script Date: 03/03/2018 11:06:30 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TableSexo](
	[Hombre] [varchar](50) NOT NULL,
	[Mujer] [varchar](50) NOT NULL,
	[ID] [varchar](50) NOT NULL,
 CONSTRAINT [PK_TableSexo] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Table_Email]    Script Date: 03/03/2018 11:06:30 a.m. ******/
CREATE NONCLUSTERED INDEX [IX_Table_Email] ON [dbo].[Table_Email]
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Table_ID]    Script Date: 03/03/2018 11:06:30 a.m. ******/
CREATE NONCLUSTERED INDEX [IX_Table_ID] ON [dbo].[Table_ID]
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [Pagina web] SET  READ_WRITE 
GO
