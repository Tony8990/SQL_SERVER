USE [Store]
GO
/****** Object:  Table [dbo].[Categoria]    Script Date: 25/05/2017 09:32:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categoria](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](50) NOT NULL,
	[Descrizione] [varchar](200) NULL,
	[Immagine] [varchar](200) NULL,
 CONSTRAINT [PK__Categori__3214EC07EFA278BC] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 25/05/2017 09:32:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cliente](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](50) NOT NULL,
	[Cognome] [varchar](50) NOT NULL,
	[RagioneSociale] [varchar](100) NULL,
	[Telefono] [varchar](20) NULL,
	[Fax] [varchar](20) NULL,
	[Cellulare] [varchar](20) NULL,
	[Email] [varchar](50) NOT NULL,
	[CodiceFiscale] [varchar](16) NOT NULL,
	[PartitaIva] [varchar](20) NULL,
 CONSTRAINT [PK__Cliente__3214EC0799A54E82] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DettaglioOrdine]    Script Date: 25/05/2017 09:32:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DettaglioOrdine](
	[IdProdotto] [int] NOT NULL,
	[IdOrdine] [int] NOT NULL,
	[Quantita] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdProdotto] ASC,
	[IdOrdine] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Gallery]    Script Date: 25/05/2017 09:32:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Gallery](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdProdotto] [int] NULL,
	[Immagine] [varchar](200) NOT NULL,
	[Didascalia] [varchar](50) NOT NULL,
 CONSTRAINT [PK__Gallery__3214EC07AEA62707] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Indirizzo]    Script Date: 25/05/2017 09:32:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Indirizzo](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdCliente] [int] NOT NULL,
	[Via] [varchar](80) NOT NULL,
	[Citta] [varchar](80) NOT NULL,
	[Provincia] [varchar](2) NOT NULL,
	[Paese] [varchar](50) NOT NULL,
	[Fattura] [int] NOT NULL,
	[Spedizione] [int] NOT NULL,
 CONSTRAINT [PK__Indirizz__3214EC0708B17528] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Ordine]    Script Date: 25/05/2017 09:32:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ordine](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdCliente] [int] NOT NULL,
	[IdStato] [int] NOT NULL,
	[IdFatturazione] [int] NOT NULL,
	[IdSpedizione] [int] NOT NULL,
	[IdIndirizzo] [int] NOT NULL,
	[Data] [datetime] NOT NULL,
 CONSTRAINT [PK__Ordine__3214EC07EB82A626] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Prodotto]    Script Date: 25/05/2017 09:32:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Prodotto](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdCategoria] [int] NOT NULL,
	[Nome] [varchar](50) NOT NULL,
	[Descrizione] [text] NULL,
	[Prezzo] [float] NOT NULL,
	[Giacienza] [int] NOT NULL,
 CONSTRAINT [PK__Prodotto__3214EC07D5C371B7] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Stato]    Script Date: 25/05/2017 09:32:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Stato](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[DettaglioOrdine]  WITH CHECK ADD  CONSTRAINT [FK__Dettaglio__IdOrd__21B6055D] FOREIGN KEY([IdOrdine])
REFERENCES [dbo].[Ordine] ([Id])
GO
ALTER TABLE [dbo].[DettaglioOrdine] CHECK CONSTRAINT [FK__Dettaglio__IdOrd__21B6055D]
GO
ALTER TABLE [dbo].[DettaglioOrdine]  WITH CHECK ADD  CONSTRAINT [FK__Dettaglio__IdPro__20C1E124] FOREIGN KEY([IdProdotto])
REFERENCES [dbo].[Prodotto] ([Id])
GO
ALTER TABLE [dbo].[DettaglioOrdine] CHECK CONSTRAINT [FK__Dettaglio__IdPro__20C1E124]
GO
ALTER TABLE [dbo].[Gallery]  WITH CHECK ADD  CONSTRAINT [FK_Gallery_Prodotto] FOREIGN KEY([IdProdotto])
REFERENCES [dbo].[Prodotto] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Gallery] CHECK CONSTRAINT [FK_Gallery_Prodotto]
GO
ALTER TABLE [dbo].[Indirizzo]  WITH CHECK ADD  CONSTRAINT [FK__Indirizzo__IdCli__1920BF5C] FOREIGN KEY([IdCliente])
REFERENCES [dbo].[Cliente] ([Id])
GO
ALTER TABLE [dbo].[Indirizzo] CHECK CONSTRAINT [FK__Indirizzo__IdCli__1920BF5C]
GO
ALTER TABLE [dbo].[Ordine]  WITH CHECK ADD  CONSTRAINT [FK__Ordine__IdClient__1BFD2C07] FOREIGN KEY([IdCliente])
REFERENCES [dbo].[Cliente] ([Id])
GO
ALTER TABLE [dbo].[Ordine] CHECK CONSTRAINT [FK__Ordine__IdClient__1BFD2C07]
GO
ALTER TABLE [dbo].[Ordine]  WITH CHECK ADD  CONSTRAINT [FK_Ordine_Indirizzo] FOREIGN KEY([IdIndirizzo])
REFERENCES [dbo].[Indirizzo] ([Id])
GO
ALTER TABLE [dbo].[Ordine] CHECK CONSTRAINT [FK_Ordine_Indirizzo]
GO
ALTER TABLE [dbo].[Ordine]  WITH CHECK ADD  CONSTRAINT [FK_Ordine_IndirizzoFatturazione] FOREIGN KEY([IdFatturazione])
REFERENCES [dbo].[Indirizzo] ([Id])
GO
ALTER TABLE [dbo].[Ordine] CHECK CONSTRAINT [FK_Ordine_IndirizzoFatturazione]
GO
ALTER TABLE [dbo].[Ordine]  WITH CHECK ADD  CONSTRAINT [FK_Ordine_IndirizzoSpedizione] FOREIGN KEY([IdSpedizione])
REFERENCES [dbo].[Indirizzo] ([Id])
GO
ALTER TABLE [dbo].[Ordine] CHECK CONSTRAINT [FK_Ordine_IndirizzoSpedizione]
GO
ALTER TABLE [dbo].[Ordine]  WITH CHECK ADD  CONSTRAINT [FK_Ordine_Stato] FOREIGN KEY([IdStato])
REFERENCES [dbo].[Stato] ([Id])
GO
ALTER TABLE [dbo].[Ordine] CHECK CONSTRAINT [FK_Ordine_Stato]
GO
ALTER TABLE [dbo].[Prodotto]  WITH CHECK ADD  CONSTRAINT [FK__Prodotto__IdCate__1273C1CD] FOREIGN KEY([IdCategoria])
REFERENCES [dbo].[Categoria] ([Id])
GO
ALTER TABLE [dbo].[Prodotto] CHECK CONSTRAINT [FK__Prodotto__IdCate__1273C1CD]
GO
