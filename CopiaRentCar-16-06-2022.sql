USE [master]
GO
/****** Object:  Database [RentCar]    Script Date: 16/06/2022 4:11:15 p. m. ******/
CREATE DATABASE [RentCar]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'RentCar', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\RentCar.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'RentCar_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\RentCar_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [RentCar].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [RentCar] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [RentCar] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [RentCar] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [RentCar] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [RentCar] SET ARITHABORT OFF 
GO
ALTER DATABASE [RentCar] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [RentCar] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [RentCar] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [RentCar] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [RentCar] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [RentCar] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [RentCar] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [RentCar] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [RentCar] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [RentCar] SET  DISABLE_BROKER 
GO
ALTER DATABASE [RentCar] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [RentCar] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [RentCar] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [RentCar] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [RentCar] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [RentCar] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [RentCar] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [RentCar] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [RentCar] SET  MULTI_USER 
GO
ALTER DATABASE [RentCar] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [RentCar] SET DB_CHAINING OFF 
GO
ALTER DATABASE [RentCar] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [RentCar] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [RentCar] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [RentCar] SET QUERY_STORE = OFF
GO
USE [RentCar]
GO
/****** Object:  Table [dbo].[Clientes]    Script Date: 16/06/2022 4:11:16 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clientes](
	[IdCliente] [nchar](10) NOT NULL,
	[Nombres] [nchar](50) NULL,
	[TipoCliente] [nchar](10) NULL,
 CONSTRAINT [PK_Clientes] PRIMARY KEY CLUSTERED 
(
	[IdCliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vehiculos]    Script Date: 16/06/2022 4:11:16 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vehiculos](
	[Placa] [nchar](10) NOT NULL,
	[Marca] [nchar](10) NULL,
	[KilometrajeActual] [int] NULL,
 CONSTRAINT [PK_Vehiculos] PRIMARY KEY CLUSTERED 
(
	[Placa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Clientes] ([IdCliente], [Nombres], [TipoCliente]) VALUES (N'10010     ', N'Dacie Fendlen                                     ', N'Contrato  ')
INSERT [dbo].[Clientes] ([IdCliente], [Nombres], [TipoCliente]) VALUES (N'10536     ', N'Flem Mathieu                                      ', N'Contrato  ')
INSERT [dbo].[Clientes] ([IdCliente], [Nombres], [TipoCliente]) VALUES (N'11286     ', N'Steward Jobey                                     ', N'Contrato  ')
INSERT [dbo].[Clientes] ([IdCliente], [Nombres], [TipoCliente]) VALUES (N'11354     ', N'Chrissy Keyhoe                                    ', N'Ocasional ')
INSERT [dbo].[Clientes] ([IdCliente], [Nombres], [TipoCliente]) VALUES (N'11616     ', N'Dianna Dix                                        ', N'Contrato  ')
INSERT [dbo].[Clientes] ([IdCliente], [Nombres], [TipoCliente]) VALUES (N'11691     ', N'Glynn Dana                                        ', N'Ocasional ')
INSERT [dbo].[Clientes] ([IdCliente], [Nombres], [TipoCliente]) VALUES (N'11708     ', N'Kitty Mercy                                       ', N'Contrato  ')
INSERT [dbo].[Clientes] ([IdCliente], [Nombres], [TipoCliente]) VALUES (N'11982     ', N'Bondie Aisman                                     ', N'Ocasional ')
INSERT [dbo].[Clientes] ([IdCliente], [Nombres], [TipoCliente]) VALUES (N'12155     ', N'Kelby Guiu                                        ', N'Ocasional ')
INSERT [dbo].[Clientes] ([IdCliente], [Nombres], [TipoCliente]) VALUES (N'12369     ', N'Ludvig Metzing                                    ', N'Contrato  ')
INSERT [dbo].[Clientes] ([IdCliente], [Nombres], [TipoCliente]) VALUES (N'12408     ', N'Gracia Larvor                                     ', N'Ocasional ')
INSERT [dbo].[Clientes] ([IdCliente], [Nombres], [TipoCliente]) VALUES (N'12676     ', N'Gregory Bruun                                     ', N'Ocasional ')
INSERT [dbo].[Clientes] ([IdCliente], [Nombres], [TipoCliente]) VALUES (N'12734     ', N'Adey D''Aulby                                      ', N'Contrato  ')
INSERT [dbo].[Clientes] ([IdCliente], [Nombres], [TipoCliente]) VALUES (N'13144     ', N'Harlin McKean                                     ', N'Ocasional ')
INSERT [dbo].[Clientes] ([IdCliente], [Nombres], [TipoCliente]) VALUES (N'13238     ', N'Clarice Mehmet                                    ', N'Contrato  ')
INSERT [dbo].[Clientes] ([IdCliente], [Nombres], [TipoCliente]) VALUES (N'13420     ', N'Bronny Belt                                       ', N'Ocasional ')
INSERT [dbo].[Clientes] ([IdCliente], [Nombres], [TipoCliente]) VALUES (N'13520     ', N'Pierce Sallan                                     ', N'Contrato  ')
INSERT [dbo].[Clientes] ([IdCliente], [Nombres], [TipoCliente]) VALUES (N'13768     ', N'Lisetta Raulin                                    ', N'Ocasional ')
INSERT [dbo].[Clientes] ([IdCliente], [Nombres], [TipoCliente]) VALUES (N'13872     ', N'Charlena Bown                                     ', N'Ocasional ')
INSERT [dbo].[Clientes] ([IdCliente], [Nombres], [TipoCliente]) VALUES (N'13930     ', N'Dario Seagrave                                    ', N'Contrato  ')
INSERT [dbo].[Clientes] ([IdCliente], [Nombres], [TipoCliente]) VALUES (N'13999     ', N'Edeline Calyton                                   ', N'Contrato  ')
INSERT [dbo].[Clientes] ([IdCliente], [Nombres], [TipoCliente]) VALUES (N'14577     ', N'Willamina Sieve                                   ', N'Ocasional ')
INSERT [dbo].[Clientes] ([IdCliente], [Nombres], [TipoCliente]) VALUES (N'14752     ', N'Delaney Swanson                                   ', N'Ocasional ')
INSERT [dbo].[Clientes] ([IdCliente], [Nombres], [TipoCliente]) VALUES (N'14809     ', N'Gerick Dymott                                     ', N'Contrato  ')
INSERT [dbo].[Clientes] ([IdCliente], [Nombres], [TipoCliente]) VALUES (N'14934     ', N'Iggie Killigrew                                   ', N'Contrato  ')
INSERT [dbo].[Clientes] ([IdCliente], [Nombres], [TipoCliente]) VALUES (N'15537     ', N'Merissa Gadeaux                                   ', N'Contrato  ')
INSERT [dbo].[Clientes] ([IdCliente], [Nombres], [TipoCliente]) VALUES (N'15560     ', N'Rafi Pace                                         ', N'Contrato  ')
INSERT [dbo].[Clientes] ([IdCliente], [Nombres], [TipoCliente]) VALUES (N'15572     ', N'Tamma Rames                                       ', N'Contrato  ')
INSERT [dbo].[Clientes] ([IdCliente], [Nombres], [TipoCliente]) VALUES (N'15690     ', N'Shandra Stovell                                   ', N'Ocasional ')
INSERT [dbo].[Clientes] ([IdCliente], [Nombres], [TipoCliente]) VALUES (N'15724     ', N'Manfred Spurling                                  ', N'Contrato  ')
INSERT [dbo].[Clientes] ([IdCliente], [Nombres], [TipoCliente]) VALUES (N'15944     ', N'Norrie Frowing                                    ', N'Contrato  ')
INSERT [dbo].[Clientes] ([IdCliente], [Nombres], [TipoCliente]) VALUES (N'16160     ', N'Nestor Di Biagio                                  ', N'Ocasional ')
INSERT [dbo].[Clientes] ([IdCliente], [Nombres], [TipoCliente]) VALUES (N'16308     ', N'Angie Dopson                                      ', N'Contrato  ')
INSERT [dbo].[Clientes] ([IdCliente], [Nombres], [TipoCliente]) VALUES (N'16677     ', N'Tamara Cockin                                     ', N'Contrato  ')
INSERT [dbo].[Clientes] ([IdCliente], [Nombres], [TipoCliente]) VALUES (N'16984     ', N'Fletch Yeskin                                     ', N'Ocasional ')
INSERT [dbo].[Clientes] ([IdCliente], [Nombres], [TipoCliente]) VALUES (N'17409     ', N'Rafael Garrad                                     ', N'Ocasional ')
INSERT [dbo].[Clientes] ([IdCliente], [Nombres], [TipoCliente]) VALUES (N'17446     ', N'Bridgette Whistan                                 ', N'Contrato  ')
INSERT [dbo].[Clientes] ([IdCliente], [Nombres], [TipoCliente]) VALUES (N'17548     ', N'Gonzalo Seamon                                    ', N'Ocasional ')
INSERT [dbo].[Clientes] ([IdCliente], [Nombres], [TipoCliente]) VALUES (N'17757     ', N'Katheryn Showers                                  ', N'Contrato  ')
INSERT [dbo].[Clientes] ([IdCliente], [Nombres], [TipoCliente]) VALUES (N'17791     ', N'Janene Branton                                    ', N'Ocasional ')
INSERT [dbo].[Clientes] ([IdCliente], [Nombres], [TipoCliente]) VALUES (N'17895     ', N'Debi Mishaw                                       ', N'Contrato  ')
INSERT [dbo].[Clientes] ([IdCliente], [Nombres], [TipoCliente]) VALUES (N'18264     ', N'Westbrooke Jouanet                                ', N'Ocasional ')
INSERT [dbo].[Clientes] ([IdCliente], [Nombres], [TipoCliente]) VALUES (N'18868     ', N'Amelia Crofts                                     ', N'Contrato  ')
INSERT [dbo].[Clientes] ([IdCliente], [Nombres], [TipoCliente]) VALUES (N'19128     ', N'Billy Sweeten                                     ', N'Ocasional ')
INSERT [dbo].[Clientes] ([IdCliente], [Nombres], [TipoCliente]) VALUES (N'19647     ', N'Red Gurnee                                        ', N'Contrato  ')
INSERT [dbo].[Clientes] ([IdCliente], [Nombres], [TipoCliente]) VALUES (N'19879     ', N'Adrianna Bolver                                   ', N'Contrato  ')
INSERT [dbo].[Clientes] ([IdCliente], [Nombres], [TipoCliente]) VALUES (N'19948     ', N'Roderigo Snape                                    ', N'Ocasional ')
INSERT [dbo].[Clientes] ([IdCliente], [Nombres], [TipoCliente]) VALUES (N'20526     ', N'Roseanna Aubery                                   ', N'Ocasional ')
INSERT [dbo].[Clientes] ([IdCliente], [Nombres], [TipoCliente]) VALUES (N'20891     ', N'April Karp                                        ', N'Ocasional ')
INSERT [dbo].[Clientes] ([IdCliente], [Nombres], [TipoCliente]) VALUES (N'20994     ', N'Hercule Prophet                                   ', N'Ocasional ')
INSERT [dbo].[Clientes] ([IdCliente], [Nombres], [TipoCliente]) VALUES (N'21328     ', N'Joelle D''Alesio                                   ', N'Contrato  ')
INSERT [dbo].[Clientes] ([IdCliente], [Nombres], [TipoCliente]) VALUES (N'21453     ', N'Alisun Marshfield                                 ', N'Ocasional ')
INSERT [dbo].[Clientes] ([IdCliente], [Nombres], [TipoCliente]) VALUES (N'21590     ', N'Dougy Heazel                                      ', N'Ocasional ')
INSERT [dbo].[Clientes] ([IdCliente], [Nombres], [TipoCliente]) VALUES (N'21598     ', N'Neel Bickardike                                   ', N'Ocasional ')
INSERT [dbo].[Clientes] ([IdCliente], [Nombres], [TipoCliente]) VALUES (N'21707     ', N'Chariot Godard                                    ', N'Ocasional ')
INSERT [dbo].[Clientes] ([IdCliente], [Nombres], [TipoCliente]) VALUES (N'22028     ', N'Giffy McAllester                                  ', N'Contrato  ')
INSERT [dbo].[Clientes] ([IdCliente], [Nombres], [TipoCliente]) VALUES (N'22250     ', N'Erda Fancutt                                      ', N'Contrato  ')
INSERT [dbo].[Clientes] ([IdCliente], [Nombres], [TipoCliente]) VALUES (N'22440     ', N'Delinda Notley                                    ', N'Contrato  ')
INSERT [dbo].[Clientes] ([IdCliente], [Nombres], [TipoCliente]) VALUES (N'22550     ', N'Randolf Mogey                                     ', N'Contrato  ')
INSERT [dbo].[Clientes] ([IdCliente], [Nombres], [TipoCliente]) VALUES (N'22563     ', N'Thea Norvel                                       ', N'Contrato  ')
INSERT [dbo].[Clientes] ([IdCliente], [Nombres], [TipoCliente]) VALUES (N'22967     ', N'Constancia Besset                                 ', N'Ocasional ')
INSERT [dbo].[Clientes] ([IdCliente], [Nombres], [TipoCliente]) VALUES (N'23165     ', N'Tod Phillips                                      ', N'Ocasional ')
INSERT [dbo].[Clientes] ([IdCliente], [Nombres], [TipoCliente]) VALUES (N'23198     ', N'Dorian Dilke                                      ', N'Ocasional ')
INSERT [dbo].[Clientes] ([IdCliente], [Nombres], [TipoCliente]) VALUES (N'23547     ', N'Buckie Moring                                     ', N'Ocasional ')
INSERT [dbo].[Clientes] ([IdCliente], [Nombres], [TipoCliente]) VALUES (N'24393     ', N'Guilbert Nana                                     ', N'Contrato  ')
INSERT [dbo].[Clientes] ([IdCliente], [Nombres], [TipoCliente]) VALUES (N'24973     ', N'Wendye Asplen                                     ', N'Ocasional ')
INSERT [dbo].[Clientes] ([IdCliente], [Nombres], [TipoCliente]) VALUES (N'25038     ', N'Ernst Knottley                                    ', N'Contrato  ')
INSERT [dbo].[Clientes] ([IdCliente], [Nombres], [TipoCliente]) VALUES (N'25890     ', N'Sidnee Fumagall                                   ', N'Contrato  ')
INSERT [dbo].[Clientes] ([IdCliente], [Nombres], [TipoCliente]) VALUES (N'25973     ', N'Ysabel Yearsley                                   ', N'Contrato  ')
INSERT [dbo].[Clientes] ([IdCliente], [Nombres], [TipoCliente]) VALUES (N'26052     ', N'Clerkclaude Adamini                               ', N'Ocasional ')
INSERT [dbo].[Clientes] ([IdCliente], [Nombres], [TipoCliente]) VALUES (N'26099     ', N'Jodie Chillcot                                    ', N'Contrato  ')
INSERT [dbo].[Clientes] ([IdCliente], [Nombres], [TipoCliente]) VALUES (N'26313     ', N'Greg Zammett                                      ', N'Contrato  ')
INSERT [dbo].[Clientes] ([IdCliente], [Nombres], [TipoCliente]) VALUES (N'26351     ', N'Romeo O'' Mullan                                   ', N'Contrato  ')
INSERT [dbo].[Clientes] ([IdCliente], [Nombres], [TipoCliente]) VALUES (N'26416     ', N'Shirline Dunsmore                                 ', N'Contrato  ')
INSERT [dbo].[Clientes] ([IdCliente], [Nombres], [TipoCliente]) VALUES (N'26559     ', N'Clovis Vassano                                    ', N'Contrato  ')
INSERT [dbo].[Clientes] ([IdCliente], [Nombres], [TipoCliente]) VALUES (N'27058     ', N'Brien Vousden                                     ', N'Contrato  ')
INSERT [dbo].[Clientes] ([IdCliente], [Nombres], [TipoCliente]) VALUES (N'27153     ', N'Yuri Killoran                                     ', N'Contrato  ')
INSERT [dbo].[Clientes] ([IdCliente], [Nombres], [TipoCliente]) VALUES (N'27491     ', N'Lev Pylkynyton                                    ', N'Ocasional ')
INSERT [dbo].[Clientes] ([IdCliente], [Nombres], [TipoCliente]) VALUES (N'27687     ', N'Natividad O''Hederscoll                            ', N'Ocasional ')
INSERT [dbo].[Clientes] ([IdCliente], [Nombres], [TipoCliente]) VALUES (N'27753     ', N'Uriah Stailey                                     ', N'Ocasional ')
INSERT [dbo].[Clientes] ([IdCliente], [Nombres], [TipoCliente]) VALUES (N'27766     ', N'Erin Jaques                                       ', N'Ocasional ')
INSERT [dbo].[Clientes] ([IdCliente], [Nombres], [TipoCliente]) VALUES (N'27783     ', N'Aurelia Pinckard                                  ', N'Ocasional ')
INSERT [dbo].[Clientes] ([IdCliente], [Nombres], [TipoCliente]) VALUES (N'28074     ', N'Ruthanne MacMichael                               ', N'Contrato  ')
INSERT [dbo].[Clientes] ([IdCliente], [Nombres], [TipoCliente]) VALUES (N'28310     ', N'Ingrim Lincke                                     ', N'Ocasional ')
INSERT [dbo].[Clientes] ([IdCliente], [Nombres], [TipoCliente]) VALUES (N'28485     ', N'Felike Coy                                        ', N'Contrato  ')
INSERT [dbo].[Clientes] ([IdCliente], [Nombres], [TipoCliente]) VALUES (N'28610     ', N'Gilligan Meert                                    ', N'Ocasional ')
INSERT [dbo].[Clientes] ([IdCliente], [Nombres], [TipoCliente]) VALUES (N'29193     ', N'Evelyn Mainland                                   ', N'Contrato  ')
INSERT [dbo].[Clientes] ([IdCliente], [Nombres], [TipoCliente]) VALUES (N'29214     ', N'Debra Carncross                                   ', N'Ocasional ')
INSERT [dbo].[Clientes] ([IdCliente], [Nombres], [TipoCliente]) VALUES (N'29869     ', N'Mimi MacTrustram                                  ', N'Contrato  ')
INSERT [dbo].[Clientes] ([IdCliente], [Nombres], [TipoCliente]) VALUES (N'30080     ', N'Flss Newtown                                      ', N'Contrato  ')
INSERT [dbo].[Clientes] ([IdCliente], [Nombres], [TipoCliente]) VALUES (N'30281     ', N'Libby Viant                                       ', N'Ocasional ')
INSERT [dbo].[Clientes] ([IdCliente], [Nombres], [TipoCliente]) VALUES (N'30589     ', N'Patrick Ortet                                     ', N'Ocasional ')
INSERT [dbo].[Clientes] ([IdCliente], [Nombres], [TipoCliente]) VALUES (N'31015     ', N'Maurene Ayris                                     ', N'Ocasional ')
INSERT [dbo].[Clientes] ([IdCliente], [Nombres], [TipoCliente]) VALUES (N'31105     ', N'Ellynn Bethell                                    ', N'Contrato  ')
INSERT [dbo].[Clientes] ([IdCliente], [Nombres], [TipoCliente]) VALUES (N'31232     ', N'Ambrosius Krout                                   ', N'Contrato  ')
INSERT [dbo].[Clientes] ([IdCliente], [Nombres], [TipoCliente]) VALUES (N'31259     ', N'Cleve Greatbach                                   ', N'Ocasional ')
INSERT [dbo].[Clientes] ([IdCliente], [Nombres], [TipoCliente]) VALUES (N'31430     ', N'Cathlene Dow                                      ', N'Contrato  ')
INSERT [dbo].[Clientes] ([IdCliente], [Nombres], [TipoCliente]) VALUES (N'31766     ', N'Gabie Dryden                                      ', N'Ocasional ')
INSERT [dbo].[Clientes] ([IdCliente], [Nombres], [TipoCliente]) VALUES (N'31809     ', N'Mireille Hryncewicz                               ', N'Ocasional ')
INSERT [dbo].[Clientes] ([IdCliente], [Nombres], [TipoCliente]) VALUES (N'31950     ', N'Emilie Gheorghescu                                ', N'Ocasional ')
GO
INSERT [dbo].[Vehiculos] ([Placa], [Marca], [KilometrajeActual]) VALUES (N'00k-420   ', N'Volkswagen', 27127)
INSERT [dbo].[Vehiculos] ([Placa], [Marca], [KilometrajeActual]) VALUES (N'016-783   ', N'Pontiac   ', 43897)
INSERT [dbo].[Vehiculos] ([Placa], [Marca], [KilometrajeActual]) VALUES (N'0dV-290   ', N'Kia       ', 65302)
INSERT [dbo].[Vehiculos] ([Placa], [Marca], [KilometrajeActual]) VALUES (N'0SB-017   ', N'Toyota    ', 37955)
INSERT [dbo].[Vehiculos] ([Placa], [Marca], [KilometrajeActual]) VALUES (N'12E-719   ', N'Pontiac   ', 83340)
INSERT [dbo].[Vehiculos] ([Placa], [Marca], [KilometrajeActual]) VALUES (N'1RQ-449   ', N'Land Rover', 69342)
INSERT [dbo].[Vehiculos] ([Placa], [Marca], [KilometrajeActual]) VALUES (N'2yi-242   ', N'BMW       ', 63541)
INSERT [dbo].[Vehiculos] ([Placa], [Marca], [KilometrajeActual]) VALUES (N'46w-073   ', N'Acura     ', 98661)
INSERT [dbo].[Vehiculos] ([Placa], [Marca], [KilometrajeActual]) VALUES (N'48i-917   ', N'Bentley   ', 62771)
INSERT [dbo].[Vehiculos] ([Placa], [Marca], [KilometrajeActual]) VALUES (N'6gx-932   ', N'Ford      ', 72931)
INSERT [dbo].[Vehiculos] ([Placa], [Marca], [KilometrajeActual]) VALUES (N'7o8-691   ', N'Hyundai   ', 30539)
INSERT [dbo].[Vehiculos] ([Placa], [Marca], [KilometrajeActual]) VALUES (N'7qm-806   ', N'Chrysler  ', 5091)
INSERT [dbo].[Vehiculos] ([Placa], [Marca], [KilometrajeActual]) VALUES (N'84X-325   ', N'Chevrolet ', 49574)
INSERT [dbo].[Vehiculos] ([Placa], [Marca], [KilometrajeActual]) VALUES (N'8nr-717   ', N'Kia       ', 69477)
INSERT [dbo].[Vehiculos] ([Placa], [Marca], [KilometrajeActual]) VALUES (N'9gh-108   ', N'Ford      ', 57092)
INSERT [dbo].[Vehiculos] ([Placa], [Marca], [KilometrajeActual]) VALUES (N'9uc-236   ', N'BMW       ', 83955)
INSERT [dbo].[Vehiculos] ([Placa], [Marca], [KilometrajeActual]) VALUES (N'AAA-999   ', N'BUSQUELA  ', 5000)
INSERT [dbo].[Vehiculos] ([Placa], [Marca], [KilometrajeActual]) VALUES (N'AaR-283   ', N'Mitsubishi', 21991)
INSERT [dbo].[Vehiculos] ([Placa], [Marca], [KilometrajeActual]) VALUES (N'ABx-437   ', N'Chevrolet ', 99364)
INSERT [dbo].[Vehiculos] ([Placa], [Marca], [KilometrajeActual]) VALUES (N'AKM-355   ', N'Volkswagen', 21498)
INSERT [dbo].[Vehiculos] ([Placa], [Marca], [KilometrajeActual]) VALUES (N'AsZ-813   ', N'GMC       ', 90469)
INSERT [dbo].[Vehiculos] ([Placa], [Marca], [KilometrajeActual]) VALUES (N'AzG-593   ', N'Suzuki    ', 24456)
INSERT [dbo].[Vehiculos] ([Placa], [Marca], [KilometrajeActual]) VALUES (N'BBi-903   ', N'Chevrolet ', 45271)
INSERT [dbo].[Vehiculos] ([Placa], [Marca], [KilometrajeActual]) VALUES (N'BFt-294   ', N'Plymouth  ', 5211)
INSERT [dbo].[Vehiculos] ([Placa], [Marca], [KilometrajeActual]) VALUES (N'BHP-368   ', N'Ford      ', 26252)
INSERT [dbo].[Vehiculos] ([Placa], [Marca], [KilometrajeActual]) VALUES (N'BxT-104   ', N'Ford      ', 33834)
INSERT [dbo].[Vehiculos] ([Placa], [Marca], [KilometrajeActual]) VALUES (N'BZw-746   ', N'Ford      ', 85018)
INSERT [dbo].[Vehiculos] ([Placa], [Marca], [KilometrajeActual]) VALUES (N'c4z-260   ', N'Lexus     ', 80829)
INSERT [dbo].[Vehiculos] ([Placa], [Marca], [KilometrajeActual]) VALUES (N'cbI-252   ', N'Mercury   ', 98619)
INSERT [dbo].[Vehiculos] ([Placa], [Marca], [KilometrajeActual]) VALUES (N'cjs-317   ', N'Toyota    ', 83434)
INSERT [dbo].[Vehiculos] ([Placa], [Marca], [KilometrajeActual]) VALUES (N'Cpc-430   ', N'Dodge     ', 72958)
INSERT [dbo].[Vehiculos] ([Placa], [Marca], [KilometrajeActual]) VALUES (N'CUc-948   ', N'Nissan    ', 81761)
INSERT [dbo].[Vehiculos] ([Placa], [Marca], [KilometrajeActual]) VALUES (N'DXW-315   ', N'Volkswagen', 70812)
INSERT [dbo].[Vehiculos] ([Placa], [Marca], [KilometrajeActual]) VALUES (N'DyU-057   ', N'Buick     ', 30209)
INSERT [dbo].[Vehiculos] ([Placa], [Marca], [KilometrajeActual]) VALUES (N'E5i-768   ', N'Porsche   ', 92337)
INSERT [dbo].[Vehiculos] ([Placa], [Marca], [KilometrajeActual]) VALUES (N'Eln-565   ', N'Volvo     ', 61810)
INSERT [dbo].[Vehiculos] ([Placa], [Marca], [KilometrajeActual]) VALUES (N'esg-975   ', N'Ford      ', 64881)
INSERT [dbo].[Vehiculos] ([Placa], [Marca], [KilometrajeActual]) VALUES (N'fOZ-609   ', N'Audi      ', 14233)
INSERT [dbo].[Vehiculos] ([Placa], [Marca], [KilometrajeActual]) VALUES (N'fU2-926   ', N'Ford      ', 78618)
INSERT [dbo].[Vehiculos] ([Placa], [Marca], [KilometrajeActual]) VALUES (N'fw1-607   ', N'Ford      ', 45265)
INSERT [dbo].[Vehiculos] ([Placa], [Marca], [KilometrajeActual]) VALUES (N'g7J-307   ', N'Alfa Romeo', 74248)
INSERT [dbo].[Vehiculos] ([Placa], [Marca], [KilometrajeActual]) VALUES (N'Gfj-258   ', N'Chevrolet ', 95258)
INSERT [dbo].[Vehiculos] ([Placa], [Marca], [KilometrajeActual]) VALUES (N'GHK-673   ', N'Chevrolet ', 85621)
INSERT [dbo].[Vehiculos] ([Placa], [Marca], [KilometrajeActual]) VALUES (N'Hl1-082   ', N'Volkswagen', 21391)
INSERT [dbo].[Vehiculos] ([Placa], [Marca], [KilometrajeActual]) VALUES (N'hOl-093   ', N'Mazda     ', 31212)
INSERT [dbo].[Vehiculos] ([Placa], [Marca], [KilometrajeActual]) VALUES (N'i2G-078   ', N'Nissan    ', 97743)
INSERT [dbo].[Vehiculos] ([Placa], [Marca], [KilometrajeActual]) VALUES (N'i5N-435   ', N'Suzuki    ', 9901)
INSERT [dbo].[Vehiculos] ([Placa], [Marca], [KilometrajeActual]) VALUES (N'I6m-282   ', N'Mercury   ', 98037)
INSERT [dbo].[Vehiculos] ([Placa], [Marca], [KilometrajeActual]) VALUES (N'ipt-446   ', N'Audi      ', 36012)
INSERT [dbo].[Vehiculos] ([Placa], [Marca], [KilometrajeActual]) VALUES (N'Iqv-465   ', N'Ford      ', 53139)
INSERT [dbo].[Vehiculos] ([Placa], [Marca], [KilometrajeActual]) VALUES (N'lnB-528   ', N'Lexus     ', 60425)
INSERT [dbo].[Vehiculos] ([Placa], [Marca], [KilometrajeActual]) VALUES (N'LnJ-311   ', N'Land Rover', 37446)
INSERT [dbo].[Vehiculos] ([Placa], [Marca], [KilometrajeActual]) VALUES (N'lVW-877   ', N'Volvo     ', 75971)
INSERT [dbo].[Vehiculos] ([Placa], [Marca], [KilometrajeActual]) VALUES (N'm0A-022   ', N'Ford      ', 54482)
INSERT [dbo].[Vehiculos] ([Placa], [Marca], [KilometrajeActual]) VALUES (N'M5F-033   ', N'Chevrolet ', 19761)
INSERT [dbo].[Vehiculos] ([Placa], [Marca], [KilometrajeActual]) VALUES (N'MgH-741   ', N'Nissan    ', 18778)
INSERT [dbo].[Vehiculos] ([Placa], [Marca], [KilometrajeActual]) VALUES (N'MIw-557   ', N'Dodge     ', 63492)
INSERT [dbo].[Vehiculos] ([Placa], [Marca], [KilometrajeActual]) VALUES (N'mTz-767   ', N'Kia       ', 50436)
INSERT [dbo].[Vehiculos] ([Placa], [Marca], [KilometrajeActual]) VALUES (N'N4W-413   ', N'Pontiac   ', 40967)
INSERT [dbo].[Vehiculos] ([Placa], [Marca], [KilometrajeActual]) VALUES (N'n6T-417   ', N'Lexus     ', 60071)
INSERT [dbo].[Vehiculos] ([Placa], [Marca], [KilometrajeActual]) VALUES (N'NhL-463   ', N'Chevrolet ', 36391)
INSERT [dbo].[Vehiculos] ([Placa], [Marca], [KilometrajeActual]) VALUES (N'Nwz-041   ', N'Saab      ', 96789)
INSERT [dbo].[Vehiculos] ([Placa], [Marca], [KilometrajeActual]) VALUES (N'onR-816   ', N'Nissan    ', 87660)
INSERT [dbo].[Vehiculos] ([Placa], [Marca], [KilometrajeActual]) VALUES (N'PCF-812   ', N'Aptera    ', 48861)
INSERT [dbo].[Vehiculos] ([Placa], [Marca], [KilometrajeActual]) VALUES (N'PPa-357   ', N'Honda     ', 47198)
INSERT [dbo].[Vehiculos] ([Placa], [Marca], [KilometrajeActual]) VALUES (N'qjS-085   ', N'Chevrolet ', 44538)
INSERT [dbo].[Vehiculos] ([Placa], [Marca], [KilometrajeActual]) VALUES (N'qQ1-568   ', N'Isuzu     ', 72823)
INSERT [dbo].[Vehiculos] ([Placa], [Marca], [KilometrajeActual]) VALUES (N'Snx-953   ', N'Cadillac  ', 8307)
INSERT [dbo].[Vehiculos] ([Placa], [Marca], [KilometrajeActual]) VALUES (N'sPU-904   ', N'Toyota    ', 92518)
INSERT [dbo].[Vehiculos] ([Placa], [Marca], [KilometrajeActual]) VALUES (N'Tb4-853   ', N'Chevrolet ', 26949)
INSERT [dbo].[Vehiculos] ([Placa], [Marca], [KilometrajeActual]) VALUES (N'tjo-650   ', N'Pontiac   ', 67639)
INSERT [dbo].[Vehiculos] ([Placa], [Marca], [KilometrajeActual]) VALUES (N'Ttu-871   ', N'Mitsubishi', 33701)
INSERT [dbo].[Vehiculos] ([Placa], [Marca], [KilometrajeActual]) VALUES (N'u3S-542   ', N'Mitsubishi', 74026)
INSERT [dbo].[Vehiculos] ([Placa], [Marca], [KilometrajeActual]) VALUES (N'u97-646   ', N'GMC       ', 27351)
INSERT [dbo].[Vehiculos] ([Placa], [Marca], [KilometrajeActual]) VALUES (N'upU-086   ', N'Ford      ', 52297)
INSERT [dbo].[Vehiculos] ([Placa], [Marca], [KilometrajeActual]) VALUES (N'VcL-088   ', N'Mitsubishi', 56131)
INSERT [dbo].[Vehiculos] ([Placa], [Marca], [KilometrajeActual]) VALUES (N'vDb-097   ', N'Ford      ', 52983)
INSERT [dbo].[Vehiculos] ([Placa], [Marca], [KilometrajeActual]) VALUES (N'vLP-767   ', N'Infiniti  ', 63790)
INSERT [dbo].[Vehiculos] ([Placa], [Marca], [KilometrajeActual]) VALUES (N'vxt-618   ', N'Buick     ', 32570)
INSERT [dbo].[Vehiculos] ([Placa], [Marca], [KilometrajeActual]) VALUES (N'Wy3-691   ', N'Mitsubishi', 41949)
INSERT [dbo].[Vehiculos] ([Placa], [Marca], [KilometrajeActual]) VALUES (N'XIc-552   ', N'Volvo     ', 47429)
INSERT [dbo].[Vehiculos] ([Placa], [Marca], [KilometrajeActual]) VALUES (N'xo6-013   ', N'Chrysler  ', 23356)
INSERT [dbo].[Vehiculos] ([Placa], [Marca], [KilometrajeActual]) VALUES (N'xY9-477   ', N'Hyundai   ', 54856)
INSERT [dbo].[Vehiculos] ([Placa], [Marca], [KilometrajeActual]) VALUES (N'YbC-470   ', N'Dodge     ', 58150)
INSERT [dbo].[Vehiculos] ([Placa], [Marca], [KilometrajeActual]) VALUES (N'yuO-895   ', N'Audi      ', 44302)
INSERT [dbo].[Vehiculos] ([Placa], [Marca], [KilometrajeActual]) VALUES (N'Z0i-257   ', N'GMC       ', 46782)
INSERT [dbo].[Vehiculos] ([Placa], [Marca], [KilometrajeActual]) VALUES (N'z70-696   ', N'Kia       ', 98022)
INSERT [dbo].[Vehiculos] ([Placa], [Marca], [KilometrajeActual]) VALUES (N'zI9-762   ', N'GMC       ', 69628)
INSERT [dbo].[Vehiculos] ([Placa], [Marca], [KilometrajeActual]) VALUES (N'Zoi-283   ', N'Buick     ', 30725)
INSERT [dbo].[Vehiculos] ([Placa], [Marca], [KilometrajeActual]) VALUES (N'Zpe-871   ', N'Toyota    ', 90800)
INSERT [dbo].[Vehiculos] ([Placa], [Marca], [KilometrajeActual]) VALUES (N'zu3-293   ', N'Honda     ', 12559)
GO
USE [master]
GO
ALTER DATABASE [RentCar] SET  READ_WRITE 
GO
