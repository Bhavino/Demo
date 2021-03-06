USE [master]
GO
/****** Object:  Database [DemoDB]    Script Date: 25/09/2018 4:14:12 PM ******/
CREATE DATABASE [DemoDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DemoDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\DemoDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DemoDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\DemoDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [DemoDB] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DemoDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DemoDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DemoDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DemoDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DemoDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DemoDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [DemoDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DemoDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DemoDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DemoDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DemoDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DemoDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DemoDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DemoDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DemoDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DemoDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DemoDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DemoDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DemoDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DemoDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DemoDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DemoDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DemoDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DemoDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DemoDB] SET  MULTI_USER 
GO
ALTER DATABASE [DemoDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DemoDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DemoDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DemoDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DemoDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DemoDB] SET QUERY_STORE = OFF
GO
USE [DemoDB]
GO
/****** Object:  Table [dbo].[People]    Script Date: 25/09/2018 4:14:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[People](
	[PersonID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Sex] [nvarchar](max) NULL,
	[DOB] [datetime] NULL,
	[Address] [nvarchar](max) NULL,
	[Money] [decimal](19, 4) NULL,
 CONSTRAINT [PK_People] PRIMARY KEY CLUSTERED 
(
	[PersonID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[People] ON 

INSERT [dbo].[People] ([PersonID], [Name], [Sex], [DOB], [Address], [Money]) VALUES (2054, N'Gavin', N'Male', CAST(N'2002-02-02T00:00:00.000' AS DateTime), N'Cyprus', CAST(192.0000 AS Decimal(19, 4)))
INSERT [dbo].[People] ([PersonID], [Name], [Sex], [DOB], [Address], [Money]) VALUES (2055, N'Cat', N'Female', CAST(N'2002-02-02T00:00:00.000' AS DateTime), N'Algeria', CAST(46.0000 AS Decimal(19, 4)))
INSERT [dbo].[People] ([PersonID], [Name], [Sex], [DOB], [Address], [Money]) VALUES (2056, N'Miguelina77', N'Male', CAST(N'2002-02-02T00:00:00.000' AS DateTime), N'Mauritania', CAST(7.0000 AS Decimal(19, 4)))
INSERT [dbo].[People] ([PersonID], [Name], [Sex], [DOB], [Address], [Money]) VALUES (2057, N'Cherise', N'Male', CAST(N'2002-02-02T00:00:00.000' AS DateTime), N'Chinaman', CAST(34.0000 AS Decimal(19, 4)))
INSERT [dbo].[People] ([PersonID], [Name], [Sex], [DOB], [Address], [Money]) VALUES (2058, N'Australia', N'Male', CAST(N'2002-02-02T00:00:00.000' AS DateTime), N'Niger', CAST(1631.0000 AS Decimal(19, 4)))
INSERT [dbo].[People] ([PersonID], [Name], [Sex], [DOB], [Address], [Money]) VALUES (2059, N'Gilberto', N'Female', CAST(N'2002-02-02T00:00:00.000' AS DateTime), N'Mexico', CAST(102.0000 AS Decimal(19, 4)))
INSERT [dbo].[People] ([PersonID], [Name], [Sex], [DOB], [Address], [Money]) VALUES (2060, N'Marcy', N'Male', CAST(N'2002-02-02T00:00:00.000' AS DateTime), N'San Marino', CAST(78.0000 AS Decimal(19, 4)))
INSERT [dbo].[People] ([PersonID], [Name], [Sex], [DOB], [Address], [Money]) VALUES (2061, N'Gilberto', N'Male', CAST(N'2002-02-02T00:00:00.000' AS DateTime), N'Egypt', CAST(200.0000 AS Decimal(19, 4)))
INSERT [dbo].[People] ([PersonID], [Name], [Sex], [DOB], [Address], [Money]) VALUES (2062, N'Miguelina', N'Female', CAST(N'2002-02-02T00:00:00.000' AS DateTime), N'Greece', CAST(40.0000 AS Decimal(19, 4)))
INSERT [dbo].[People] ([PersonID], [Name], [Sex], [DOB], [Address], [Money]) VALUES (2063, N'Kitty', N'Female', CAST(N'2002-02-02T00:00:00.000' AS DateTime), N'Thailand', CAST(112.0000 AS Decimal(19, 4)))
INSERT [dbo].[People] ([PersonID], [Name], [Sex], [DOB], [Address], [Money]) VALUES (2064, N'Darlene', N'Female', CAST(N'2002-02-02T00:00:00.000' AS DateTime), N'Netherlands', CAST(2.0000 AS Decimal(19, 4)))
INSERT [dbo].[People] ([PersonID], [Name], [Sex], [DOB], [Address], [Money]) VALUES (2065, N'Aron', N'Male', CAST(N'2002-02-02T00:00:00.000' AS DateTime), N'Swaziland', CAST(175.0000 AS Decimal(19, 4)))
INSERT [dbo].[People] ([PersonID], [Name], [Sex], [DOB], [Address], [Money]) VALUES (2066, N'Elayne', N'Male', CAST(N'2002-02-02T00:00:00.000' AS DateTime), N'Turks &amp; Caicos', CAST(3.0000 AS Decimal(19, 4)))
INSERT [dbo].[People] ([PersonID], [Name], [Sex], [DOB], [Address], [Money]) VALUES (2067, N'Malinda', N'Male', CAST(N'2002-02-02T00:00:00.000' AS DateTime), N'Czech Republic', CAST(43.0000 AS Decimal(19, 4)))
INSERT [dbo].[People] ([PersonID], [Name], [Sex], [DOB], [Address], [Money]) VALUES (2068, N'Miguelina', N'Female', CAST(N'2002-02-02T00:00:00.000' AS DateTime), N'Niger', CAST(67.0000 AS Decimal(19, 4)))
INSERT [dbo].[People] ([PersonID], [Name], [Sex], [DOB], [Address], [Money]) VALUES (2069, N'Armanda', N'Male', CAST(N'2002-02-02T00:00:00.000' AS DateTime), N'Lesotho', CAST(174.0000 AS Decimal(19, 4)))
INSERT [dbo].[People] ([PersonID], [Name], [Sex], [DOB], [Address], [Money]) VALUES (2070, N'Sharolyn', N'Male', CAST(N'2002-02-02T00:00:00.000' AS DateTime), N'United Kingdom', CAST(170.0000 AS Decimal(19, 4)))
INSERT [dbo].[People] ([PersonID], [Name], [Sex], [DOB], [Address], [Money]) VALUES (2071, N'Jerica', N'Male', CAST(N'2002-02-02T00:00:00.000' AS DateTime), N'Switzerland', CAST(182.0000 AS Decimal(19, 4)))
INSERT [dbo].[People] ([PersonID], [Name], [Sex], [DOB], [Address], [Money]) VALUES (2072, N'Jerica', N'Male', CAST(N'2002-02-02T00:00:00.000' AS DateTime), N'Germany', CAST(29.0000 AS Decimal(19, 4)))
INSERT [dbo].[People] ([PersonID], [Name], [Sex], [DOB], [Address], [Money]) VALUES (2073, N'Miguelina', N'Male', CAST(N'2002-02-02T00:00:00.000' AS DateTime), N'United States Minor Outlying Islands', CAST(47.0000 AS Decimal(19, 4)))
INSERT [dbo].[People] ([PersonID], [Name], [Sex], [DOB], [Address], [Money]) VALUES (2074, N'Shawnta', N'Male', CAST(N'2002-02-02T00:00:00.000' AS DateTime), N'Congo', CAST(142.0000 AS Decimal(19, 4)))
INSERT [dbo].[People] ([PersonID], [Name], [Sex], [DOB], [Address], [Money]) VALUES (2075, N'Malinda', N'Male', CAST(N'2002-02-02T00:00:00.000' AS DateTime), N'Trinidad &amp; Tobago', CAST(112.0000 AS Decimal(19, 4)))
INSERT [dbo].[People] ([PersonID], [Name], [Sex], [DOB], [Address], [Money]) VALUES (2076, N'Gilberto', N'Male', CAST(N'2002-02-02T00:00:00.000' AS DateTime), N'Peru', CAST(40.0000 AS Decimal(19, 4)))
INSERT [dbo].[People] ([PersonID], [Name], [Sex], [DOB], [Address], [Money]) VALUES (2077, N'Arleen', N'Male', CAST(N'2002-02-02T00:00:00.000' AS DateTime), N'Ukraine', CAST(192.0000 AS Decimal(19, 4)))
INSERT [dbo].[People] ([PersonID], [Name], [Sex], [DOB], [Address], [Money]) VALUES (2078, N'Jaclyn', N'Male', CAST(N'2002-02-02T00:00:00.000' AS DateTime), N'Georgia', CAST(97.0000 AS Decimal(19, 4)))
INSERT [dbo].[People] ([PersonID], [Name], [Sex], [DOB], [Address], [Money]) VALUES (2079, N'Miguelina', N'Female', CAST(N'2002-02-02T00:00:00.000' AS DateTime), N'Niger', CAST(4.0000 AS Decimal(19, 4)))
INSERT [dbo].[People] ([PersonID], [Name], [Sex], [DOB], [Address], [Money]) VALUES (2080, N'Randi66', N'Male', CAST(N'2002-02-02T00:00:00.000' AS DateTime), N'Haiti', CAST(190.0000 AS Decimal(19, 4)))
INSERT [dbo].[People] ([PersonID], [Name], [Sex], [DOB], [Address], [Money]) VALUES (2081, N'Tonette', N'Male', CAST(N'2002-02-02T00:00:00.000' AS DateTime), N'South Africa', CAST(132.0000 AS Decimal(19, 4)))
INSERT [dbo].[People] ([PersonID], [Name], [Sex], [DOB], [Address], [Money]) VALUES (2082, N'Cherise', N'Male', CAST(N'2002-02-02T00:00:00.000' AS DateTime), N'Indonesia', CAST(146.0000 AS Decimal(19, 4)))
INSERT [dbo].[People] ([PersonID], [Name], [Sex], [DOB], [Address], [Money]) VALUES (2083, N'Trena', N'Female', CAST(N'2002-02-02T00:00:00.000' AS DateTime), N'Russia', CAST(38.0000 AS Decimal(19, 4)))
INSERT [dbo].[People] ([PersonID], [Name], [Sex], [DOB], [Address], [Money]) VALUES (2084, N'Aron', N'Male', CAST(N'2002-02-02T00:00:00.000' AS DateTime), N'Denmark', CAST(122.0000 AS Decimal(19, 4)))
INSERT [dbo].[People] ([PersonID], [Name], [Sex], [DOB], [Address], [Money]) VALUES (2085, N'Tonette', N'Male', CAST(N'2002-02-02T00:00:00.000' AS DateTime), N'Ethiopia', CAST(133.0000 AS Decimal(19, 4)))
INSERT [dbo].[People] ([PersonID], [Name], [Sex], [DOB], [Address], [Money]) VALUES (2086, N'Miguelina', N'Male', CAST(N'2002-02-02T00:00:00.000' AS DateTime), N'Costa Rica', CAST(19.0000 AS Decimal(19, 4)))
INSERT [dbo].[People] ([PersonID], [Name], [Sex], [DOB], [Address], [Money]) VALUES (2087, N'Edison', N'Female', CAST(N'2002-02-02T00:00:00.000' AS DateTime), N'Iran', CAST(87.0000 AS Decimal(19, 4)))
INSERT [dbo].[People] ([PersonID], [Name], [Sex], [DOB], [Address], [Money]) VALUES (2088, N'Trena', N'Female', CAST(N'2002-02-02T00:00:00.000' AS DateTime), N'Algeria', CAST(63.0000 AS Decimal(19, 4)))
INSERT [dbo].[People] ([PersonID], [Name], [Sex], [DOB], [Address], [Money]) VALUES (2089, N'Gilberto', N'Male', CAST(N'2002-02-02T00:00:00.000' AS DateTime), N'Jordan', CAST(122.0000 AS Decimal(19, 4)))
INSERT [dbo].[People] ([PersonID], [Name], [Sex], [DOB], [Address], [Money]) VALUES (2090, N'Cherise', N'Female', CAST(N'2002-02-02T00:00:00.000' AS DateTime), N'Denmark', CAST(35.0000 AS Decimal(19, 4)))
INSERT [dbo].[People] ([PersonID], [Name], [Sex], [DOB], [Address], [Money]) VALUES (2091, N'Jerrica', N'Female', CAST(N'2002-02-02T00:00:00.000' AS DateTime), N'Estonia', CAST(174.0000 AS Decimal(19, 4)))
INSERT [dbo].[People] ([PersonID], [Name], [Sex], [DOB], [Address], [Money]) VALUES (2092, N'Marcy', N'Male', CAST(N'2002-02-02T00:00:00.000' AS DateTime), N'Isle of Man', CAST(92.0000 AS Decimal(19, 4)))
INSERT [dbo].[People] ([PersonID], [Name], [Sex], [DOB], [Address], [Money]) VALUES (2093, N'Rosalva', N'Male', CAST(N'2002-02-02T00:00:00.000' AS DateTime), N'Cambodia', CAST(142.0000 AS Decimal(19, 4)))
INSERT [dbo].[People] ([PersonID], [Name], [Sex], [DOB], [Address], [Money]) VALUES (2094, N'Shawnta', N'Female', CAST(N'2002-02-02T00:00:00.000' AS DateTime), N'South Korea', CAST(167.0000 AS Decimal(19, 4)))
INSERT [dbo].[People] ([PersonID], [Name], [Sex], [DOB], [Address], [Money]) VALUES (2095, N'Homer', N'Male', CAST(N'2002-02-02T00:00:00.000' AS DateTime), N'Nepal', CAST(1.0000 AS Decimal(19, 4)))
INSERT [dbo].[People] ([PersonID], [Name], [Sex], [DOB], [Address], [Money]) VALUES (2096, N'Burl', N'Male', CAST(N'2002-02-02T00:00:00.000' AS DateTime), N'Turkmenistan', CAST(15.0000 AS Decimal(19, 4)))
INSERT [dbo].[People] ([PersonID], [Name], [Sex], [DOB], [Address], [Money]) VALUES (2097, N'Tonette', N'Male', CAST(N'2002-02-02T00:00:00.000' AS DateTime), N'Singapore', CAST(121.0000 AS Decimal(19, 4)))
INSERT [dbo].[People] ([PersonID], [Name], [Sex], [DOB], [Address], [Money]) VALUES (2098, N'Jaclyn', N'Female', CAST(N'2002-02-02T00:00:00.000' AS DateTime), N'Iceland', CAST(5.0000 AS Decimal(19, 4)))
INSERT [dbo].[People] ([PersonID], [Name], [Sex], [DOB], [Address], [Money]) VALUES (2099, N'Arleen', N'Female', CAST(N'2002-02-02T00:00:00.000' AS DateTime), N'Denmark', CAST(94.0000 AS Decimal(19, 4)))
INSERT [dbo].[People] ([PersonID], [Name], [Sex], [DOB], [Address], [Money]) VALUES (2100, N'Jerica', N'Male', CAST(N'2002-02-02T00:00:00.000' AS DateTime), N'Australia', CAST(67.0000 AS Decimal(19, 4)))
INSERT [dbo].[People] ([PersonID], [Name], [Sex], [DOB], [Address], [Money]) VALUES (2101, N'Ossie', N'Female', CAST(N'2002-02-02T00:00:00.000' AS DateTime), N'Anguilla', CAST(173.0000 AS Decimal(19, 4)))
INSERT [dbo].[People] ([PersonID], [Name], [Sex], [DOB], [Address], [Money]) VALUES (2102, N'Jaclyn', N'Male', CAST(N'2002-02-02T00:00:00.000' AS DateTime), N'Trinidad &amp; Tobago', CAST(145.0000 AS Decimal(19, 4)))
INSERT [dbo].[People] ([PersonID], [Name], [Sex], [DOB], [Address], [Money]) VALUES (2103, N'Rosalva', N'Male', CAST(N'2002-02-02T00:00:00.000' AS DateTime), N'Ghana', CAST(182.0000 AS Decimal(19, 4)))
INSERT [dbo].[People] ([PersonID], [Name], [Sex], [DOB], [Address], [Money]) VALUES (2104, N'Gavin', N'Female', CAST(N'2002-02-02T00:00:00.000' AS DateTime), N'Bolivia', CAST(111.0000 AS Decimal(19, 4)))
INSERT [dbo].[People] ([PersonID], [Name], [Sex], [DOB], [Address], [Money]) VALUES (2105, N'Arleen', N'Female', CAST(N'2002-02-02T00:00:00.000' AS DateTime), N'Guernsey', CAST(113.0000 AS Decimal(19, 4)))
INSERT [dbo].[People] ([PersonID], [Name], [Sex], [DOB], [Address], [Money]) VALUES (2106, N'Janel', N'Female', CAST(N'2002-02-02T00:00:00.000' AS DateTime), N'Faroe Islands', CAST(173.0000 AS Decimal(19, 4)))
INSERT [dbo].[People] ([PersonID], [Name], [Sex], [DOB], [Address], [Money]) VALUES (2107, N'Hue', N'Male', CAST(N'2002-02-02T00:00:00.000' AS DateTime), N'Peru', CAST(10.0000 AS Decimal(19, 4)))
INSERT [dbo].[People] ([PersonID], [Name], [Sex], [DOB], [Address], [Money]) VALUES (2108, N'Jerica', N'Female', CAST(N'2002-02-02T00:00:00.000' AS DateTime), N'Togo', CAST(55.0000 AS Decimal(19, 4)))
INSERT [dbo].[People] ([PersonID], [Name], [Sex], [DOB], [Address], [Money]) VALUES (2109, N'Cherise', N'Female', CAST(N'2002-02-02T00:00:00.000' AS DateTime), N'Iran', CAST(124.0000 AS Decimal(19, 4)))
INSERT [dbo].[People] ([PersonID], [Name], [Sex], [DOB], [Address], [Money]) VALUES (2110, N'Cherise', N'Male', CAST(N'2002-02-02T00:00:00.000' AS DateTime), N'Bosnia &amp; Herzegovina', CAST(47.0000 AS Decimal(19, 4)))
INSERT [dbo].[People] ([PersonID], [Name], [Sex], [DOB], [Address], [Money]) VALUES (2111, N'Burl', N'Female', CAST(N'2002-02-02T00:00:00.000' AS DateTime), N'Bahrain', CAST(20.0000 AS Decimal(19, 4)))
INSERT [dbo].[People] ([PersonID], [Name], [Sex], [DOB], [Address], [Money]) VALUES (2112, N'Tonette', N'Male', CAST(N'2002-02-02T00:00:00.000' AS DateTime), N'Ethiopia', CAST(161.0000 AS Decimal(19, 4)))
INSERT [dbo].[People] ([PersonID], [Name], [Sex], [DOB], [Address], [Money]) VALUES (2113, N'Brittaney', N'Male', CAST(N'2002-02-02T00:00:00.000' AS DateTime), N'Gibraltar', CAST(165.0000 AS Decimal(19, 4)))
INSERT [dbo].[People] ([PersonID], [Name], [Sex], [DOB], [Address], [Money]) VALUES (2114, N'Marcy', N'Male', CAST(N'2002-02-02T00:00:00.000' AS DateTime), N'Kuwait', CAST(146.0000 AS Decimal(19, 4)))
INSERT [dbo].[People] ([PersonID], [Name], [Sex], [DOB], [Address], [Money]) VALUES (2115, N'Tonette', N'Female', CAST(N'2002-02-02T00:00:00.000' AS DateTime), N'St. Lucia', CAST(2.0000 AS Decimal(19, 4)))
INSERT [dbo].[People] ([PersonID], [Name], [Sex], [DOB], [Address], [Money]) VALUES (2116, N'Trena', N'Male', CAST(N'2002-02-02T00:00:00.000' AS DateTime), N'Brazil', CAST(57.0000 AS Decimal(19, 4)))
INSERT [dbo].[People] ([PersonID], [Name], [Sex], [DOB], [Address], [Money]) VALUES (2117, N'Rosalva', N'Female', CAST(N'2002-02-02T00:00:00.000' AS DateTime), N'Suriname', CAST(14.0000 AS Decimal(19, 4)))
INSERT [dbo].[People] ([PersonID], [Name], [Sex], [DOB], [Address], [Money]) VALUES (2118, N'Ossie', N'Female', CAST(N'2002-02-02T00:00:00.000' AS DateTime), N'Sweden', CAST(80.0000 AS Decimal(19, 4)))
INSERT [dbo].[People] ([PersonID], [Name], [Sex], [DOB], [Address], [Money]) VALUES (2119, N'Aron', N'Female', CAST(N'2002-02-02T00:00:00.000' AS DateTime), N'Latvia', CAST(63.0000 AS Decimal(19, 4)))
INSERT [dbo].[People] ([PersonID], [Name], [Sex], [DOB], [Address], [Money]) VALUES (2120, N'Cherise', N'Male', CAST(N'2002-02-02T00:00:00.000' AS DateTime), N'Latvia', CAST(46.0000 AS Decimal(19, 4)))
INSERT [dbo].[People] ([PersonID], [Name], [Sex], [DOB], [Address], [Money]) VALUES (2121, N'Randi', N'Male', CAST(N'2002-02-02T00:00:00.000' AS DateTime), N'Djibouti', CAST(144.0000 AS Decimal(19, 4)))
INSERT [dbo].[People] ([PersonID], [Name], [Sex], [DOB], [Address], [Money]) VALUES (2122, N'Shawnta', N'Male', CAST(N'2002-02-02T00:00:00.000' AS DateTime), N'Malaysia', CAST(185.0000 AS Decimal(19, 4)))
INSERT [dbo].[People] ([PersonID], [Name], [Sex], [DOB], [Address], [Money]) VALUES (2123, N'Gilberto', N'Female', CAST(N'2002-02-02T00:00:00.000' AS DateTime), N'Bahamas', CAST(10.0000 AS Decimal(19, 4)))
INSERT [dbo].[People] ([PersonID], [Name], [Sex], [DOB], [Address], [Money]) VALUES (2124, N'Brittaney', N'Female', CAST(N'2002-02-02T00:00:00.000' AS DateTime), N'Turkey', CAST(193.0000 AS Decimal(19, 4)))
INSERT [dbo].[People] ([PersonID], [Name], [Sex], [DOB], [Address], [Money]) VALUES (2125, N'Marcy', N'Male', CAST(N'2002-02-02T00:00:00.000' AS DateTime), N'Montserrat', CAST(171.0000 AS Decimal(19, 4)))
INSERT [dbo].[People] ([PersonID], [Name], [Sex], [DOB], [Address], [Money]) VALUES (2126, N'Shawnta', N'Female', CAST(N'2002-02-02T00:00:00.000' AS DateTime), N'Luxembourg', CAST(61.0000 AS Decimal(19, 4)))
INSERT [dbo].[People] ([PersonID], [Name], [Sex], [DOB], [Address], [Money]) VALUES (2127, N'Jaclyn', N'Male', CAST(N'2002-02-02T00:00:00.000' AS DateTime), N'Iceland', CAST(52.0000 AS Decimal(19, 4)))
INSERT [dbo].[People] ([PersonID], [Name], [Sex], [DOB], [Address], [Money]) VALUES (2128, N'Brittaney', N'Male', CAST(N'2002-02-02T00:00:00.000' AS DateTime), N'Liechtenstein', CAST(150.0000 AS Decimal(19, 4)))
INSERT [dbo].[People] ([PersonID], [Name], [Sex], [DOB], [Address], [Money]) VALUES (2129, N'Hue', N'Male', CAST(N'2002-02-02T00:00:00.000' AS DateTime), N'Panama', CAST(102.0000 AS Decimal(19, 4)))
INSERT [dbo].[People] ([PersonID], [Name], [Sex], [DOB], [Address], [Money]) VALUES (2130, N'Tonette', N'Male', CAST(N'2002-02-02T00:00:00.000' AS DateTime), N'Taiwan', CAST(158.0000 AS Decimal(19, 4)))
INSERT [dbo].[People] ([PersonID], [Name], [Sex], [DOB], [Address], [Money]) VALUES (2131, N'Darlene', N'Female', CAST(N'2002-02-02T00:00:00.000' AS DateTime), N'Turkmenistan', CAST(39.0000 AS Decimal(19, 4)))
INSERT [dbo].[People] ([PersonID], [Name], [Sex], [DOB], [Address], [Money]) VALUES (2132, N'Deidre', N'Female', CAST(N'2002-02-02T00:00:00.000' AS DateTime), N'Pakistan', CAST(147.0000 AS Decimal(19, 4)))
INSERT [dbo].[People] ([PersonID], [Name], [Sex], [DOB], [Address], [Money]) VALUES (2133, N'Brittaney', N'Male', CAST(N'2002-02-02T00:00:00.000' AS DateTime), N'United Kingdom', CAST(153.0000 AS Decimal(19, 4)))
INSERT [dbo].[People] ([PersonID], [Name], [Sex], [DOB], [Address], [Money]) VALUES (2134, N'Burl', N'Female', CAST(N'2002-02-02T00:00:00.000' AS DateTime), N'Cape Verde', CAST(84.0000 AS Decimal(19, 4)))
INSERT [dbo].[People] ([PersonID], [Name], [Sex], [DOB], [Address], [Money]) VALUES (2135, N'Darlene', N'Female', CAST(N'2002-02-02T00:00:00.000' AS DateTime), N'Malaysia', CAST(20.0000 AS Decimal(19, 4)))
INSERT [dbo].[People] ([PersonID], [Name], [Sex], [DOB], [Address], [Money]) VALUES (2136, N'Adelaide', N'John', CAST(N'2002-02-02T00:00:00.000' AS DateTime), N'Hong Kong', CAST(57.0000 AS Decimal(19, 4)))
INSERT [dbo].[People] ([PersonID], [Name], [Sex], [DOB], [Address], [Money]) VALUES (2137, N'Brittaney', N'Male', CAST(N'2002-02-02T00:00:00.000' AS DateTime), N'China', CAST(32.0000 AS Decimal(19, 4)))
INSERT [dbo].[People] ([PersonID], [Name], [Sex], [DOB], [Address], [Money]) VALUES (2138, N'Trena', N'Female', CAST(N'2002-02-02T00:00:00.000' AS DateTime), N'Russia', CAST(94.0000 AS Decimal(19, 4)))
INSERT [dbo].[People] ([PersonID], [Name], [Sex], [DOB], [Address], [Money]) VALUES (2139, N'Janel', N'Female', CAST(N'2002-02-02T00:00:00.000' AS DateTime), N'China', CAST(8.0000 AS Decimal(19, 4)))
INSERT [dbo].[People] ([PersonID], [Name], [Sex], [DOB], [Address], [Money]) VALUES (2140, N'Jerica', N'Female', CAST(N'2002-02-02T00:00:00.000' AS DateTime), N'Anguilla', CAST(13.0000 AS Decimal(19, 4)))
INSERT [dbo].[People] ([PersonID], [Name], [Sex], [DOB], [Address], [Money]) VALUES (2141, N'Gilberto', N'Female', CAST(N'2002-02-02T00:00:00.000' AS DateTime), N'Austria', CAST(190.0000 AS Decimal(19, 4)))
INSERT [dbo].[People] ([PersonID], [Name], [Sex], [DOB], [Address], [Money]) VALUES (2142, N'Adelaide', N'Female', CAST(N'2002-02-02T00:00:00.000' AS DateTime), N'Swaziland', CAST(8.0000 AS Decimal(19, 4)))
INSERT [dbo].[People] ([PersonID], [Name], [Sex], [DOB], [Address], [Money]) VALUES (2143, N'Arleen', N'Male', CAST(N'2002-02-02T00:00:00.000' AS DateTime), N'Bangladesh', CAST(151.0000 AS Decimal(19, 4)))
INSERT [dbo].[People] ([PersonID], [Name], [Sex], [DOB], [Address], [Money]) VALUES (2144, N'Shawnta', N'Male', CAST(N'2002-02-02T00:00:00.000' AS DateTime), N'Niger', CAST(129.0000 AS Decimal(19, 4)))
INSERT [dbo].[People] ([PersonID], [Name], [Sex], [DOB], [Address], [Money]) VALUES (2145, N'Sharolyn', N'Female', CAST(N'2002-02-02T00:00:00.000' AS DateTime), N'Sri Lanka', CAST(190.0000 AS Decimal(19, 4)))
INSERT [dbo].[People] ([PersonID], [Name], [Sex], [DOB], [Address], [Money]) VALUES (2146, N'Kitty', N'Female', CAST(N'2002-02-02T00:00:00.000' AS DateTime), N'Greece', CAST(151.0000 AS Decimal(19, 4)))
INSERT [dbo].[People] ([PersonID], [Name], [Sex], [DOB], [Address], [Money]) VALUES (2147, N'Hue', N'Male', CAST(N'2002-02-02T00:00:00.000' AS DateTime), N'Brunei', CAST(34.0000 AS Decimal(19, 4)))
INSERT [dbo].[People] ([PersonID], [Name], [Sex], [DOB], [Address], [Money]) VALUES (2148, N'Tonette', N'Female', CAST(N'2002-02-02T00:00:00.000' AS DateTime), N'French Polynesia', CAST(123.0000 AS Decimal(19, 4)))
INSERT [dbo].[People] ([PersonID], [Name], [Sex], [DOB], [Address], [Money]) VALUES (2149, N'Gavin', N'Male', CAST(N'2002-02-02T00:00:00.000' AS DateTime), N'Saudi Arabia', CAST(47.0000 AS Decimal(19, 4)))
INSERT [dbo].[People] ([PersonID], [Name], [Sex], [DOB], [Address], [Money]) VALUES (2150, N'Tonette', N'Female', CAST(N'2002-02-02T00:00:00.000' AS DateTime), N'Grenada', CAST(48.0000 AS Decimal(19, 4)))
INSERT [dbo].[People] ([PersonID], [Name], [Sex], [DOB], [Address], [Money]) VALUES (2151, N'Arleen', N'Female', CAST(N'2002-02-02T00:00:00.000' AS DateTime), N'Peru', CAST(8.0000 AS Decimal(19, 4)))
INSERT [dbo].[People] ([PersonID], [Name], [Sex], [DOB], [Address], [Money]) VALUES (2152, N'Kitty', N'Male', CAST(N'2002-02-02T00:00:00.000' AS DateTime), N'Aruba', CAST(190.0000 AS Decimal(19, 4)))
GO
INSERT [dbo].[People] ([PersonID], [Name], [Sex], [DOB], [Address], [Money]) VALUES (2153, N'Armanda', N'Male', CAST(N'2002-02-02T00:00:00.000' AS DateTime), N'Taiwan', CAST(21.0000 AS Decimal(19, 4)))
INSERT [dbo].[People] ([PersonID], [Name], [Sex], [DOB], [Address], [Money]) VALUES (2154, N'Janel', N'Male', CAST(N'2002-02-02T00:00:00.000' AS DateTime), N'Estonia', CAST(9.0000 AS Decimal(19, 4)))
INSERT [dbo].[People] ([PersonID], [Name], [Sex], [DOB], [Address], [Money]) VALUES (2155, N'Randi', N'Male', CAST(N'2002-02-02T00:00:00.000' AS DateTime), N'Burundi', CAST(32.0000 AS Decimal(19, 4)))
INSERT [dbo].[People] ([PersonID], [Name], [Sex], [DOB], [Address], [Money]) VALUES (2156, N'Miguelina', N'Female', CAST(N'2002-02-02T00:00:00.000' AS DateTime), N'Niger', CAST(102.0000 AS Decimal(19, 4)))
INSERT [dbo].[People] ([PersonID], [Name], [Sex], [DOB], [Address], [Money]) VALUES (2157, N'Edison', N'Female', CAST(N'2002-02-02T00:00:00.000' AS DateTime), N'Guyana', CAST(151.0000 AS Decimal(19, 4)))
INSERT [dbo].[People] ([PersonID], [Name], [Sex], [DOB], [Address], [Money]) VALUES (2158, N'Darlene', N'Female', CAST(N'2002-02-02T00:00:00.000' AS DateTime), N'Nepal', CAST(42.0000 AS Decimal(19, 4)))
INSERT [dbo].[People] ([PersonID], [Name], [Sex], [DOB], [Address], [Money]) VALUES (2159, N'Homer', N'Female', CAST(N'2002-02-02T00:00:00.000' AS DateTime), N'Burkina Faso', CAST(63.0000 AS Decimal(19, 4)))
INSERT [dbo].[People] ([PersonID], [Name], [Sex], [DOB], [Address], [Money]) VALUES (2160, N'Shawnta', N'Male', CAST(N'2002-02-02T00:00:00.000' AS DateTime), N'Tunisia', CAST(18.0000 AS Decimal(19, 4)))
INSERT [dbo].[People] ([PersonID], [Name], [Sex], [DOB], [Address], [Money]) VALUES (2161, N'Randi', N'Female', CAST(N'2002-02-02T00:00:00.000' AS DateTime), N'Maldives', CAST(55.0000 AS Decimal(19, 4)))
INSERT [dbo].[People] ([PersonID], [Name], [Sex], [DOB], [Address], [Money]) VALUES (2162, N'Rosalva', N'Male', CAST(N'2002-02-02T00:00:00.000' AS DateTime), N'Belize', CAST(22.0000 AS Decimal(19, 4)))
INSERT [dbo].[People] ([PersonID], [Name], [Sex], [DOB], [Address], [Money]) VALUES (2163, N'Homer', N'Female', CAST(N'2002-02-02T00:00:00.000' AS DateTime), N'Netherlands Antilles', CAST(186.0000 AS Decimal(19, 4)))
INSERT [dbo].[People] ([PersonID], [Name], [Sex], [DOB], [Address], [Money]) VALUES (2164, N'Burl', N'Male', CAST(N'2002-02-02T00:00:00.000' AS DateTime), N'Uruguay', CAST(18.0000 AS Decimal(19, 4)))
INSERT [dbo].[People] ([PersonID], [Name], [Sex], [DOB], [Address], [Money]) VALUES (2165, N'Burl', N'Female', CAST(N'2002-02-02T00:00:00.000' AS DateTime), N'Senegal', CAST(56.0000 AS Decimal(19, 4)))
INSERT [dbo].[People] ([PersonID], [Name], [Sex], [DOB], [Address], [Money]) VALUES (2166, N'Gavin', N'Male', CAST(N'2002-02-02T00:00:00.000' AS DateTime), N'Cayman Islands', CAST(100.0000 AS Decimal(19, 4)))
INSERT [dbo].[People] ([PersonID], [Name], [Sex], [DOB], [Address], [Money]) VALUES (2167, N'Hue', N'Male', CAST(N'2002-02-02T00:00:00.000' AS DateTime), N'France', CAST(82.0000 AS Decimal(19, 4)))
INSERT [dbo].[People] ([PersonID], [Name], [Sex], [DOB], [Address], [Money]) VALUES (2168, N'Rosalva', N'Male', CAST(N'2002-02-02T00:00:00.000' AS DateTime), N'Honduras', CAST(151.0000 AS Decimal(19, 4)))
INSERT [dbo].[People] ([PersonID], [Name], [Sex], [DOB], [Address], [Money]) VALUES (2169, N'Trena', N'Female', CAST(N'2002-02-02T00:00:00.000' AS DateTime), N'Papua New Guinea', CAST(12.0000 AS Decimal(19, 4)))
INSERT [dbo].[People] ([PersonID], [Name], [Sex], [DOB], [Address], [Money]) VALUES (2170, N'Hue', N'Male', CAST(N'2002-02-02T00:00:00.000' AS DateTime), N'Belgium', CAST(189.0000 AS Decimal(19, 4)))
INSERT [dbo].[People] ([PersonID], [Name], [Sex], [DOB], [Address], [Money]) VALUES (2171, N'Elayne', N'Male', CAST(N'2002-02-02T00:00:00.000' AS DateTime), N'Costa Rica', CAST(61.0000 AS Decimal(19, 4)))
INSERT [dbo].[People] ([PersonID], [Name], [Sex], [DOB], [Address], [Money]) VALUES (2172, N'Adelaide', N'Female', CAST(N'2002-02-02T00:00:00.000' AS DateTime), N'Albania', CAST(5.0000 AS Decimal(19, 4)))
INSERT [dbo].[People] ([PersonID], [Name], [Sex], [DOB], [Address], [Money]) VALUES (2173, N'Burl', N'Male', CAST(N'2002-02-02T00:00:00.000' AS DateTime), N'Guyana', CAST(196.0000 AS Decimal(19, 4)))
INSERT [dbo].[People] ([PersonID], [Name], [Sex], [DOB], [Address], [Money]) VALUES (2174, N'Marcy', N'Male', CAST(N'2002-02-02T00:00:00.000' AS DateTime), N'Palestine', CAST(14.0000 AS Decimal(19, 4)))
INSERT [dbo].[People] ([PersonID], [Name], [Sex], [DOB], [Address], [Money]) VALUES (2175, N'Hue', N'Female', CAST(N'2002-02-02T00:00:00.000' AS DateTime), N'Pakistan', CAST(27.0000 AS Decimal(19, 4)))
INSERT [dbo].[People] ([PersonID], [Name], [Sex], [DOB], [Address], [Money]) VALUES (2176, N'Miguelina', N'Female', CAST(N'2002-02-02T00:00:00.000' AS DateTime), N'Cambodia', CAST(59.0000 AS Decimal(19, 4)))
INSERT [dbo].[People] ([PersonID], [Name], [Sex], [DOB], [Address], [Money]) VALUES (2177, N'Gavin', N'Female', CAST(N'2002-02-02T00:00:00.000' AS DateTime), N'Togo', CAST(111.0000 AS Decimal(19, 4)))
INSERT [dbo].[People] ([PersonID], [Name], [Sex], [DOB], [Address], [Money]) VALUES (2178, N'Tonette', N'Male', CAST(N'2002-02-02T00:00:00.000' AS DateTime), N'Indonesia', CAST(170.0000 AS Decimal(19, 4)))
INSERT [dbo].[People] ([PersonID], [Name], [Sex], [DOB], [Address], [Money]) VALUES (2179, N'Aron', N'Female', CAST(N'2002-02-02T00:00:00.000' AS DateTime), N'Montserrat', CAST(127.0000 AS Decimal(19, 4)))
INSERT [dbo].[People] ([PersonID], [Name], [Sex], [DOB], [Address], [Money]) VALUES (2180, N'Rosalva', N'Female', CAST(N'2002-02-02T00:00:00.000' AS DateTime), N'Botswana', CAST(69.0000 AS Decimal(19, 4)))
INSERT [dbo].[People] ([PersonID], [Name], [Sex], [DOB], [Address], [Money]) VALUES (2181, N'Jaclyn', N'Male', CAST(N'2002-02-02T00:00:00.000' AS DateTime), N'Guyana', CAST(31.0000 AS Decimal(19, 4)))
INSERT [dbo].[People] ([PersonID], [Name], [Sex], [DOB], [Address], [Money]) VALUES (2182, N'Armanda', N'Female', CAST(N'2002-02-02T00:00:00.000' AS DateTime), N'Anguilla', CAST(28.0000 AS Decimal(19, 4)))
INSERT [dbo].[People] ([PersonID], [Name], [Sex], [DOB], [Address], [Money]) VALUES (2183, N'Armanda', N'Male', CAST(N'2002-02-02T00:00:00.000' AS DateTime), N'Cote D Ivoire', CAST(8.0000 AS Decimal(19, 4)))
INSERT [dbo].[People] ([PersonID], [Name], [Sex], [DOB], [Address], [Money]) VALUES (2184, N'Cherise', N'Female', CAST(N'2002-02-02T00:00:00.000' AS DateTime), N'Chad', CAST(107.0000 AS Decimal(19, 4)))
INSERT [dbo].[People] ([PersonID], [Name], [Sex], [DOB], [Address], [Money]) VALUES (2185, N'Deidre', N'Male', CAST(N'2002-02-02T00:00:00.000' AS DateTime), N'Ghana', CAST(38.0000 AS Decimal(19, 4)))
INSERT [dbo].[People] ([PersonID], [Name], [Sex], [DOB], [Address], [Money]) VALUES (2186, N'Aron', N'Female', CAST(N'2002-02-02T00:00:00.000' AS DateTime), N'Hungary', CAST(7.0000 AS Decimal(19, 4)))
INSERT [dbo].[People] ([PersonID], [Name], [Sex], [DOB], [Address], [Money]) VALUES (2187, N'Deidre', N'Male', CAST(N'2002-02-02T00:00:00.000' AS DateTime), N'Samoa', CAST(75.0000 AS Decimal(19, 4)))
INSERT [dbo].[People] ([PersonID], [Name], [Sex], [DOB], [Address], [Money]) VALUES (2188, N'Armanda', N'Male', CAST(N'2002-02-02T00:00:00.000' AS DateTime), N'Namibia', CAST(53.0000 AS Decimal(19, 4)))
INSERT [dbo].[People] ([PersonID], [Name], [Sex], [DOB], [Address], [Money]) VALUES (2189, N'Miguelina', N'Male', CAST(N'2002-02-02T00:00:00.000' AS DateTime), N'Sudan', CAST(30.0000 AS Decimal(19, 4)))
INSERT [dbo].[People] ([PersonID], [Name], [Sex], [DOB], [Address], [Money]) VALUES (2190, N'Elayne', N'Female', CAST(N'2002-02-02T00:00:00.000' AS DateTime), N'Algeria', CAST(172.0000 AS Decimal(19, 4)))
INSERT [dbo].[People] ([PersonID], [Name], [Sex], [DOB], [Address], [Money]) VALUES (2191, N'Gavin', N'Female', CAST(N'2002-02-02T00:00:00.000' AS DateTime), N'Singapore', CAST(198.0000 AS Decimal(19, 4)))
INSERT [dbo].[People] ([PersonID], [Name], [Sex], [DOB], [Address], [Money]) VALUES (2192, N'Trena', N'Female', CAST(N'2002-02-02T00:00:00.000' AS DateTime), N'Switzerland', CAST(116.0000 AS Decimal(19, 4)))
INSERT [dbo].[People] ([PersonID], [Name], [Sex], [DOB], [Address], [Money]) VALUES (2194, N'Deidre', N'Female', CAST(N'2002-02-02T00:00:00.000' AS DateTime), N'Botswana', CAST(75.0000 AS Decimal(19, 4)))
INSERT [dbo].[People] ([PersonID], [Name], [Sex], [DOB], [Address], [Money]) VALUES (2195, N'Miguelina', N'Male', CAST(N'2002-02-02T00:00:00.000' AS DateTime), N'Cyprus', CAST(192.0000 AS Decimal(19, 4)))
INSERT [dbo].[People] ([PersonID], [Name], [Sex], [DOB], [Address], [Money]) VALUES (2196, N'Miguelina', N'Female', CAST(N'2002-02-02T00:00:00.000' AS DateTime), N'Thailand', CAST(137.0000 AS Decimal(19, 4)))
INSERT [dbo].[People] ([PersonID], [Name], [Sex], [DOB], [Address], [Money]) VALUES (2197, N'Aron', N'Male', CAST(N'2002-02-02T00:00:00.000' AS DateTime), N'Malaysia', CAST(143.0000 AS Decimal(19, 4)))
INSERT [dbo].[People] ([PersonID], [Name], [Sex], [DOB], [Address], [Money]) VALUES (2198, N'Shawnta', N'Female', CAST(N'2002-02-02T00:00:00.000' AS DateTime), N'Turks &amp; Caicos', CAST(125.0000 AS Decimal(19, 4)))
INSERT [dbo].[People] ([PersonID], [Name], [Sex], [DOB], [Address], [Money]) VALUES (2199, N'Aron', N'Male', CAST(N'2002-02-02T00:00:00.000' AS DateTime), N'Equatorial Guinea', CAST(136.0000 AS Decimal(19, 4)))
INSERT [dbo].[People] ([PersonID], [Name], [Sex], [DOB], [Address], [Money]) VALUES (2200, N'Gavin', N'Female', CAST(N'2002-02-02T00:00:00.000' AS DateTime), N'Monaco', CAST(126.0000 AS Decimal(19, 4)))
INSERT [dbo].[People] ([PersonID], [Name], [Sex], [DOB], [Address], [Money]) VALUES (2201, N'Homer', N'Female', CAST(N'2002-02-02T00:00:00.000' AS DateTime), N'Isle of Man', CAST(119.0000 AS Decimal(19, 4)))
INSERT [dbo].[People] ([PersonID], [Name], [Sex], [DOB], [Address], [Money]) VALUES (2202, N'Ossie', N'Female', CAST(N'2002-02-02T00:00:00.000' AS DateTime), N'Nicaragua', CAST(28.0000 AS Decimal(19, 4)))
INSERT [dbo].[People] ([PersonID], [Name], [Sex], [DOB], [Address], [Money]) VALUES (2203, N'Burl', N'Male', CAST(N'2002-02-02T00:00:00.000' AS DateTime), N'Malawi', CAST(13.0000 AS Decimal(19, 4)))
INSERT [dbo].[People] ([PersonID], [Name], [Sex], [DOB], [Address], [Money]) VALUES (2204, N'Cherise', N'Male', CAST(N'2002-02-02T00:00:00.000' AS DateTime), N'China', CAST(29.0000 AS Decimal(19, 4)))
INSERT [dbo].[People] ([PersonID], [Name], [Sex], [DOB], [Address], [Money]) VALUES (2205, N'Malinda', N'Female', CAST(N'2002-02-02T00:00:00.000' AS DateTime), N'Greenland', CAST(110.0000 AS Decimal(19, 4)))
INSERT [dbo].[People] ([PersonID], [Name], [Sex], [DOB], [Address], [Money]) VALUES (2206, N'Homer', N'Female', CAST(N'2002-02-02T00:00:00.000' AS DateTime), N'Niger', CAST(76.0000 AS Decimal(19, 4)))
INSERT [dbo].[People] ([PersonID], [Name], [Sex], [DOB], [Address], [Money]) VALUES (2207, N'Hue', N'Female', CAST(N'2002-02-02T00:00:00.000' AS DateTime), N'Cape Verde', CAST(134.0000 AS Decimal(19, 4)))
INSERT [dbo].[People] ([PersonID], [Name], [Sex], [DOB], [Address], [Money]) VALUES (2208, N'Elayne', N'Male', CAST(N'2002-02-02T00:00:00.000' AS DateTime), N'Maldives', CAST(190.0000 AS Decimal(19, 4)))
INSERT [dbo].[People] ([PersonID], [Name], [Sex], [DOB], [Address], [Money]) VALUES (2209, N'Arleen', N'Female', CAST(N'2002-02-02T00:00:00.000' AS DateTime), N'Madagascar', CAST(139.0000 AS Decimal(19, 4)))
INSERT [dbo].[People] ([PersonID], [Name], [Sex], [DOB], [Address], [Money]) VALUES (2210, N'Jerrica', N'Female', CAST(N'2002-02-02T00:00:00.000' AS DateTime), N'Swaziland', CAST(181.0000 AS Decimal(19, 4)))
INSERT [dbo].[People] ([PersonID], [Name], [Sex], [DOB], [Address], [Money]) VALUES (2211, N'Malinda', N'Female', CAST(N'2002-02-02T00:00:00.000' AS DateTime), N'Costa Rica', CAST(193.0000 AS Decimal(19, 4)))
INSERT [dbo].[People] ([PersonID], [Name], [Sex], [DOB], [Address], [Money]) VALUES (2212, N'Jaclyn', N'Female', CAST(N'2002-02-02T00:00:00.000' AS DateTime), N'Turkmenistan', CAST(80.0000 AS Decimal(19, 4)))
INSERT [dbo].[People] ([PersonID], [Name], [Sex], [DOB], [Address], [Money]) VALUES (2213, N'Gilberto', N'Male', CAST(N'2002-02-02T00:00:00.000' AS DateTime), N'Mauritania', CAST(160.0000 AS Decimal(19, 4)))
INSERT [dbo].[People] ([PersonID], [Name], [Sex], [DOB], [Address], [Money]) VALUES (2214, N'Edison', N'Female', CAST(N'2002-02-02T00:00:00.000' AS DateTime), N'Grenada', CAST(31.0000 AS Decimal(19, 4)))
INSERT [dbo].[People] ([PersonID], [Name], [Sex], [DOB], [Address], [Money]) VALUES (2215, N'Randi', N'Male', CAST(N'2002-02-02T00:00:00.000' AS DateTime), N'St Kitts &amp; Nevis', CAST(158.0000 AS Decimal(19, 4)))
INSERT [dbo].[People] ([PersonID], [Name], [Sex], [DOB], [Address], [Money]) VALUES (2216, N'Armanda', N'Male', CAST(N'2002-02-02T00:00:00.000' AS DateTime), N'Georgia', CAST(192.0000 AS Decimal(19, 4)))
INSERT [dbo].[People] ([PersonID], [Name], [Sex], [DOB], [Address], [Money]) VALUES (2217, N'Randi', N'Female', CAST(N'2002-02-02T00:00:00.000' AS DateTime), N'Senegal', CAST(104.0000 AS Decimal(19, 4)))
INSERT [dbo].[People] ([PersonID], [Name], [Sex], [DOB], [Address], [Money]) VALUES (2218, N'Miguelina', N'Male', CAST(N'2002-02-02T00:00:00.000' AS DateTime), N'Belarus', CAST(10.0000 AS Decimal(19, 4)))
INSERT [dbo].[People] ([PersonID], [Name], [Sex], [DOB], [Address], [Money]) VALUES (2219, N'Trena', N'Female', CAST(N'2002-02-02T00:00:00.000' AS DateTime), N'Colombia', CAST(78.0000 AS Decimal(19, 4)))
INSERT [dbo].[People] ([PersonID], [Name], [Sex], [DOB], [Address], [Money]) VALUES (2220, N'Adelaide', N'Male', CAST(N'2002-02-02T00:00:00.000' AS DateTime), N'United Kingdom', CAST(148.0000 AS Decimal(19, 4)))
INSERT [dbo].[People] ([PersonID], [Name], [Sex], [DOB], [Address], [Money]) VALUES (2221, N'Homer', N'Male', CAST(N'2002-02-02T00:00:00.000' AS DateTime), N'Switzerland', CAST(57.0000 AS Decimal(19, 4)))
INSERT [dbo].[People] ([PersonID], [Name], [Sex], [DOB], [Address], [Money]) VALUES (2222, N'Cherise', N'Male', CAST(N'2002-02-02T00:00:00.000' AS DateTime), N'Germany', CAST(130.0000 AS Decimal(19, 4)))
INSERT [dbo].[People] ([PersonID], [Name], [Sex], [DOB], [Address], [Money]) VALUES (2223, N'Jerrica', N'Male', CAST(N'2002-02-02T00:00:00.000' AS DateTime), N'Satellite', CAST(102.0000 AS Decimal(19, 4)))
INSERT [dbo].[People] ([PersonID], [Name], [Sex], [DOB], [Address], [Money]) VALUES (2224, N'Hue', N'Female', CAST(N'2002-02-02T00:00:00.000' AS DateTime), N'Malaysia', CAST(118.0000 AS Decimal(19, 4)))
INSERT [dbo].[People] ([PersonID], [Name], [Sex], [DOB], [Address], [Money]) VALUES (2225, N'Janel', N'Male', CAST(N'2002-02-02T00:00:00.000' AS DateTime), N'Ghana', CAST(861111.0000 AS Decimal(19, 4)))
INSERT [dbo].[People] ([PersonID], [Name], [Sex], [DOB], [Address], [Money]) VALUES (2226, N'Jerica', N'Male', CAST(N'2002-02-02T00:00:00.000' AS DateTime), N'Niger', CAST(107.0000 AS Decimal(19, 4)))
INSERT [dbo].[People] ([PersonID], [Name], [Sex], [DOB], [Address], [Money]) VALUES (2227, N'Trena', N'Female', CAST(N'2002-02-02T00:00:00.000' AS DateTime), N'Palestine', CAST(28.0000 AS Decimal(19, 4)))
INSERT [dbo].[People] ([PersonID], [Name], [Sex], [DOB], [Address], [Money]) VALUES (2228, N'Rosalva', N'Female', CAST(N'2002-02-02T00:00:00.000' AS DateTime), N'Malaysia', CAST(82.0000 AS Decimal(19, 4)))
INSERT [dbo].[People] ([PersonID], [Name], [Sex], [DOB], [Address], [Money]) VALUES (2229, N'Hue', N'Female', CAST(N'2002-02-02T00:00:00.000' AS DateTime), N'Turkmenistan', CAST(154.0000 AS Decimal(19, 4)))
SET IDENTITY_INSERT [dbo].[People] OFF
/****** Object:  StoredProcedure [dbo].[procLoadData]    Script Date: 25/09/2018 4:14:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[procLoadData]
as
begin
select People.PersonID, People.Name, People.Address, People.DOB, People.Money, People.Sex
from People
end
GO
USE [master]
GO
ALTER DATABASE [DemoDB] SET  READ_WRITE 
GO
