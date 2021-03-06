USE [master]
GO
/****** Object:  Database [Escuela]    Script Date: 27/05/2018 06:10:06 p. m. ******/
CREATE DATABASE [Escuela]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Escuela', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\Escuela.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Escuela_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\Escuela_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Escuela] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Escuela].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Escuela] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Escuela] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Escuela] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Escuela] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Escuela] SET ARITHABORT OFF 
GO
ALTER DATABASE [Escuela] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Escuela] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [Escuela] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Escuela] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Escuela] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Escuela] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Escuela] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Escuela] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Escuela] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Escuela] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Escuela] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Escuela] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Escuela] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Escuela] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Escuela] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Escuela] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Escuela] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Escuela] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Escuela] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Escuela] SET  MULTI_USER 
GO
ALTER DATABASE [Escuela] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Escuela] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Escuela] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Escuela] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [Escuela]
GO
/****** Object:  User [kito]    Script Date: 27/05/2018 06:10:06 p. m. ******/
CREATE USER [kito] FOR LOGIN [kito] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[Alumnos]    Script Date: 27/05/2018 06:10:06 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Alumnos](
	[Matricula] [int] IDENTITY(2000000,1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Carrera] [nchar](10) NOT NULL,
	[Semestre] [int] NOT NULL,
 CONSTRAINT [PK_Alumnos] PRIMARY KEY CLUSTERED 
(
	[Matricula] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Horario]    Script Date: 27/05/2018 06:10:06 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Horario](
	[id_Horario] [int] IDENTITY(1,1) NOT NULL,
	[hora_inicio] [time](7) NOT NULL,
	[idMaterias] [int] NOT NULL,
 CONSTRAINT [PK_Horario] PRIMARY KEY CLUSTERED 
(
	[id_Horario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HorarioAlumno]    Script Date: 27/05/2018 06:10:06 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HorarioAlumno](
	[id_horarioAlumno] [int] IDENTITY(1,1) NOT NULL,
	[matricula] [int] NOT NULL,
	[id_horario] [int] NOT NULL,
 CONSTRAINT [PK_HorarioAlumno] PRIMARY KEY CLUSTERED 
(
	[id_horarioAlumno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Maestros]    Script Date: 27/05/2018 06:10:06 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Maestros](
	[MatriculaM] [int] IDENTITY(3000000,1) NOT NULL,
	[Nombre] [varchar](50) NULL,
 CONSTRAINT [PK_Maestros] PRIMARY KEY CLUSTERED 
(
	[MatriculaM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Materia]    Script Date: 27/05/2018 06:10:06 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Materia](
	[Id_Materias] [int] IDENTITY(1,1) NOT NULL,
	[MatriculaM] [int] NOT NULL,
	[Materia] [varchar](50) NOT NULL,
	[Dias] [varchar](50) NOT NULL,
	[Minutos] [int] NULL,
 CONSTRAINT [PK_Materia] PRIMARY KEY CLUSTERED 
(
	[Id_Materias] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Alumnos] ON 

INSERT [dbo].[Alumnos] ([Matricula], [Nombre], [Carrera], [Semestre]) VALUES (2000000, N'Humberto', N'LSTI      ', 3)
INSERT [dbo].[Alumnos] ([Matricula], [Nombre], [Carrera], [Semestre]) VALUES (2000001, N'Amauri', N'LMAD      ', 2)
INSERT [dbo].[Alumnos] ([Matricula], [Nombre], [Carrera], [Semestre]) VALUES (2000002, N'Fernando', N'LCC       ', 6)
INSERT [dbo].[Alumnos] ([Matricula], [Nombre], [Carrera], [Semestre]) VALUES (2000003, N'Gabriela', N'LM        ', 7)
INSERT [dbo].[Alumnos] ([Matricula], [Nombre], [Carrera], [Semestre]) VALUES (2000005, N'Marco', N'LSTI      ', 4)
INSERT [dbo].[Alumnos] ([Matricula], [Nombre], [Carrera], [Semestre]) VALUES (2000006, N'Paola', N'LF        ', 6)
INSERT [dbo].[Alumnos] ([Matricula], [Nombre], [Carrera], [Semestre]) VALUES (2000007, N'Samara', N'LMAD      ', 2)
INSERT [dbo].[Alumnos] ([Matricula], [Nombre], [Carrera], [Semestre]) VALUES (2000008, N'Saul', N'LSTI      ', 4)
INSERT [dbo].[Alumnos] ([Matricula], [Nombre], [Carrera], [Semestre]) VALUES (2000009, N'Selene', N'LMAD      ', 4)
SET IDENTITY_INSERT [dbo].[Alumnos] OFF
SET IDENTITY_INSERT [dbo].[Horario] ON 

INSERT [dbo].[Horario] ([id_Horario], [hora_inicio], [idMaterias]) VALUES (1, CAST(0x0700E80A7E8E0000 AS Time), 1)
INSERT [dbo].[Horario] ([id_Horario], [hora_inicio], [idMaterias]) VALUES (2, CAST(0x0700E03495640000 AS Time), 4)
INSERT [dbo].[Horario] ([id_Horario], [hora_inicio], [idMaterias]) VALUES (3, CAST(0x0700E03495640000 AS Time), 7)
INSERT [dbo].[Horario] ([id_Horario], [hora_inicio], [idMaterias]) VALUES (4, CAST(0x0700E03495640000 AS Time), 10)
INSERT [dbo].[Horario] ([id_Horario], [hora_inicio], [idMaterias]) VALUES (6, CAST(0x070080461C860000 AS Time), 9)
INSERT [dbo].[Horario] ([id_Horario], [hora_inicio], [idMaterias]) VALUES (7, CAST(0x070080461C860000 AS Time), 8)
INSERT [dbo].[Horario] ([id_Horario], [hora_inicio], [idMaterias]) VALUES (8, CAST(0x0700E80A7E8E0000 AS Time), 3)
INSERT [dbo].[Horario] ([id_Horario], [hora_inicio], [idMaterias]) VALUES (9, CAST(0x070050CFDF960000 AS Time), 6)
INSERT [dbo].[Horario] ([id_Horario], [hora_inicio], [idMaterias]) VALUES (10, CAST(0x0700D85EAC3A0000 AS Time), 2)
SET IDENTITY_INSERT [dbo].[Horario] OFF
SET IDENTITY_INSERT [dbo].[HorarioAlumno] ON 

INSERT [dbo].[HorarioAlumno] ([id_horarioAlumno], [matricula], [id_horario]) VALUES (1, 2000000, 3)
INSERT [dbo].[HorarioAlumno] ([id_horarioAlumno], [matricula], [id_horario]) VALUES (2, 2000001, 2)
INSERT [dbo].[HorarioAlumno] ([id_horarioAlumno], [matricula], [id_horario]) VALUES (3, 2000002, 4)
INSERT [dbo].[HorarioAlumno] ([id_horarioAlumno], [matricula], [id_horario]) VALUES (4, 2000003, 1)
INSERT [dbo].[HorarioAlumno] ([id_horarioAlumno], [matricula], [id_horario]) VALUES (6, 2000005, 6)
INSERT [dbo].[HorarioAlumno] ([id_horarioAlumno], [matricula], [id_horario]) VALUES (7, 2000000, 7)
INSERT [dbo].[HorarioAlumno] ([id_horarioAlumno], [matricula], [id_horario]) VALUES (8, 2000007, 8)
INSERT [dbo].[HorarioAlumno] ([id_horarioAlumno], [matricula], [id_horario]) VALUES (9, 2000008, 9)
INSERT [dbo].[HorarioAlumno] ([id_horarioAlumno], [matricula], [id_horario]) VALUES (10, 2000009, 10)
SET IDENTITY_INSERT [dbo].[HorarioAlumno] OFF
SET IDENTITY_INSERT [dbo].[Maestros] ON 

INSERT [dbo].[Maestros] ([MatriculaM], [Nombre]) VALUES (3000000, N'Alberto')
INSERT [dbo].[Maestros] ([MatriculaM], [Nombre]) VALUES (3000001, N'Arturo')
INSERT [dbo].[Maestros] ([MatriculaM], [Nombre]) VALUES (3000002, N'Braulio')
INSERT [dbo].[Maestros] ([MatriculaM], [Nombre]) VALUES (3000003, N'Ricardo')
INSERT [dbo].[Maestros] ([MatriculaM], [Nombre]) VALUES (3000005, N'Miguel')
INSERT [dbo].[Maestros] ([MatriculaM], [Nombre]) VALUES (3000006, N'Oscar')
INSERT [dbo].[Maestros] ([MatriculaM], [Nombre]) VALUES (3000007, N'Osvaldo')
INSERT [dbo].[Maestros] ([MatriculaM], [Nombre]) VALUES (3000008, N'Romeo')
INSERT [dbo].[Maestros] ([MatriculaM], [Nombre]) VALUES (3000009, N'Rosa')
SET IDENTITY_INSERT [dbo].[Maestros] OFF
SET IDENTITY_INSERT [dbo].[Materia] ON 

INSERT [dbo].[Materia] ([Id_Materias], [MatriculaM], [Materia], [Dias], [Minutos]) VALUES (1, 3000000, N'SEGA', N'Miercoles', 180)
INSERT [dbo].[Materia] ([Id_Materias], [MatriculaM], [Materia], [Dias], [Minutos]) VALUES (2, 3000001, N'SF', N'Viernes', 150)
INSERT [dbo].[Materia] ([Id_Materias], [MatriculaM], [Materia], [Dias], [Minutos]) VALUES (3, 3000002, N'TELE3', N'Martes', 180)
INSERT [dbo].[Materia] ([Id_Materias], [MatriculaM], [Materia], [Dias], [Minutos]) VALUES (4, 3000003, N'Algebra Lineal', N'Lunes', 120)
INSERT [dbo].[Materia] ([Id_Materias], [MatriculaM], [Materia], [Dias], [Minutos]) VALUES (6, 3000005, N'Lab DOO', N'Miercoles', 120)
INSERT [dbo].[Materia] ([Id_Materias], [MatriculaM], [Materia], [Dias], [Minutos]) VALUES (7, 3000006, N'Algebra Lineal', N'Jueves', 120)
INSERT [dbo].[Materia] ([Id_Materias], [MatriculaM], [Materia], [Dias], [Minutos]) VALUES (8, 3000007, N'POO', N'Lunes', 180)
INSERT [dbo].[Materia] ([Id_Materias], [MatriculaM], [Materia], [Dias], [Minutos]) VALUES (9, 3000008, N'DOO', N'Miercoles', 180)
INSERT [dbo].[Materia] ([Id_Materias], [MatriculaM], [Materia], [Dias], [Minutos]) VALUES (10, 3000009, N'Calculo', N'Viernes', 120)
SET IDENTITY_INSERT [dbo].[Materia] OFF
ALTER TABLE [dbo].[Horario]  WITH CHECK ADD  CONSTRAINT [FK_Horario_Materia] FOREIGN KEY([idMaterias])
REFERENCES [dbo].[Materia] ([Id_Materias])
GO
ALTER TABLE [dbo].[Horario] CHECK CONSTRAINT [FK_Horario_Materia]
GO
ALTER TABLE [dbo].[HorarioAlumno]  WITH CHECK ADD  CONSTRAINT [FK_HorarioAlumno_Alumnos] FOREIGN KEY([matricula])
REFERENCES [dbo].[Alumnos] ([Matricula])
GO
ALTER TABLE [dbo].[HorarioAlumno] CHECK CONSTRAINT [FK_HorarioAlumno_Alumnos]
GO
ALTER TABLE [dbo].[HorarioAlumno]  WITH CHECK ADD  CONSTRAINT [FK_HorarioAlumno_Horario] FOREIGN KEY([id_horario])
REFERENCES [dbo].[Horario] ([id_Horario])
GO
ALTER TABLE [dbo].[HorarioAlumno] CHECK CONSTRAINT [FK_HorarioAlumno_Horario]
GO
ALTER TABLE [dbo].[Materia]  WITH CHECK ADD  CONSTRAINT [FK_Materia_Maestros] FOREIGN KEY([MatriculaM])
REFERENCES [dbo].[Maestros] ([MatriculaM])
GO
ALTER TABLE [dbo].[Materia] CHECK CONSTRAINT [FK_Materia_Maestros]
GO
USE [master]
GO
ALTER DATABASE [Escuela] SET  READ_WRITE 
GO
