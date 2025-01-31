USE [ConsorzioVinicolo]
GO
/****** Object:  Table [dbo].[Azienda]    Script Date: 06/06/2017 15:11:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Azienda](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](255) NOT NULL,
	[Indirizzo] [varchar](255) NOT NULL,
	[LatitudineLongitudine] [geography] NULL,
	[Titolare] [varchar](255) NOT NULL,
	[Telefono] [varchar](255) NOT NULL,
	[Email] [varchar](255) NOT NULL,
	[IdComune] [int] NULL,
 CONSTRAINT [PK_Azienda] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Bottiglia]    Script Date: 06/06/2017 15:11:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bottiglia](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Mese] [int] NOT NULL,
	[Anno] [int] NOT NULL,
	[Progressivo] [int] NOT NULL,
	[IdCassa] [int] NOT NULL,
 CONSTRAINT [PK_Bottiglia] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Cassa]    Script Date: 06/06/2017 15:11:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cassa](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Tipologia] [varchar](50) NOT NULL,
	[Annata] [int] NOT NULL,
	[Denominazione] [varchar](50) NOT NULL,
	[IdAzienda] [int] NOT NULL,
	[Nome] [varchar](100) NOT NULL,
	[IdCliente] [int] NOT NULL,
	[DataVendita] [date] NULL,
 CONSTRAINT [PK_Cassa] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 06/06/2017 15:11:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cliente](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](100) NOT NULL,
	[Tipo] [varchar](100) NOT NULL,
 CONSTRAINT [PK_Cliente] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Comune]    Script Date: 06/06/2017 15:11:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comune](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdProvincia] [int] NOT NULL,
	[Denominazione] [varchar](200) NOT NULL,
	[Capoluogo] [bit] NULL,
 CONSTRAINT [PK_Comune] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Immagini]    Script Date: 06/06/2017 15:11:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Immagini](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Immagine] [varchar](100) NOT NULL,
	[Didascalia] [text] NULL,
	[IdAzienda] [int] NOT NULL,
 CONSTRAINT [PK_Gallery] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Produzione]    Script Date: 06/06/2017 15:11:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Produzione](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UvaUtilizzata] [int] NOT NULL,
	[UvaLavorata] [int] NOT NULL,
	[TipologiaVino] [varchar](50) NOT NULL,
	[DataProduzione] [date] NOT NULL,
	[LitriProdotti] [int] NOT NULL,
	[BottiglieProdotte] [int] NOT NULL,
	[IdAzienda] [int] NOT NULL,
 CONSTRAINT [PK_Produzione] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Provincia]    Script Date: 06/06/2017 15:11:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Provincia](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdRegione] [int] NOT NULL,
	[Denominazione] [varchar](200) NOT NULL,
	[Sigla] [char](2) NOT NULL,
 CONSTRAINT [PK_Provincia] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Regione]    Script Date: 06/06/2017 15:11:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Regione](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdRipartizioneGeografica] [int] NOT NULL,
	[Denominazione] [varchar](200) NOT NULL,
 CONSTRAINT [PK_Table_1] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RipartizioneGeografica]    Script Date: 06/06/2017 15:11:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RipartizioneGeografica](
	[Id] [int] NOT NULL,
	[Denominazione] [varchar](200) NOT NULL,
 CONSTRAINT [PK_RipartizioneGeografica] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[Azienda]  WITH CHECK ADD  CONSTRAINT [FK_Azienda_Comune] FOREIGN KEY([IdComune])
REFERENCES [dbo].[Comune] ([Id])
GO
ALTER TABLE [dbo].[Azienda] CHECK CONSTRAINT [FK_Azienda_Comune]
GO
ALTER TABLE [dbo].[Bottiglia]  WITH CHECK ADD  CONSTRAINT [FK_Bottiglia_Cassa] FOREIGN KEY([IdCassa])
REFERENCES [dbo].[Cassa] ([Id])
GO
ALTER TABLE [dbo].[Bottiglia] CHECK CONSTRAINT [FK_Bottiglia_Cassa]
GO
ALTER TABLE [dbo].[Cassa]  WITH CHECK ADD  CONSTRAINT [FK_Cassa_Azienda] FOREIGN KEY([IdAzienda])
REFERENCES [dbo].[Azienda] ([Id])
GO
ALTER TABLE [dbo].[Cassa] CHECK CONSTRAINT [FK_Cassa_Azienda]
GO
ALTER TABLE [dbo].[Cassa]  WITH CHECK ADD  CONSTRAINT [FK_Cassa_Cliente] FOREIGN KEY([IdCliente])
REFERENCES [dbo].[Cliente] ([Id])
GO
ALTER TABLE [dbo].[Cassa] CHECK CONSTRAINT [FK_Cassa_Cliente]
GO
ALTER TABLE [dbo].[Comune]  WITH CHECK ADD  CONSTRAINT [FK_Comune_Provincia] FOREIGN KEY([IdProvincia])
REFERENCES [dbo].[Provincia] ([Id])
GO
ALTER TABLE [dbo].[Comune] CHECK CONSTRAINT [FK_Comune_Provincia]
GO
ALTER TABLE [dbo].[Immagini]  WITH CHECK ADD  CONSTRAINT [FK_Immagini_Azienda] FOREIGN KEY([IdAzienda])
REFERENCES [dbo].[Azienda] ([Id])
GO
ALTER TABLE [dbo].[Immagini] CHECK CONSTRAINT [FK_Immagini_Azienda]
GO
ALTER TABLE [dbo].[Produzione]  WITH CHECK ADD  CONSTRAINT [FK_Produzione_Azienda] FOREIGN KEY([IdAzienda])
REFERENCES [dbo].[Azienda] ([Id])
GO
ALTER TABLE [dbo].[Produzione] CHECK CONSTRAINT [FK_Produzione_Azienda]
GO
ALTER TABLE [dbo].[Provincia]  WITH CHECK ADD  CONSTRAINT [FK_Provincia_Regione] FOREIGN KEY([IdRegione])
REFERENCES [dbo].[Regione] ([Id])
GO
ALTER TABLE [dbo].[Provincia] CHECK CONSTRAINT [FK_Provincia_Regione]
GO
ALTER TABLE [dbo].[Regione]  WITH CHECK ADD  CONSTRAINT [FK_Regione_RipartizioneGeografica] FOREIGN KEY([IdRipartizioneGeografica])
REFERENCES [dbo].[RipartizioneGeografica] ([Id])
GO
ALTER TABLE [dbo].[Regione] CHECK CONSTRAINT [FK_Regione_RipartizioneGeografica]
GO
