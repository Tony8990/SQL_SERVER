USE [Store]
GO
/****** Object:  Table [dbo].[Categoria]    Script Date: 07/06/2017 11:47:58 ******/
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
/****** Object:  Table [dbo].[Cliente]    Script Date: 07/06/2017 11:47:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cliente](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](50) NOT NULL,
	[Cognome] [varchar](50) NOT NULL,
	[RagioneSociale] [varchar](100) NULL,
	[Telefono] [varchar](50) NULL,
	[Fax] [varchar](50) NULL,
	[Cellulare] [varchar](20) NULL,
	[Email] [varchar](50) NOT NULL,
	[CodiceFiscale] [varchar](20) NOT NULL,
	[PartitaIva] [varchar](50) NULL,
 CONSTRAINT [PK__Cliente__3214EC0799A54E82] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DettaglioOrdine]    Script Date: 07/06/2017 11:47:58 ******/
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
/****** Object:  Table [dbo].[Gallery]    Script Date: 07/06/2017 11:47:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Gallery](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdProdotto] [int] NULL,
	[Immagine] [varchar](200) NOT NULL,
	[Didascalia] [varchar](200) NOT NULL,
 CONSTRAINT [PK__Gallery__3214EC07AEA62707] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Indirizzo]    Script Date: 07/06/2017 11:47:58 ******/
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
/****** Object:  Table [dbo].[Ordine]    Script Date: 07/06/2017 11:47:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ordine](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdStato] [int] NOT NULL,
	[IdFatturazione] [int] NOT NULL,
	[IdSpedizione] [int] NOT NULL,
	[Data] [date] NOT NULL,
 CONSTRAINT [PK__Ordine__3214EC07EB82A626] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Prodotto]    Script Date: 07/06/2017 11:47:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Prodotto](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdCategoria] [int] NOT NULL,
	[Nome] [varchar](50) NOT NULL,
	[Descrizione] [text] NULL,
	[Prezzo] [money] NOT NULL,
	[Giacienza] [int] NOT NULL,
 CONSTRAINT [PK__Prodotto__3214EC07D5C371B7] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Stato]    Script Date: 07/06/2017 11:47:58 ******/
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
SET IDENTITY_INSERT [dbo].[Categoria] ON 

INSERT [dbo].[Categoria] ([Id], [Nome], [Descrizione], [Immagine]) VALUES (1, N'Abbigliamento Uomo', NULL, NULL)
INSERT [dbo].[Categoria] ([Id], [Nome], [Descrizione], [Immagine]) VALUES (2, N'Abbigliamento Donna', NULL, NULL)
INSERT [dbo].[Categoria] ([Id], [Nome], [Descrizione], [Immagine]) VALUES (3, N'Scarpe Uomo', NULL, NULL)
INSERT [dbo].[Categoria] ([Id], [Nome], [Descrizione], [Immagine]) VALUES (4, N'Scarpe Donna', NULL, NULL)
INSERT [dbo].[Categoria] ([Id], [Nome], [Descrizione], [Immagine]) VALUES (5, N'Accessori Uomo', NULL, NULL)
INSERT [dbo].[Categoria] ([Id], [Nome], [Descrizione], [Immagine]) VALUES (6, N'Accessori Donna', NULL, NULL)
INSERT [dbo].[Categoria] ([Id], [Nome], [Descrizione], [Immagine]) VALUES (7, N'Informatica', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed', N'nibh. Phasellus nulla.')
INSERT [dbo].[Categoria] ([Id], [Nome], [Descrizione], [Immagine]) VALUES (8, N'Libri', N'Lorem ipsum dolor', N'eu nibh vulputate')
INSERT [dbo].[Categoria] ([Id], [Nome], [Descrizione], [Immagine]) VALUES (9, N'TempoLibero', N'Lorem ipsum dolor sit amet,', N'turpis vitae purus')
INSERT [dbo].[Categoria] ([Id], [Nome], [Descrizione], [Immagine]) VALUES (10, N'Abbligliamento', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed', N'scelerisque sed, sapien.')
INSERT [dbo].[Categoria] ([Id], [Nome], [Descrizione], [Immagine]) VALUES (11, N'Abbligliamento', N'Lorem ipsum dolor sit amet,', N'risus quis diam')
INSERT [dbo].[Categoria] ([Id], [Nome], [Descrizione], [Immagine]) VALUES (12, N'TempoLibero', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', N'eu, accumsan sed,')
INSERT [dbo].[Categoria] ([Id], [Nome], [Descrizione], [Immagine]) VALUES (13, N'Informatica', N'Lorem ipsum dolor sit amet,', N'cursus, diam at')
INSERT [dbo].[Categoria] ([Id], [Nome], [Descrizione], [Immagine]) VALUES (14, N'Scarpe', N'Lorem ipsum dolor sit amet, consectetuer', N'In nec orci.')
INSERT [dbo].[Categoria] ([Id], [Nome], [Descrizione], [Immagine]) VALUES (15, N'Informatica', N'Lorem ipsum dolor sit amet, consectetuer', N'ac urna. Ut')
INSERT [dbo].[Categoria] ([Id], [Nome], [Descrizione], [Immagine]) VALUES (16, N'TempoLibero', N'Lorem ipsum dolor', N'tellus eu augue')
INSERT [dbo].[Categoria] ([Id], [Nome], [Descrizione], [Immagine]) VALUES (17, N'Abbligliamento', N'Lorem ipsum dolor sit amet, consectetuer adipiscing', N'vel lectus. Cum')
INSERT [dbo].[Categoria] ([Id], [Nome], [Descrizione], [Immagine]) VALUES (18, N'TempoLibero', N'Lorem ipsum', N'sodales at, velit.')
INSERT [dbo].[Categoria] ([Id], [Nome], [Descrizione], [Immagine]) VALUES (19, N'Scarpe', N'Lorem ipsum', N'Aliquam adipiscing lobortis')
INSERT [dbo].[Categoria] ([Id], [Nome], [Descrizione], [Immagine]) VALUES (20, N'Gameing', N'Lorem ipsum dolor sit amet, consectetuer', N'Nunc quis arcu')
INSERT [dbo].[Categoria] ([Id], [Nome], [Descrizione], [Immagine]) VALUES (21, N'Abbligliamento', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur', N'ac libero nec')
INSERT [dbo].[Categoria] ([Id], [Nome], [Descrizione], [Immagine]) VALUES (22, N'Scarpe', N'Lorem ipsum dolor sit', N'rhoncus. Nullam velit')
INSERT [dbo].[Categoria] ([Id], [Nome], [Descrizione], [Immagine]) VALUES (23, N'Elettronica', N'Lorem ipsum dolor sit amet,', N'Fusce mollis. Duis')
INSERT [dbo].[Categoria] ([Id], [Nome], [Descrizione], [Immagine]) VALUES (24, N'TempoLibero', N'Lorem ipsum', N'id, erat. Etiam')
INSERT [dbo].[Categoria] ([Id], [Nome], [Descrizione], [Immagine]) VALUES (25, N'Informatica', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', N'lobortis, nisi nibh')
INSERT [dbo].[Categoria] ([Id], [Nome], [Descrizione], [Immagine]) VALUES (26, N'Abbligliamento', N'Lorem ipsum dolor sit amet,', N'venenatis a, magna.')
INSERT [dbo].[Categoria] ([Id], [Nome], [Descrizione], [Immagine]) VALUES (27, N'Elettronica', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur', N'Quisque libero lacus,')
INSERT [dbo].[Categoria] ([Id], [Nome], [Descrizione], [Immagine]) VALUES (28, N'Abbligliamento', N'Lorem ipsum dolor sit amet,', N'ante blandit viverra.')
INSERT [dbo].[Categoria] ([Id], [Nome], [Descrizione], [Immagine]) VALUES (29, N'Abbligliamento', N'Lorem ipsum dolor sit amet, consectetuer adipiscing', N'quis arcu vel')
INSERT [dbo].[Categoria] ([Id], [Nome], [Descrizione], [Immagine]) VALUES (30, N'Libri', N'Lorem ipsum', N'posuere cubilia Curae;')
INSERT [dbo].[Categoria] ([Id], [Nome], [Descrizione], [Immagine]) VALUES (31, N'Informatica', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur', N'velit egestas lacinia.')
INSERT [dbo].[Categoria] ([Id], [Nome], [Descrizione], [Immagine]) VALUES (32, N'Casa', N'Lorem', N'et netus et')
INSERT [dbo].[Categoria] ([Id], [Nome], [Descrizione], [Immagine]) VALUES (33, N'Scarpe', N'Lorem', N'lacus. Etiam bibendum')
INSERT [dbo].[Categoria] ([Id], [Nome], [Descrizione], [Immagine]) VALUES (34, N'Elettronica', N'Lorem ipsum dolor sit amet,', N'tellus. Aenean egestas')
INSERT [dbo].[Categoria] ([Id], [Nome], [Descrizione], [Immagine]) VALUES (35, N'Elettronica', N'Lorem ipsum dolor sit amet, consectetuer adipiscing', N'Vivamus sit amet')
INSERT [dbo].[Categoria] ([Id], [Nome], [Descrizione], [Immagine]) VALUES (36, N'Informatica', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed', N'Integer in magna.')
INSERT [dbo].[Categoria] ([Id], [Nome], [Descrizione], [Immagine]) VALUES (37, N'Informatica', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed', N'et, eros. Proin')
INSERT [dbo].[Categoria] ([Id], [Nome], [Descrizione], [Immagine]) VALUES (38, N'Informatica', N'Lorem', N'aliquam arcu. Aliquam')
INSERT [dbo].[Categoria] ([Id], [Nome], [Descrizione], [Immagine]) VALUES (39, N'TempoLibero', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', N'ullamcorper. Duis at')
INSERT [dbo].[Categoria] ([Id], [Nome], [Descrizione], [Immagine]) VALUES (40, N'Abbligliamento', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed', N'nulla. In tincidunt')
INSERT [dbo].[Categoria] ([Id], [Nome], [Descrizione], [Immagine]) VALUES (41, N'Elettronica', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed', N'mauris a nunc.')
INSERT [dbo].[Categoria] ([Id], [Nome], [Descrizione], [Immagine]) VALUES (42, N'TempoLibero', N'Lorem ipsum dolor sit amet, consectetuer', N'auctor vitae, aliquet')
INSERT [dbo].[Categoria] ([Id], [Nome], [Descrizione], [Immagine]) VALUES (43, N'Elettronica', N'Lorem ipsum dolor sit amet,', N'lacinia at, iaculis')
INSERT [dbo].[Categoria] ([Id], [Nome], [Descrizione], [Immagine]) VALUES (44, N'Elettronica', N'Lorem ipsum dolor sit amet,', N'adipiscing fringilla, porttitor')
INSERT [dbo].[Categoria] ([Id], [Nome], [Descrizione], [Immagine]) VALUES (45, N'TempoLibero', N'Lorem ipsum dolor sit amet,', N'dolor quam, elementum')
INSERT [dbo].[Categoria] ([Id], [Nome], [Descrizione], [Immagine]) VALUES (46, N'Gameing', N'Lorem ipsum dolor sit amet, consectetuer', N'ac, feugiat non,')
INSERT [dbo].[Categoria] ([Id], [Nome], [Descrizione], [Immagine]) VALUES (47, N'Informatica', N'Lorem', N'aliquet vel, vulputate')
INSERT [dbo].[Categoria] ([Id], [Nome], [Descrizione], [Immagine]) VALUES (48, N'Libri', N'Lorem ipsum dolor sit amet, consectetuer adipiscing', N'ipsum ac mi')
INSERT [dbo].[Categoria] ([Id], [Nome], [Descrizione], [Immagine]) VALUES (49, N'Elettronica', N'Lorem ipsum dolor sit amet, consectetuer', N'Curae; Phasellus ornare.')
INSERT [dbo].[Categoria] ([Id], [Nome], [Descrizione], [Immagine]) VALUES (50, N'Casa', N'Lorem ipsum dolor sit amet, consectetuer adipiscing', N'est, congue a,')
INSERT [dbo].[Categoria] ([Id], [Nome], [Descrizione], [Immagine]) VALUES (51, N'Libri', N'Lorem ipsum dolor sit amet, consectetuer adipiscing', N'eget lacus. Mauris')
INSERT [dbo].[Categoria] ([Id], [Nome], [Descrizione], [Immagine]) VALUES (52, N'Casa', N'Lorem ipsum dolor sit amet,', N'eros. Proin ultrices.')
INSERT [dbo].[Categoria] ([Id], [Nome], [Descrizione], [Immagine]) VALUES (53, N'Informatica', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur', N'id risus quis')
INSERT [dbo].[Categoria] ([Id], [Nome], [Descrizione], [Immagine]) VALUES (54, N'Casa', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed', N'non, feugiat nec,')
INSERT [dbo].[Categoria] ([Id], [Nome], [Descrizione], [Immagine]) VALUES (55, N'Scarpe', N'Lorem ipsum dolor sit amet,', N'fringilla. Donec feugiat')
INSERT [dbo].[Categoria] ([Id], [Nome], [Descrizione], [Immagine]) VALUES (56, N'Abbligliamento', N'Lorem ipsum dolor sit amet, consectetuer adipiscing', N'lacus. Quisque purus')
INSERT [dbo].[Categoria] ([Id], [Nome], [Descrizione], [Immagine]) VALUES (57, N'TempoLibero', N'Lorem ipsum dolor sit', N'interdum. Sed auctor')
INSERT [dbo].[Categoria] ([Id], [Nome], [Descrizione], [Immagine]) VALUES (58, N'Abbligliamento', N'Lorem ipsum dolor sit amet, consectetuer', N'euismod est arcu')
INSERT [dbo].[Categoria] ([Id], [Nome], [Descrizione], [Immagine]) VALUES (59, N'Elettronica', N'Lorem ipsum dolor sit amet, consectetuer adipiscing', N'Donec luctus aliquet')
INSERT [dbo].[Categoria] ([Id], [Nome], [Descrizione], [Immagine]) VALUES (60, N'Gameing', N'Lorem ipsum dolor sit amet,', N'sed, facilisis vitae,')
INSERT [dbo].[Categoria] ([Id], [Nome], [Descrizione], [Immagine]) VALUES (61, N'TempoLibero', N'Lorem ipsum dolor sit amet, consectetuer adipiscing', N'erat, eget tincidunt')
INSERT [dbo].[Categoria] ([Id], [Nome], [Descrizione], [Immagine]) VALUES (62, N'Casa', N'Lorem ipsum dolor', N'dui, nec tempus')
INSERT [dbo].[Categoria] ([Id], [Nome], [Descrizione], [Immagine]) VALUES (63, N'Abbligliamento', N'Lorem ipsum', N'eget lacus. Mauris')
INSERT [dbo].[Categoria] ([Id], [Nome], [Descrizione], [Immagine]) VALUES (64, N'Informatica', N'Lorem ipsum dolor sit amet, consectetuer adipiscing', N'ut erat. Sed')
INSERT [dbo].[Categoria] ([Id], [Nome], [Descrizione], [Immagine]) VALUES (65, N'TempoLibero', N'Lorem ipsum dolor', N'ut mi. Duis')
INSERT [dbo].[Categoria] ([Id], [Nome], [Descrizione], [Immagine]) VALUES (66, N'TempoLibero', N'Lorem ipsum dolor sit amet,', N'vel sapien imperdiet')
INSERT [dbo].[Categoria] ([Id], [Nome], [Descrizione], [Immagine]) VALUES (67, N'Abbligliamento', N'Lorem ipsum dolor', N'semper auctor. Mauris')
INSERT [dbo].[Categoria] ([Id], [Nome], [Descrizione], [Immagine]) VALUES (68, N'Scarpe', N'Lorem', N'elit. Curabitur sed')
INSERT [dbo].[Categoria] ([Id], [Nome], [Descrizione], [Immagine]) VALUES (69, N'Gameing', N'Lorem', N'metus. In lorem.')
INSERT [dbo].[Categoria] ([Id], [Nome], [Descrizione], [Immagine]) VALUES (70, N'Abbligliamento', N'Lorem ipsum dolor sit', N'tincidunt. Donec vitae')
INSERT [dbo].[Categoria] ([Id], [Nome], [Descrizione], [Immagine]) VALUES (71, N'Libri', N'Lorem ipsum', N'blandit enim consequat')
INSERT [dbo].[Categoria] ([Id], [Nome], [Descrizione], [Immagine]) VALUES (72, N'Scarpe', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', N'Phasellus at augue')
INSERT [dbo].[Categoria] ([Id], [Nome], [Descrizione], [Immagine]) VALUES (73, N'Elettronica', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur', N'in consequat enim')
INSERT [dbo].[Categoria] ([Id], [Nome], [Descrizione], [Immagine]) VALUES (74, N'Casa', N'Lorem ipsum dolor sit amet, consectetuer adipiscing', N'Nulla interdum. Curabitur')
INSERT [dbo].[Categoria] ([Id], [Nome], [Descrizione], [Immagine]) VALUES (75, N'Informatica', N'Lorem ipsum dolor sit amet, consectetuer adipiscing', N'tempor bibendum. Donec')
INSERT [dbo].[Categoria] ([Id], [Nome], [Descrizione], [Immagine]) VALUES (76, N'Libri', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed', N'vulputate ullamcorper magna.')
INSERT [dbo].[Categoria] ([Id], [Nome], [Descrizione], [Immagine]) VALUES (77, N'TempoLibero', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur', N'vel nisl. Quisque')
INSERT [dbo].[Categoria] ([Id], [Nome], [Descrizione], [Immagine]) VALUES (78, N'Libri', N'Lorem ipsum dolor sit amet, consectetuer adipiscing', N'ut, sem. Nulla')
INSERT [dbo].[Categoria] ([Id], [Nome], [Descrizione], [Immagine]) VALUES (79, N'Abbligliamento', N'Lorem ipsum', N'dolor quam, elementum')
INSERT [dbo].[Categoria] ([Id], [Nome], [Descrizione], [Immagine]) VALUES (80, N'Gameing', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed', N'amet ornare lectus')
INSERT [dbo].[Categoria] ([Id], [Nome], [Descrizione], [Immagine]) VALUES (81, N'Gameing', N'Lorem ipsum', N'consequat, lectus sit')
INSERT [dbo].[Categoria] ([Id], [Nome], [Descrizione], [Immagine]) VALUES (82, N'Abbligliamento', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed', N'nisi magna sed')
INSERT [dbo].[Categoria] ([Id], [Nome], [Descrizione], [Immagine]) VALUES (83, N'Scarpe', N'Lorem ipsum dolor sit amet, consectetuer adipiscing', N'et, rutrum eu,')
INSERT [dbo].[Categoria] ([Id], [Nome], [Descrizione], [Immagine]) VALUES (84, N'TempoLibero', N'Lorem ipsum dolor sit amet, consectetuer', N'dolor. Fusce mi')
INSERT [dbo].[Categoria] ([Id], [Nome], [Descrizione], [Immagine]) VALUES (85, N'Scarpe', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur', N'lacus vestibulum lorem,')
INSERT [dbo].[Categoria] ([Id], [Nome], [Descrizione], [Immagine]) VALUES (86, N'Elettronica', N'Lorem ipsum dolor sit amet,', N'eget magna. Suspendisse')
INSERT [dbo].[Categoria] ([Id], [Nome], [Descrizione], [Immagine]) VALUES (87, N'Informatica', N'Lorem ipsum dolor sit', N'Nulla facilisis. Suspendisse')
INSERT [dbo].[Categoria] ([Id], [Nome], [Descrizione], [Immagine]) VALUES (88, N'Gameing', N'Lorem ipsum dolor sit amet, consectetuer adipiscing', N'faucibus lectus, a')
INSERT [dbo].[Categoria] ([Id], [Nome], [Descrizione], [Immagine]) VALUES (89, N'Casa', N'Lorem ipsum dolor sit', N'nunc nulla vulputate')
INSERT [dbo].[Categoria] ([Id], [Nome], [Descrizione], [Immagine]) VALUES (90, N'Gameing', N'Lorem ipsum dolor', N'Donec dignissim magna')
INSERT [dbo].[Categoria] ([Id], [Nome], [Descrizione], [Immagine]) VALUES (91, N'Scarpe', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur', N'non, lobortis quis,')
INSERT [dbo].[Categoria] ([Id], [Nome], [Descrizione], [Immagine]) VALUES (92, N'Elettronica', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur', N'nibh lacinia orci,')
INSERT [dbo].[Categoria] ([Id], [Nome], [Descrizione], [Immagine]) VALUES (93, N'Libri', N'Lorem ipsum', N'elit. Curabitur sed')
INSERT [dbo].[Categoria] ([Id], [Nome], [Descrizione], [Immagine]) VALUES (94, N'Casa', N'Lorem ipsum dolor', N'laoreet posuere, enim')
INSERT [dbo].[Categoria] ([Id], [Nome], [Descrizione], [Immagine]) VALUES (95, N'Scarpe', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed', N'interdum. Sed auctor')
INSERT [dbo].[Categoria] ([Id], [Nome], [Descrizione], [Immagine]) VALUES (96, N'Scarpe', N'Lorem ipsum dolor sit amet, consectetuer', N'id sapien. Cras')
INSERT [dbo].[Categoria] ([Id], [Nome], [Descrizione], [Immagine]) VALUES (97, N'Elettronica', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed', N'volutpat ornare, facilisis')
INSERT [dbo].[Categoria] ([Id], [Nome], [Descrizione], [Immagine]) VALUES (98, N'Casa', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed', N'iaculis enim, sit')
INSERT [dbo].[Categoria] ([Id], [Nome], [Descrizione], [Immagine]) VALUES (99, N'Libri', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', N'purus, accumsan interdum')
GO
INSERT [dbo].[Categoria] ([Id], [Nome], [Descrizione], [Immagine]) VALUES (100, N'Scarpe', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', N'in lobortis tellus')
INSERT [dbo].[Categoria] ([Id], [Nome], [Descrizione], [Immagine]) VALUES (101, N'Libri', N'Lorem', N'eu odio tristique')
INSERT [dbo].[Categoria] ([Id], [Nome], [Descrizione], [Immagine]) VALUES (102, N'Abbligliamento', N'Lorem', N'Quisque nonummy ipsum')
INSERT [dbo].[Categoria] ([Id], [Nome], [Descrizione], [Immagine]) VALUES (103, N'Casa', N'Lorem ipsum dolor sit amet,', N'nec, diam. Duis')
INSERT [dbo].[Categoria] ([Id], [Nome], [Descrizione], [Immagine]) VALUES (104, N'Scarpe', N'Lorem ipsum dolor sit amet,', N'dolor egestas rhoncus.')
INSERT [dbo].[Categoria] ([Id], [Nome], [Descrizione], [Immagine]) VALUES (105, N'Gameing', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur', N'dolor quam, elementum')
INSERT [dbo].[Categoria] ([Id], [Nome], [Descrizione], [Immagine]) VALUES (106, N'Informatica', N'Lorem ipsum', N'Duis ac arcu.')
SET IDENTITY_INSERT [dbo].[Categoria] OFF
SET IDENTITY_INSERT [dbo].[Cliente] ON 

INSERT [dbo].[Cliente] ([Id], [Nome], [Cognome], [RagioneSociale], [Telefono], [Fax], [Cellulare], [Email], [CodiceFiscale], [PartitaIva]) VALUES (1, N'Tony', N'Fava', NULL, N'327/7626072', NULL, N'327/7626072', N'tony.fava@edu.itspiemonte.it', N'FVATNY90A04H163T', NULL)
INSERT [dbo].[Cliente] ([Id], [Nome], [Cognome], [RagioneSociale], [Telefono], [Fax], [Cellulare], [Email], [CodiceFiscale], [PartitaIva]) VALUES (2, N'Simone', N'Fuoco', NULL, N'348/2244749', NULL, N'348/2244749', N'simone.fuoco@edu.itspiemonte.it', N'FCUSMN95C02C665W', NULL)
INSERT [dbo].[Cliente] ([Id], [Nome], [Cognome], [RagioneSociale], [Telefono], [Fax], [Cellulare], [Email], [CodiceFiscale], [PartitaIva]) VALUES (3, N'Gabriel', N'David', N'Scelerisque Mollis Incorporated', N'0931-82247', N'011-397171', N'+39-327-161663', N'Fusce@Duis.com', N'OXLVIWR0809RI332C', N'19769288499')
INSERT [dbo].[Cliente] ([Id], [Nome], [Cognome], [RagioneSociale], [Telefono], [Fax], [Cellulare], [Email], [CodiceFiscale], [PartitaIva]) VALUES (4, N'Jelani', N'Mcgowan', N'Vestibulum Nec PC', N'011-372166', N'011-544107', N'+39-320-4071882', N'volutpat.nunc@temporbibendum.ca', N'ZSOVHTW4355GC959G', N'46324667799')
INSERT [dbo].[Cliente] ([Id], [Nome], [Cognome], [RagioneSociale], [Telefono], [Fax], [Cellulare], [Email], [CodiceFiscale], [PartitaIva]) VALUES (5, N'Jeremy', N'Dalton', N'Id Mollis Nec LLP', N'011-891197', N'0931-71145', N'+39-327-935043', N'mauris@tristiquenequevenenatis.com', N'YLIZBJJ5990XP977A', N'14666372599')
INSERT [dbo].[Cliente] ([Id], [Nome], [Cognome], [RagioneSociale], [Telefono], [Fax], [Cellulare], [Email], [CodiceFiscale], [PartitaIva]) VALUES (6, N'Tyler', N'Browning', N'Felis Donec Limited', N'011-170292', N'0931-40075', N'+39-327-959704', N'Donec.est@amet.ca', N'LEYTDEQ8691QQ656X', N'91777786499')
INSERT [dbo].[Cliente] ([Id], [Nome], [Cognome], [RagioneSociale], [Telefono], [Fax], [Cellulare], [Email], [CodiceFiscale], [PartitaIva]) VALUES (7, N'Rajah', N'Cote', N'Feugiat Non Industries', N'011-261717', N'0931-95584', N'+39-327-662325', N'Suspendisse@auctor.com', N'LEFUGLA7366DV211B', N'37790972999')
INSERT [dbo].[Cliente] ([Id], [Nome], [Cognome], [RagioneSociale], [Telefono], [Fax], [Cellulare], [Email], [CodiceFiscale], [PartitaIva]) VALUES (8, N'Grant', N'Potter', N'Nunc Lectus Incorporated', N'011-001854', N'0931-75922', N'+39-320-2142715', N'diam.Proin@aduiCras.net', N'FYPBMDA4239TZ169U', N'52658213499')
INSERT [dbo].[Cliente] ([Id], [Nome], [Cognome], [RagioneSociale], [Telefono], [Fax], [Cellulare], [Email], [CodiceFiscale], [PartitaIva]) VALUES (9, N'Mufutau', N'Hunt', N'Risus Nunc Ac Corporation', N'0931-60274', N'0931-51179', N'+39-327-438857', N'non.egestas.a@Curabitur.ca', N'EFRCAYH1799WA385U', N'90732626899')
INSERT [dbo].[Cliente] ([Id], [Nome], [Cognome], [RagioneSociale], [Telefono], [Fax], [Cellulare], [Email], [CodiceFiscale], [PartitaIva]) VALUES (10, N'Luke', N'Rosales', N'Litora Torquent Per Corporation', N'0931-62626', N'0931-00941', N'+39-327-600253', N'Fusce.diam@lectusNullamsuscipit.net', N'HMTUZHI9186AZ966B', N'78415079699')
INSERT [dbo].[Cliente] ([Id], [Nome], [Cognome], [RagioneSociale], [Telefono], [Fax], [Cellulare], [Email], [CodiceFiscale], [PartitaIva]) VALUES (11, N'Harrison', N'Newton', N'Odio Aliquam Vulputate Limited', N'0931-49883', N'0931-42604', N'+39-320-4305482', N'euismod@Donec.edu', N'NYXIAVX5050IN964U', N'61817682799')
INSERT [dbo].[Cliente] ([Id], [Nome], [Cognome], [RagioneSociale], [Telefono], [Fax], [Cellulare], [Email], [CodiceFiscale], [PartitaIva]) VALUES (12, N'Raja', N'Wooten', N'Mi Aliquam Gravida Corp.', N'0931-05930', N'011-374162', N'+39-327-345495', N'enim.condimentum.eget@varius.net', N'GAGHOOD5968ON185N', N'97363037999')
INSERT [dbo].[Cliente] ([Id], [Nome], [Cognome], [RagioneSociale], [Telefono], [Fax], [Cellulare], [Email], [CodiceFiscale], [PartitaIva]) VALUES (13, N'Ryan', N'Shelton', N'Quisque Ornare Tortor Industries', N'0931-38221', N'011-507958', N'+39-320-7109463', N'Nulla.tincidunt.neque@consequatenimdiam.co.uk', N'QEJNLKI7402AX161C', N'15763719999')
INSERT [dbo].[Cliente] ([Id], [Nome], [Cognome], [RagioneSociale], [Telefono], [Fax], [Cellulare], [Email], [CodiceFiscale], [PartitaIva]) VALUES (14, N'August', N'Bentley', N'In Faucibus Associates', N'011-397128', N'011-516900', N'+39-327-226592', N'consectetuer.rhoncus@egestas.co.uk', N'YAALYCL8697WY758O', N'49697865599')
INSERT [dbo].[Cliente] ([Id], [Nome], [Cognome], [RagioneSociale], [Telefono], [Fax], [Cellulare], [Email], [CodiceFiscale], [PartitaIva]) VALUES (15, N'Jasper', N'Moran', N'Quam Vel Sapien Associates', N'0931-00027', N'011-006720', N'+39-327-857096', N'orci.Ut@feugiatnecdiam.org', N'QOMBUXQ5119CQ856Z', N'72236867999')
INSERT [dbo].[Cliente] ([Id], [Nome], [Cognome], [RagioneSociale], [Telefono], [Fax], [Cellulare], [Email], [CodiceFiscale], [PartitaIva]) VALUES (16, N'Daquan', N'Farmer', N'Risus Corporation', N'011-424454', N'0931-60199', N'+39-320-9577412', N'et.ultrices@semvitaealiquam.ca', N'INEASEB2337JS123X', N'39218418899')
INSERT [dbo].[Cliente] ([Id], [Nome], [Cognome], [RagioneSociale], [Telefono], [Fax], [Cellulare], [Email], [CodiceFiscale], [PartitaIva]) VALUES (17, N'Randall', N'Goodwin', N'Eu Turpis Nulla Company', N'0931-77713', N'011-207748', N'+39-320-5908653', N'rutrum@non.com', N'FIJOQGI4564XX471H', N'15273834599')
INSERT [dbo].[Cliente] ([Id], [Nome], [Cognome], [RagioneSociale], [Telefono], [Fax], [Cellulare], [Email], [CodiceFiscale], [PartitaIva]) VALUES (18, N'Ferdinand', N'Goodman', N'Nisl Ltd', N'0931-37350', N'011-069461', N'+39-320-8688013', N'et.netus.et@atauctor.edu', N'QDSLYPE1222PK716C', N'01907449399')
INSERT [dbo].[Cliente] ([Id], [Nome], [Cognome], [RagioneSociale], [Telefono], [Fax], [Cellulare], [Email], [CodiceFiscale], [PartitaIva]) VALUES (19, N'Fulton', N'Yang', N'Commodo Company', N'0931-78203', N'0931-33980', N'+39-327-783152', N'dolor.Fusce@dolorFuscefeugiat.co.uk', N'YLVZERG1689JA518J', N'73949308599')
INSERT [dbo].[Cliente] ([Id], [Nome], [Cognome], [RagioneSociale], [Telefono], [Fax], [Cellulare], [Email], [CodiceFiscale], [PartitaIva]) VALUES (20, N'Drew', N'Taylor', N'Proin Ultrices Duis Institute', N'0931-70183', N'0931-78330', N'+39-327-618236', N'eget.massa@Suspendisse.net', N'OBHPLCZ0506IL634C', N'19371154699')
INSERT [dbo].[Cliente] ([Id], [Nome], [Cognome], [RagioneSociale], [Telefono], [Fax], [Cellulare], [Email], [CodiceFiscale], [PartitaIva]) VALUES (21, N'Keegan', N'Bender', N'Ut Inc.', N'011-466447', N'0931-38335', N'+39-327-959442', N'Suspendisse@fermentum.co.uk', N'ARYXYMS5616EO217V', N'61764489599')
INSERT [dbo].[Cliente] ([Id], [Nome], [Cognome], [RagioneSociale], [Telefono], [Fax], [Cellulare], [Email], [CodiceFiscale], [PartitaIva]) VALUES (22, N'Lester', N'Stephenson', N'Sit Amet Consectetuer Consulting', N'011-182196', N'0931-20814', N'+39-320-4987816', N'congue.a.aliquet@quismassaMauris.co.uk', N'TLTGLHH7865QP379G', N'22204859199')
INSERT [dbo].[Cliente] ([Id], [Nome], [Cognome], [RagioneSociale], [Telefono], [Fax], [Cellulare], [Email], [CodiceFiscale], [PartitaIva]) VALUES (23, N'Lane', N'Hammond', N'Eleifend Nunc Risus Foundation', N'011-761348', N'0931-04952', N'+39-320-4529040', N'libero.lacus@Proinegetodio.com', N'YEILTVJ0854DV414H', N'69472131999')
INSERT [dbo].[Cliente] ([Id], [Nome], [Cognome], [RagioneSociale], [Telefono], [Fax], [Cellulare], [Email], [CodiceFiscale], [PartitaIva]) VALUES (24, N'Jameson', N'Trevino', N'Ut Nulla LLC', N'011-748243', N'011-139657', N'+39-320-3813435', N'Curae@ligula.co.uk', N'PSIACSA8348OA437Q', N'21756909699')
INSERT [dbo].[Cliente] ([Id], [Nome], [Cognome], [RagioneSociale], [Telefono], [Fax], [Cellulare], [Email], [CodiceFiscale], [PartitaIva]) VALUES (25, N'Troy', N'Hamilton', N'Vitae Diam Ltd', N'011-890375', N'011-844814', N'+39-320-1759651', N'dictum@idnunc.edu', N'LPTTRSS0977QZ662Y', N'98326491199')
INSERT [dbo].[Cliente] ([Id], [Nome], [Cognome], [RagioneSociale], [Telefono], [Fax], [Cellulare], [Email], [CodiceFiscale], [PartitaIva]) VALUES (26, N'Fulton', N'Schneider', N'Suspendisse LLC', N'0931-98611', N'0931-28541', N'+39-320-3891765', N'lobortis.Class@semmolestie.com', N'CXNKSHZ6004YP938D', N'05744751199')
INSERT [dbo].[Cliente] ([Id], [Nome], [Cognome], [RagioneSociale], [Telefono], [Fax], [Cellulare], [Email], [CodiceFiscale], [PartitaIva]) VALUES (27, N'Jacob', N'Duke', N'Quisque Associates', N'0931-20093', N'0931-92224', N'+39-320-5266571', N'malesuada.id@faucibusid.com', N'EUXMQFB8627MQ380U', N'00452235699')
INSERT [dbo].[Cliente] ([Id], [Nome], [Cognome], [RagioneSociale], [Telefono], [Fax], [Cellulare], [Email], [CodiceFiscale], [PartitaIva]) VALUES (28, N'Cooper', N'Jackson', N'Velit Egestas Associates', N'0931-71934', N'0931-32086', N'+39-327-557565', N'convallis.est.vitae@sollicitudinorcisem.org', N'OQBEKUS0091BR116X', N'41435185699')
INSERT [dbo].[Cliente] ([Id], [Nome], [Cognome], [RagioneSociale], [Telefono], [Fax], [Cellulare], [Email], [CodiceFiscale], [PartitaIva]) VALUES (29, N'Beau', N'Donaldson', N'Posuere Inc.', N'0931-79036', N'0931-15468', N'+39-327-569041', N'Integer.mollis@Seddiamlorem.org', N'VVFDSID3077HY081Z', N'72933623899')
INSERT [dbo].[Cliente] ([Id], [Nome], [Cognome], [RagioneSociale], [Telefono], [Fax], [Cellulare], [Email], [CodiceFiscale], [PartitaIva]) VALUES (30, N'Gil', N'Green', N'Lectus Ltd', N'0931-77802', N'0931-82356', N'+39-327-448390', N'torquent.per@imperdietnecleo.com', N'KREQPZJ2955KX202J', N'43712263299')
INSERT [dbo].[Cliente] ([Id], [Nome], [Cognome], [RagioneSociale], [Telefono], [Fax], [Cellulare], [Email], [CodiceFiscale], [PartitaIva]) VALUES (31, N'Jacob', N'Alexander', N'Enim LLC', N'011-630400', N'011-988451', N'+39-327-852656', N'vitae@Maecenas.edu', N'YXVNABC6015IB761D', N'09628701599')
INSERT [dbo].[Cliente] ([Id], [Nome], [Cognome], [RagioneSociale], [Telefono], [Fax], [Cellulare], [Email], [CodiceFiscale], [PartitaIva]) VALUES (32, N'Cairo', N'Schneider', N'Quisque Fringilla PC', N'011-991645', N'0931-31544', N'+39-320-2017420', N'dui.Cum.sociis@quis.co.uk', N'YYQYYXF5115OZ780M', N'05508797499')
INSERT [dbo].[Cliente] ([Id], [Nome], [Cognome], [RagioneSociale], [Telefono], [Fax], [Cellulare], [Email], [CodiceFiscale], [PartitaIva]) VALUES (33, N'Lucian', N'Hutchinson', N'Netus Et LLP', N'011-590470', N'0931-70793', N'+39-327-231595', N'ridiculus.mus@liberomauris.co.uk', N'BRRJGQF5497XL995T', N'27319231599')
INSERT [dbo].[Cliente] ([Id], [Nome], [Cognome], [RagioneSociale], [Telefono], [Fax], [Cellulare], [Email], [CodiceFiscale], [PartitaIva]) VALUES (34, N'Jacob', N'Mann', N'Elementum Lorem Ut Corporation', N'0931-23796', N'0931-71344', N'+39-327-736062', N'ullamcorper.Duis@sitamet.org', N'PSCQEYJ3145HZ200I', N'56349821299')
INSERT [dbo].[Cliente] ([Id], [Nome], [Cognome], [RagioneSociale], [Telefono], [Fax], [Cellulare], [Email], [CodiceFiscale], [PartitaIva]) VALUES (35, N'Thomas', N'Rivera', N'Tellus Phasellus LLP', N'011-666335', N'0931-97137', N'+39-320-6395926', N'adipiscing@montes.org', N'EDWVSQP2549BP448Q', N'94687190099')
INSERT [dbo].[Cliente] ([Id], [Nome], [Cognome], [RagioneSociale], [Telefono], [Fax], [Cellulare], [Email], [CodiceFiscale], [PartitaIva]) VALUES (36, N'Cooper', N'Thompson', N'Diam PC', N'011-364871', N'011-436115', N'+39-320-7164233', N'Fusce@Donec.net', N'ONASDTK8340ZQ152Y', N'85471959799')
INSERT [dbo].[Cliente] ([Id], [Nome], [Cognome], [RagioneSociale], [Telefono], [Fax], [Cellulare], [Email], [CodiceFiscale], [PartitaIva]) VALUES (37, N'Chadwick', N'Wise', N'Eleifend Nunc Risus Ltd', N'011-955919', N'0931-96888', N'+39-327-344524', N'eget.mollis.lectus@Proinvel.edu', N'HKZQPOO6301QX425L', N'90452966399')
INSERT [dbo].[Cliente] ([Id], [Nome], [Cognome], [RagioneSociale], [Telefono], [Fax], [Cellulare], [Email], [CodiceFiscale], [PartitaIva]) VALUES (38, N'Yoshio', N'Walters', N'Luctus Vulputate Nisi LLP', N'0931-91306', N'0931-49455', N'+39-320-9685741', N'iaculis.aliquet@atortorNunc.co.uk', N'YXDRDUZ4638MI204Q', N'41893236599')
INSERT [dbo].[Cliente] ([Id], [Nome], [Cognome], [RagioneSociale], [Telefono], [Fax], [Cellulare], [Email], [CodiceFiscale], [PartitaIva]) VALUES (39, N'Amal', N'Cook', N'Varius Nam Porttitor Foundation', N'011-249376', N'0931-93240', N'+39-327-385247', N'auctor@magnamalesuadavel.net', N'SNSIEXM1963WD256J', N'45468580199')
INSERT [dbo].[Cliente] ([Id], [Nome], [Cognome], [RagioneSociale], [Telefono], [Fax], [Cellulare], [Email], [CodiceFiscale], [PartitaIva]) VALUES (40, N'Bradley', N'Burgess', N'Dis LLP', N'011-970941', N'011-085336', N'+39-320-2754659', N'turpis.Nulla.aliquet@interdum.org', N'YNPPERJ5402QF267L', N'53489484799')
INSERT [dbo].[Cliente] ([Id], [Nome], [Cognome], [RagioneSociale], [Telefono], [Fax], [Cellulare], [Email], [CodiceFiscale], [PartitaIva]) VALUES (41, N'Judah', N'Frye', N'Nisi Dictum Company', N'0931-51772', N'0931-67945', N'+39-320-3311655', N'dapibus@fringillaest.com', N'QWESLVD9076TJ502P', N'96613748599')
INSERT [dbo].[Cliente] ([Id], [Nome], [Cognome], [RagioneSociale], [Telefono], [Fax], [Cellulare], [Email], [CodiceFiscale], [PartitaIva]) VALUES (42, N'Carlos', N'Chambers', N'Pellentesque Ultricies Consulting', N'0931-12836', N'011-321966', N'+39-327-032974', N'nibh.Aliquam@Pellentesquehabitantmorbi.ca', N'GPUEWTH9283CD379R', N'09571836299')
INSERT [dbo].[Cliente] ([Id], [Nome], [Cognome], [RagioneSociale], [Telefono], [Fax], [Cellulare], [Email], [CodiceFiscale], [PartitaIva]) VALUES (43, N'Nathaniel', N'Short', N'Odio Aliquam Company', N'011-917354', N'0931-09243', N'+39-327-512584', N'metus.Aliquam.erat@sollicitudin.edu', N'AIODIXZ3074SX195P', N'78941969499')
INSERT [dbo].[Cliente] ([Id], [Nome], [Cognome], [RagioneSociale], [Telefono], [Fax], [Cellulare], [Email], [CodiceFiscale], [PartitaIva]) VALUES (44, N'Maxwell', N'Beasley', N'Tellus Sem Ltd', N'011-710888', N'0931-58817', N'+39-320-4549274', N'consequat.auctor@utmolestie.ca', N'RHBZBEN0042TP120N', N'27675897299')
INSERT [dbo].[Cliente] ([Id], [Nome], [Cognome], [RagioneSociale], [Telefono], [Fax], [Cellulare], [Email], [CodiceFiscale], [PartitaIva]) VALUES (45, N'Yuli', N'Holland', N'Cursus PC', N'011-320497', N'011-426336', N'+39-327-754791', N'risus@Quisqueornaretortor.co.uk', N'GTEBROO5361MR724V', N'14823857299')
INSERT [dbo].[Cliente] ([Id], [Nome], [Cognome], [RagioneSociale], [Telefono], [Fax], [Cellulare], [Email], [CodiceFiscale], [PartitaIva]) VALUES (46, N'Brody', N'Love', N'In Inc.', N'011-874877', N'011-624321', N'+39-320-7326103', N'blandit.viverra@Aliquamauctor.ca', N'GJONMDL4179HX774R', N'79539201499')
INSERT [dbo].[Cliente] ([Id], [Nome], [Cognome], [RagioneSociale], [Telefono], [Fax], [Cellulare], [Email], [CodiceFiscale], [PartitaIva]) VALUES (47, N'Kirk', N'Parker', N'Gravida Non Industries', N'0931-82444', N'011-941101', N'+39-320-1932767', N'metus@luctus.net', N'NNSRCYO4070UD723A', N'79259805099')
INSERT [dbo].[Cliente] ([Id], [Nome], [Cognome], [RagioneSociale], [Telefono], [Fax], [Cellulare], [Email], [CodiceFiscale], [PartitaIva]) VALUES (48, N'Henry', N'Sampson', N'Sagittis Corp.', N'011-395653', N'0931-35941', N'+39-320-7798885', N'accumsan.interdum@necligula.ca', N'TULUISX9393IY938H', N'58776504899')
INSERT [dbo].[Cliente] ([Id], [Nome], [Cognome], [RagioneSociale], [Telefono], [Fax], [Cellulare], [Email], [CodiceFiscale], [PartitaIva]) VALUES (49, N'Dustin', N'Goodwin', N'Eu Company', N'0931-57700', N'0931-87754', N'+39-327-512454', N'feugiat.non.lobortis@Aliquam.com', N'LIHANKR6488BF218R', N'04967504099')
INSERT [dbo].[Cliente] ([Id], [Nome], [Cognome], [RagioneSociale], [Telefono], [Fax], [Cellulare], [Email], [CodiceFiscale], [PartitaIva]) VALUES (50, N'Gannon', N'Logan', N'Ipsum Corp.', N'0931-60684', N'0931-70113', N'+39-320-6986315', N'elit.pretium.et@tristiquepellentesque.org', N'ZPXAKTU7862IZ020A', N'52905698399')
INSERT [dbo].[Cliente] ([Id], [Nome], [Cognome], [RagioneSociale], [Telefono], [Fax], [Cellulare], [Email], [CodiceFiscale], [PartitaIva]) VALUES (51, N'Marsden', N'Rosa', N'Inceptos Inc.', N'0931-63567', N'0931-16675', N'+39-327-265986', N'lorem@Duis.edu', N'VPJDIKT6170QY919A', N'77755619499')
INSERT [dbo].[Cliente] ([Id], [Nome], [Cognome], [RagioneSociale], [Telefono], [Fax], [Cellulare], [Email], [CodiceFiscale], [PartitaIva]) VALUES (52, N'Todd', N'Ford', N'Enim Etiam Imperdiet Institute', N'0931-58527', N'0931-82345', N'+39-327-751761', N'ante.Vivamus@eteuismod.ca', N'PBGZWPH0104KA379N', N'85590037199')
INSERT [dbo].[Cliente] ([Id], [Nome], [Cognome], [RagioneSociale], [Telefono], [Fax], [Cellulare], [Email], [CodiceFiscale], [PartitaIva]) VALUES (53, N'Jonah', N'Mosley', N'Auctor Foundation', N'011-000708', N'011-061681', N'+39-327-567282', N'dictum.mi@massalobortisultrices.com', N'PMLTRPT9485EO103M', N'39904877699')
INSERT [dbo].[Cliente] ([Id], [Nome], [Cognome], [RagioneSociale], [Telefono], [Fax], [Cellulare], [Email], [CodiceFiscale], [PartitaIva]) VALUES (54, N'Zane', N'Salazar', N'Donec Nibh PC', N'011-746931', N'0931-73690', N'+39-320-7986944', N'sagittis.lobortis@Praesent.edu', N'PIYTLMZ5639DV027E', N'73609738499')
INSERT [dbo].[Cliente] ([Id], [Nome], [Cognome], [RagioneSociale], [Telefono], [Fax], [Cellulare], [Email], [CodiceFiscale], [PartitaIva]) VALUES (55, N'Jack', N'Rivers', N'Erat Sed Corporation', N'0931-14302', N'011-660640', N'+39-327-013424', N'porta@Vivamus.org', N'PDIGAMK2796VP530T', N'08423897999')
INSERT [dbo].[Cliente] ([Id], [Nome], [Cognome], [RagioneSociale], [Telefono], [Fax], [Cellulare], [Email], [CodiceFiscale], [PartitaIva]) VALUES (56, N'Ronan', N'Irwin', N'Fermentum Convallis Ligula Industries', N'011-758117', N'011-978065', N'+39-320-3874274', N'pede@variusNamporttitor.org', N'OMTRUAL9267IB291F', N'06821442999')
INSERT [dbo].[Cliente] ([Id], [Nome], [Cognome], [RagioneSociale], [Telefono], [Fax], [Cellulare], [Email], [CodiceFiscale], [PartitaIva]) VALUES (57, N'Rajah', N'Anderson', N'At Iaculis Quis Corporation', N'0931-01643', N'011-333632', N'+39-327-507055', N'Mauris@massa.edu', N'JVQHBML3591SL147I', N'41520929199')
INSERT [dbo].[Cliente] ([Id], [Nome], [Cognome], [RagioneSociale], [Telefono], [Fax], [Cellulare], [Email], [CodiceFiscale], [PartitaIva]) VALUES (58, N'Alvin', N'Schmidt', N'Et Corp.', N'0931-58692', N'0931-95450', N'+39-320-5898923', N'lectus.justo@molestie.org', N'LCJSFAN9895ZJ754I', N'24475792499')
INSERT [dbo].[Cliente] ([Id], [Nome], [Cognome], [RagioneSociale], [Telefono], [Fax], [Cellulare], [Email], [CodiceFiscale], [PartitaIva]) VALUES (59, N'Deacon', N'Mccullough', N'Lacus LLP', N'011-227982', N'011-108143', N'+39-320-7442572', N'malesuada.fames@sagittisplacerat.co.uk', N'AEQMPJX8320LT581O', N'24618061499')
INSERT [dbo].[Cliente] ([Id], [Nome], [Cognome], [RagioneSociale], [Telefono], [Fax], [Cellulare], [Email], [CodiceFiscale], [PartitaIva]) VALUES (60, N'Levi', N'Bird', N'Mauris Suspendisse Aliquet Institute', N'011-290714', N'0931-19187', N'+39-327-250467', N'semper.dui@eratsemperrutrum.com', N'EHAULXP2956JZ020G', N'84931989499')
INSERT [dbo].[Cliente] ([Id], [Nome], [Cognome], [RagioneSociale], [Telefono], [Fax], [Cellulare], [Email], [CodiceFiscale], [PartitaIva]) VALUES (61, N'Mason', N'Espinoza', N'Tristique Ac Associates', N'0931-26839', N'011-758870', N'+39-327-523969', N'lacus.pede@fermentummetusAenean.edu', N'MGDDYKR0675CQ813P', N'27940164699')
INSERT [dbo].[Cliente] ([Id], [Nome], [Cognome], [RagioneSociale], [Telefono], [Fax], [Cellulare], [Email], [CodiceFiscale], [PartitaIva]) VALUES (62, N'Jerry', N'Williams', N'Risus Morbi Metus Ltd', N'0931-51012', N'0931-10398', N'+39-327-822233', N'amet.massa@mi.ca', N'RUZASDD3013YZ504H', N'11387846099')
INSERT [dbo].[Cliente] ([Id], [Nome], [Cognome], [RagioneSociale], [Telefono], [Fax], [Cellulare], [Email], [CodiceFiscale], [PartitaIva]) VALUES (63, N'Tobias', N'Fry', N'Nunc Laoreet Associates', N'0931-76262', N'0931-32120', N'+39-320-0353284', N'montes.nascetur.ridiculus@commodo.org', N'DDTTPPW2161DL197V', N'18379760199')
INSERT [dbo].[Cliente] ([Id], [Nome], [Cognome], [RagioneSociale], [Telefono], [Fax], [Cellulare], [Email], [CodiceFiscale], [PartitaIva]) VALUES (64, N'Oscar', N'Gaines', N'Euismod Ltd', N'011-880090', N'0931-91045', N'+39-320-1523762', N'sagittis.lobortis.mauris@ametdiam.co.uk', N'JYPZVFW3106YH406T', N'46531011899')
INSERT [dbo].[Cliente] ([Id], [Nome], [Cognome], [RagioneSociale], [Telefono], [Fax], [Cellulare], [Email], [CodiceFiscale], [PartitaIva]) VALUES (65, N'Josiah', N'Duran', N'Ipsum Primis In Incorporated', N'0931-81918', N'011-609748', N'+39-327-274548', N'pharetra@sit.org', N'NCCZFVW9208TW404I', N'94876086699')
INSERT [dbo].[Cliente] ([Id], [Nome], [Cognome], [RagioneSociale], [Telefono], [Fax], [Cellulare], [Email], [CodiceFiscale], [PartitaIva]) VALUES (66, N'Michael', N'Bullock', N'Sed Ltd', N'011-391747', N'011-605502', N'+39-320-9531884', N'ac@luctus.net', N'AYCEOMA7284UL079R', N'15919289299')
INSERT [dbo].[Cliente] ([Id], [Nome], [Cognome], [RagioneSociale], [Telefono], [Fax], [Cellulare], [Email], [CodiceFiscale], [PartitaIva]) VALUES (67, N'Paul', N'Marquez', N'Dictum LLP', N'011-687536', N'0931-64146', N'+39-327-171726', N'at@nec.com', N'QSFTKKB6114ZG535N', N'25925880299')
INSERT [dbo].[Cliente] ([Id], [Nome], [Cognome], [RagioneSociale], [Telefono], [Fax], [Cellulare], [Email], [CodiceFiscale], [PartitaIva]) VALUES (68, N'Bernard', N'Sherman', N'Purus Associates', N'011-847926', N'0931-00209', N'+39-327-384107', N'lorem.ipsum.sodales@blanditviverra.org', N'VYCAKHS6749JW986A', N'75327038599')
INSERT [dbo].[Cliente] ([Id], [Nome], [Cognome], [RagioneSociale], [Telefono], [Fax], [Cellulare], [Email], [CodiceFiscale], [PartitaIva]) VALUES (69, N'Ciaran', N'Whitley', N'Nibh Phasellus Foundation', N'0931-14599', N'011-508381', N'+39-320-8172976', N'Duis.risus@nonummyFuscefermentum.net', N'LIFRECI8747HS766U', N'46599207299')
INSERT [dbo].[Cliente] ([Id], [Nome], [Cognome], [RagioneSociale], [Telefono], [Fax], [Cellulare], [Email], [CodiceFiscale], [PartitaIva]) VALUES (70, N'Hakeem', N'Johnston', N'Sollicitudin Industries', N'011-065270', N'0931-65543', N'+39-327-546064', N'posuere.vulputate@faucibus.ca', N'RAGYZKO1333NZ289O', N'89481429399')
INSERT [dbo].[Cliente] ([Id], [Nome], [Cognome], [RagioneSociale], [Telefono], [Fax], [Cellulare], [Email], [CodiceFiscale], [PartitaIva]) VALUES (71, N'Shad', N'Chapman', N'Gravida Institute', N'0931-29107', N'0931-34476', N'+39-327-548492', N'nisl.sem@VivamusnisiMauris.net', N'PPMDFBR1635TB780V', N'32947332699')
INSERT [dbo].[Cliente] ([Id], [Nome], [Cognome], [RagioneSociale], [Telefono], [Fax], [Cellulare], [Email], [CodiceFiscale], [PartitaIva]) VALUES (72, N'Dean', N'Craft', N'Quis Company', N'0931-87637', N'0931-69814', N'+39-327-649045', N'Fusce.feugiat.Lorem@Maurisut.net', N'BBIBHPA1934AT986B', N'02435780499')
INSERT [dbo].[Cliente] ([Id], [Nome], [Cognome], [RagioneSociale], [Telefono], [Fax], [Cellulare], [Email], [CodiceFiscale], [PartitaIva]) VALUES (73, N'Howard', N'Rivers', N'Neque Industries', N'011-877577', N'0931-71725', N'+39-327-403789', N'imperdiet.ullamcorper@dignissim.com', N'NLIYTIV5563NF254D', N'31943901299')
INSERT [dbo].[Cliente] ([Id], [Nome], [Cognome], [RagioneSociale], [Telefono], [Fax], [Cellulare], [Email], [CodiceFiscale], [PartitaIva]) VALUES (74, N'Dominic', N'Cherry', N'Posuere Vulputate Consulting', N'011-951181', N'011-930809', N'+39-320-9174147', N'nascetur.ridiculus.mus@a.co.uk', N'LUJDHLA1316OC974U', N'36915227499')
INSERT [dbo].[Cliente] ([Id], [Nome], [Cognome], [RagioneSociale], [Telefono], [Fax], [Cellulare], [Email], [CodiceFiscale], [PartitaIva]) VALUES (75, N'Armand', N'Johnston', N'Ut Eros Associates', N'0931-16319', N'011-722172', N'+39-320-7423820', N'laoreet.lectus.quis@intempus.net', N'ZBBKYFF0020WW051R', N'43482181399')
INSERT [dbo].[Cliente] ([Id], [Nome], [Cognome], [RagioneSociale], [Telefono], [Fax], [Cellulare], [Email], [CodiceFiscale], [PartitaIva]) VALUES (76, N'Wang', N'Parks', N'Vulputate Mauris Sagittis Associates', N'011-909182', N'011-244059', N'+39-320-7521307', N'placerat@fermentum.org', N'TEYAZQW7768LQ929B', N'54499155399')
INSERT [dbo].[Cliente] ([Id], [Nome], [Cognome], [RagioneSociale], [Telefono], [Fax], [Cellulare], [Email], [CodiceFiscale], [PartitaIva]) VALUES (77, N'Brody', N'Kane', N'Nunc Laoreet Associates', N'011-416433', N'0931-81119', N'+39-320-2020631', N'malesuada.fames.ac@rutrum.net', N'JQWCVIB0225YI936W', N'63860089399')
INSERT [dbo].[Cliente] ([Id], [Nome], [Cognome], [RagioneSociale], [Telefono], [Fax], [Cellulare], [Email], [CodiceFiscale], [PartitaIva]) VALUES (78, N'Bernard', N'Curtis', N'Vitae Erat Vivamus Corporation', N'0931-98491', N'011-982399', N'+39-327-393356', N'nisi@Nulla.com', N'EAUUATE4021LR161Q', N'58903928399')
INSERT [dbo].[Cliente] ([Id], [Nome], [Cognome], [RagioneSociale], [Telefono], [Fax], [Cellulare], [Email], [CodiceFiscale], [PartitaIva]) VALUES (79, N'John', N'Campbell', N'In Mi Associates', N'0931-41270', N'0931-23179', N'+39-320-9288676', N'purus.Nullam@sociisnatoquepenatibus.com', N'AQKVESC7605LK275K', N'39535633799')
INSERT [dbo].[Cliente] ([Id], [Nome], [Cognome], [RagioneSociale], [Telefono], [Fax], [Cellulare], [Email], [CodiceFiscale], [PartitaIva]) VALUES (80, N'Caleb', N'Marks', N'Scelerisque Dui Suspendisse Inc.', N'0931-18774', N'011-445582', N'+39-327-718572', N'et@mollisInteger.edu', N'RVGEFZP7235KC894P', N'45390525099')
INSERT [dbo].[Cliente] ([Id], [Nome], [Cognome], [RagioneSociale], [Telefono], [Fax], [Cellulare], [Email], [CodiceFiscale], [PartitaIva]) VALUES (81, N'Warren', N'Owens', N'Eu Inc.', N'0931-26145', N'011-979344', N'+39-327-928215', N'nec@DuisgravidaPraesent.co.uk', N'EKRSXXB3177DZ688F', N'32533398799')
INSERT [dbo].[Cliente] ([Id], [Nome], [Cognome], [RagioneSociale], [Telefono], [Fax], [Cellulare], [Email], [CodiceFiscale], [PartitaIva]) VALUES (82, N'Josiah', N'Spence', N'Risus A Industries', N'011-711069', N'0931-98308', N'+39-320-2780732', N'Curabitur@viverraDonectempus.ca', N'CWEORPZ0465YB269E', N'69951839699')
INSERT [dbo].[Cliente] ([Id], [Nome], [Cognome], [RagioneSociale], [Telefono], [Fax], [Cellulare], [Email], [CodiceFiscale], [PartitaIva]) VALUES (83, N'Joel', N'Sullivan', N'Ultrices Mauris Corp.', N'0931-45950', N'011-032828', N'+39-327-014194', N'et.commodo.at@sagittis.net', N'XVNCZMJ7072MF985D', N'02348817099')
INSERT [dbo].[Cliente] ([Id], [Nome], [Cognome], [RagioneSociale], [Telefono], [Fax], [Cellulare], [Email], [CodiceFiscale], [PartitaIva]) VALUES (84, N'Cameron', N'Branch', N'Mi Lacinia Mattis Limited', N'011-612868', N'0931-07642', N'+39-320-7646051', N'aliquet.metus@QuisquevariusNam.org', N'WBWIVJK8266VR174W', N'07305638099')
INSERT [dbo].[Cliente] ([Id], [Nome], [Cognome], [RagioneSociale], [Telefono], [Fax], [Cellulare], [Email], [CodiceFiscale], [PartitaIva]) VALUES (85, N'Kamal', N'Sellers', N'Scelerisque Dui Consulting', N'011-946203', N'011-097496', N'+39-320-3256970', N'at.auctor.ullamcorper@adipiscinglobortis.net', N'IFPLBCX7190QU469M', N'68445341399')
INSERT [dbo].[Cliente] ([Id], [Nome], [Cognome], [RagioneSociale], [Telefono], [Fax], [Cellulare], [Email], [CodiceFiscale], [PartitaIva]) VALUES (86, N'Martin', N'Sanders', N'Maecenas Company', N'0931-25316', N'0931-23128', N'+39-320-3338307', N'condimentum@metusVivamus.com', N'FJEROSP6361OH756N', N'91980000999')
INSERT [dbo].[Cliente] ([Id], [Nome], [Cognome], [RagioneSociale], [Telefono], [Fax], [Cellulare], [Email], [CodiceFiscale], [PartitaIva]) VALUES (87, N'George', N'Heath', N'Odio Semper Institute', N'011-662928', N'011-206494', N'+39-327-656603', N'Cras@Morbi.org', N'NNVJNMA5838BW878E', N'73398392799')
INSERT [dbo].[Cliente] ([Id], [Nome], [Cognome], [RagioneSociale], [Telefono], [Fax], [Cellulare], [Email], [CodiceFiscale], [PartitaIva]) VALUES (88, N'Dennis', N'Flores', N'Feugiat Sed Nec Limited', N'0931-92769', N'0931-10288', N'+39-327-991515', N'dui.nec.urna@enim.net', N'EXLVBCB4951MW832G', N'20809654199')
INSERT [dbo].[Cliente] ([Id], [Nome], [Cognome], [RagioneSociale], [Telefono], [Fax], [Cellulare], [Email], [CodiceFiscale], [PartitaIva]) VALUES (89, N'Raja', N'Carver', N'Euismod Foundation', N'011-096674', N'0931-56722', N'+39-320-9560507', N'Nam.ligula@liberomaurisaliquam.com', N'UIUOGZM7021IN258Y', N'38312033199')
INSERT [dbo].[Cliente] ([Id], [Nome], [Cognome], [RagioneSociale], [Telefono], [Fax], [Cellulare], [Email], [CodiceFiscale], [PartitaIva]) VALUES (90, N'Lionel', N'Romero', N'Dapibus PC', N'011-091318', N'0931-90478', N'+39-320-5005437', N'risus.at@SeddictumProin.com', N'YLMINEE3038CD142P', N'42679159299')
INSERT [dbo].[Cliente] ([Id], [Nome], [Cognome], [RagioneSociale], [Telefono], [Fax], [Cellulare], [Email], [CodiceFiscale], [PartitaIva]) VALUES (91, N'Lamar', N'Kirby', N'Amet Ltd', N'011-456352', N'0931-63779', N'+39-327-643117', N'vitae.risus@Nunc.edu', N'WIWPRWD8984GF344W', N'53910261199')
INSERT [dbo].[Cliente] ([Id], [Nome], [Cognome], [RagioneSociale], [Telefono], [Fax], [Cellulare], [Email], [CodiceFiscale], [PartitaIva]) VALUES (92, N'Xenos', N'Mosley', N'Magna Praesent Interdum Consulting', N'011-084832', N'0931-91835', N'+39-320-3871767', N'enim@enimMaurisquis.ca', N'NICBVIO1240PW413G', N'61208597699')
INSERT [dbo].[Cliente] ([Id], [Nome], [Cognome], [RagioneSociale], [Telefono], [Fax], [Cellulare], [Email], [CodiceFiscale], [PartitaIva]) VALUES (93, N'Grant', N'Santos', N'Enim Etiam Gravida Limited', N'0931-27523', N'0931-05346', N'+39-320-7262407', N'Aenean.euismod@semelit.com', N'TQOUZCY5128TQ007L', N'63719088399')
INSERT [dbo].[Cliente] ([Id], [Nome], [Cognome], [RagioneSociale], [Telefono], [Fax], [Cellulare], [Email], [CodiceFiscale], [PartitaIva]) VALUES (94, N'Dennis', N'Bruce', N'Dictum LLC', N'011-706062', N'0931-20399', N'+39-327-372086', N'lobortis@pede.org', N'UTXCTAC0293IK920D', N'96932916499')
INSERT [dbo].[Cliente] ([Id], [Nome], [Cognome], [RagioneSociale], [Telefono], [Fax], [Cellulare], [Email], [CodiceFiscale], [PartitaIva]) VALUES (95, N'Brennan', N'Davenport', N'Id Consulting', N'011-123532', N'0931-92830', N'+39-320-4826879', N'auctor@sodalespurus.ca', N'OUUDIJY8716WK334H', N'50331322999')
INSERT [dbo].[Cliente] ([Id], [Nome], [Cognome], [RagioneSociale], [Telefono], [Fax], [Cellulare], [Email], [CodiceFiscale], [PartitaIva]) VALUES (96, N'Travis', N'Dillon', N'Mauris Erat Corporation', N'011-793119', N'0931-89193', N'+39-320-7732679', N'risus.Donec@velit.ca', N'QAJHHTX0085RF059Y', N'45260212899')
INSERT [dbo].[Cliente] ([Id], [Nome], [Cognome], [RagioneSociale], [Telefono], [Fax], [Cellulare], [Email], [CodiceFiscale], [PartitaIva]) VALUES (97, N'Randall', N'English', N'Quisque Porttitor Eros Corporation', N'0931-79634', N'011-200199', N'+39-327-136166', N'a@Nullaegetmetus.ca', N'XTKOTVS1957XN170U', N'08645604899')
INSERT [dbo].[Cliente] ([Id], [Nome], [Cognome], [RagioneSociale], [Telefono], [Fax], [Cellulare], [Email], [CodiceFiscale], [PartitaIva]) VALUES (98, N'David', N'Boyer', N'Tempor Augue Ac Corporation', N'011-860515', N'0931-36240', N'+39-327-034564', N'ac.ipsum.Phasellus@convallisdolorQuisque.com', N'GYJZEQN9771LQ257J', N'70848121599')
INSERT [dbo].[Cliente] ([Id], [Nome], [Cognome], [RagioneSociale], [Telefono], [Fax], [Cellulare], [Email], [CodiceFiscale], [PartitaIva]) VALUES (99, N'Aidan', N'Wood', N'Vel Foundation', N'0931-99496', N'0931-00470', N'+39-320-9286935', N'felis@nulla.edu', N'ELIANOE7498DG843G', N'10831467599')
GO
INSERT [dbo].[Cliente] ([Id], [Nome], [Cognome], [RagioneSociale], [Telefono], [Fax], [Cellulare], [Email], [CodiceFiscale], [PartitaIva]) VALUES (100, N'Uriel', N'Mcclain', N'Mauris Ipsum Consulting', N'0931-39119', N'011-039316', N'+39-320-1852223', N'ut@lectusquis.net', N'OVLKAYN4790GW415S', N'88309640899')
INSERT [dbo].[Cliente] ([Id], [Nome], [Cognome], [RagioneSociale], [Telefono], [Fax], [Cellulare], [Email], [CodiceFiscale], [PartitaIva]) VALUES (101, N'Rafael', N'Dotson', N'Penatibus Ltd', N'0931-92524', N'011-032582', N'+39-320-9430833', N'eget.tincidunt.dui@utnisi.co.uk', N'YOHMXFH5509QI887X', N'14807815899')
INSERT [dbo].[Cliente] ([Id], [Nome], [Cognome], [RagioneSociale], [Telefono], [Fax], [Cellulare], [Email], [CodiceFiscale], [PartitaIva]) VALUES (102, N'Nissim', N'Griffith', N'Feugiat Sed Nec Corp.', N'0931-27279', N'011-828503', N'+39-327-421607', N'aliquet@massaSuspendisse.co.uk', N'ASPCGMB4347IH204F', N'90680357599')
SET IDENTITY_INSERT [dbo].[Cliente] OFF
INSERT [dbo].[DettaglioOrdine] ([IdProdotto], [IdOrdine], [Quantita]) VALUES (1, 1, 483)
INSERT [dbo].[DettaglioOrdine] ([IdProdotto], [IdOrdine], [Quantita]) VALUES (2, 2, 342)
INSERT [dbo].[DettaglioOrdine] ([IdProdotto], [IdOrdine], [Quantita]) VALUES (3, 3, 13)
INSERT [dbo].[DettaglioOrdine] ([IdProdotto], [IdOrdine], [Quantita]) VALUES (4, 4, 268)
INSERT [dbo].[DettaglioOrdine] ([IdProdotto], [IdOrdine], [Quantita]) VALUES (5, 5, 411)
INSERT [dbo].[DettaglioOrdine] ([IdProdotto], [IdOrdine], [Quantita]) VALUES (6, 6, 30)
INSERT [dbo].[DettaglioOrdine] ([IdProdotto], [IdOrdine], [Quantita]) VALUES (7, 7, 437)
INSERT [dbo].[DettaglioOrdine] ([IdProdotto], [IdOrdine], [Quantita]) VALUES (8, 8, 208)
INSERT [dbo].[DettaglioOrdine] ([IdProdotto], [IdOrdine], [Quantita]) VALUES (9, 9, 80)
INSERT [dbo].[DettaglioOrdine] ([IdProdotto], [IdOrdine], [Quantita]) VALUES (10, 10, 178)
INSERT [dbo].[DettaglioOrdine] ([IdProdotto], [IdOrdine], [Quantita]) VALUES (11, 11, 38)
INSERT [dbo].[DettaglioOrdine] ([IdProdotto], [IdOrdine], [Quantita]) VALUES (12, 12, 215)
INSERT [dbo].[DettaglioOrdine] ([IdProdotto], [IdOrdine], [Quantita]) VALUES (13, 13, 227)
INSERT [dbo].[DettaglioOrdine] ([IdProdotto], [IdOrdine], [Quantita]) VALUES (14, 14, 161)
INSERT [dbo].[DettaglioOrdine] ([IdProdotto], [IdOrdine], [Quantita]) VALUES (15, 15, 387)
INSERT [dbo].[DettaglioOrdine] ([IdProdotto], [IdOrdine], [Quantita]) VALUES (16, 16, 177)
INSERT [dbo].[DettaglioOrdine] ([IdProdotto], [IdOrdine], [Quantita]) VALUES (17, 17, 241)
INSERT [dbo].[DettaglioOrdine] ([IdProdotto], [IdOrdine], [Quantita]) VALUES (18, 18, 223)
INSERT [dbo].[DettaglioOrdine] ([IdProdotto], [IdOrdine], [Quantita]) VALUES (19, 19, 240)
INSERT [dbo].[DettaglioOrdine] ([IdProdotto], [IdOrdine], [Quantita]) VALUES (20, 20, 476)
INSERT [dbo].[DettaglioOrdine] ([IdProdotto], [IdOrdine], [Quantita]) VALUES (21, 21, 366)
INSERT [dbo].[DettaglioOrdine] ([IdProdotto], [IdOrdine], [Quantita]) VALUES (22, 22, 336)
INSERT [dbo].[DettaglioOrdine] ([IdProdotto], [IdOrdine], [Quantita]) VALUES (23, 23, 347)
INSERT [dbo].[DettaglioOrdine] ([IdProdotto], [IdOrdine], [Quantita]) VALUES (24, 24, 21)
INSERT [dbo].[DettaglioOrdine] ([IdProdotto], [IdOrdine], [Quantita]) VALUES (25, 25, 410)
INSERT [dbo].[DettaglioOrdine] ([IdProdotto], [IdOrdine], [Quantita]) VALUES (26, 26, 135)
INSERT [dbo].[DettaglioOrdine] ([IdProdotto], [IdOrdine], [Quantita]) VALUES (27, 27, 382)
INSERT [dbo].[DettaglioOrdine] ([IdProdotto], [IdOrdine], [Quantita]) VALUES (28, 28, 303)
INSERT [dbo].[DettaglioOrdine] ([IdProdotto], [IdOrdine], [Quantita]) VALUES (29, 29, 274)
INSERT [dbo].[DettaglioOrdine] ([IdProdotto], [IdOrdine], [Quantita]) VALUES (30, 30, 436)
INSERT [dbo].[DettaglioOrdine] ([IdProdotto], [IdOrdine], [Quantita]) VALUES (31, 31, 425)
INSERT [dbo].[DettaglioOrdine] ([IdProdotto], [IdOrdine], [Quantita]) VALUES (32, 32, 385)
INSERT [dbo].[DettaglioOrdine] ([IdProdotto], [IdOrdine], [Quantita]) VALUES (33, 33, 331)
INSERT [dbo].[DettaglioOrdine] ([IdProdotto], [IdOrdine], [Quantita]) VALUES (34, 34, 242)
INSERT [dbo].[DettaglioOrdine] ([IdProdotto], [IdOrdine], [Quantita]) VALUES (35, 35, 336)
INSERT [dbo].[DettaglioOrdine] ([IdProdotto], [IdOrdine], [Quantita]) VALUES (36, 36, 205)
INSERT [dbo].[DettaglioOrdine] ([IdProdotto], [IdOrdine], [Quantita]) VALUES (37, 37, 17)
INSERT [dbo].[DettaglioOrdine] ([IdProdotto], [IdOrdine], [Quantita]) VALUES (38, 38, 129)
INSERT [dbo].[DettaglioOrdine] ([IdProdotto], [IdOrdine], [Quantita]) VALUES (39, 39, 100)
INSERT [dbo].[DettaglioOrdine] ([IdProdotto], [IdOrdine], [Quantita]) VALUES (40, 40, 65)
INSERT [dbo].[DettaglioOrdine] ([IdProdotto], [IdOrdine], [Quantita]) VALUES (41, 41, 302)
INSERT [dbo].[DettaglioOrdine] ([IdProdotto], [IdOrdine], [Quantita]) VALUES (42, 42, 346)
INSERT [dbo].[DettaglioOrdine] ([IdProdotto], [IdOrdine], [Quantita]) VALUES (43, 43, 302)
INSERT [dbo].[DettaglioOrdine] ([IdProdotto], [IdOrdine], [Quantita]) VALUES (44, 44, 276)
INSERT [dbo].[DettaglioOrdine] ([IdProdotto], [IdOrdine], [Quantita]) VALUES (45, 45, 180)
INSERT [dbo].[DettaglioOrdine] ([IdProdotto], [IdOrdine], [Quantita]) VALUES (46, 46, 37)
INSERT [dbo].[DettaglioOrdine] ([IdProdotto], [IdOrdine], [Quantita]) VALUES (47, 47, 392)
INSERT [dbo].[DettaglioOrdine] ([IdProdotto], [IdOrdine], [Quantita]) VALUES (48, 48, 468)
INSERT [dbo].[DettaglioOrdine] ([IdProdotto], [IdOrdine], [Quantita]) VALUES (49, 49, 1)
INSERT [dbo].[DettaglioOrdine] ([IdProdotto], [IdOrdine], [Quantita]) VALUES (50, 50, 26)
INSERT [dbo].[DettaglioOrdine] ([IdProdotto], [IdOrdine], [Quantita]) VALUES (51, 51, 54)
INSERT [dbo].[DettaglioOrdine] ([IdProdotto], [IdOrdine], [Quantita]) VALUES (52, 52, 102)
INSERT [dbo].[DettaglioOrdine] ([IdProdotto], [IdOrdine], [Quantita]) VALUES (53, 53, 459)
INSERT [dbo].[DettaglioOrdine] ([IdProdotto], [IdOrdine], [Quantita]) VALUES (54, 54, 243)
INSERT [dbo].[DettaglioOrdine] ([IdProdotto], [IdOrdine], [Quantita]) VALUES (55, 55, 165)
INSERT [dbo].[DettaglioOrdine] ([IdProdotto], [IdOrdine], [Quantita]) VALUES (56, 56, 490)
INSERT [dbo].[DettaglioOrdine] ([IdProdotto], [IdOrdine], [Quantita]) VALUES (57, 57, 353)
INSERT [dbo].[DettaglioOrdine] ([IdProdotto], [IdOrdine], [Quantita]) VALUES (58, 58, 479)
INSERT [dbo].[DettaglioOrdine] ([IdProdotto], [IdOrdine], [Quantita]) VALUES (59, 59, 440)
INSERT [dbo].[DettaglioOrdine] ([IdProdotto], [IdOrdine], [Quantita]) VALUES (60, 60, 469)
INSERT [dbo].[DettaglioOrdine] ([IdProdotto], [IdOrdine], [Quantita]) VALUES (61, 61, 391)
INSERT [dbo].[DettaglioOrdine] ([IdProdotto], [IdOrdine], [Quantita]) VALUES (62, 62, 334)
INSERT [dbo].[DettaglioOrdine] ([IdProdotto], [IdOrdine], [Quantita]) VALUES (63, 63, 426)
INSERT [dbo].[DettaglioOrdine] ([IdProdotto], [IdOrdine], [Quantita]) VALUES (64, 64, 177)
INSERT [dbo].[DettaglioOrdine] ([IdProdotto], [IdOrdine], [Quantita]) VALUES (65, 65, 310)
INSERT [dbo].[DettaglioOrdine] ([IdProdotto], [IdOrdine], [Quantita]) VALUES (66, 66, 90)
INSERT [dbo].[DettaglioOrdine] ([IdProdotto], [IdOrdine], [Quantita]) VALUES (67, 67, 461)
INSERT [dbo].[DettaglioOrdine] ([IdProdotto], [IdOrdine], [Quantita]) VALUES (68, 68, 218)
INSERT [dbo].[DettaglioOrdine] ([IdProdotto], [IdOrdine], [Quantita]) VALUES (69, 69, 418)
INSERT [dbo].[DettaglioOrdine] ([IdProdotto], [IdOrdine], [Quantita]) VALUES (70, 70, 274)
INSERT [dbo].[DettaglioOrdine] ([IdProdotto], [IdOrdine], [Quantita]) VALUES (71, 71, 406)
INSERT [dbo].[DettaglioOrdine] ([IdProdotto], [IdOrdine], [Quantita]) VALUES (72, 72, 64)
INSERT [dbo].[DettaglioOrdine] ([IdProdotto], [IdOrdine], [Quantita]) VALUES (73, 73, 15)
INSERT [dbo].[DettaglioOrdine] ([IdProdotto], [IdOrdine], [Quantita]) VALUES (74, 74, 186)
INSERT [dbo].[DettaglioOrdine] ([IdProdotto], [IdOrdine], [Quantita]) VALUES (75, 75, 188)
INSERT [dbo].[DettaglioOrdine] ([IdProdotto], [IdOrdine], [Quantita]) VALUES (76, 76, 436)
INSERT [dbo].[DettaglioOrdine] ([IdProdotto], [IdOrdine], [Quantita]) VALUES (77, 77, 235)
INSERT [dbo].[DettaglioOrdine] ([IdProdotto], [IdOrdine], [Quantita]) VALUES (78, 78, 106)
INSERT [dbo].[DettaglioOrdine] ([IdProdotto], [IdOrdine], [Quantita]) VALUES (79, 79, 305)
INSERT [dbo].[DettaglioOrdine] ([IdProdotto], [IdOrdine], [Quantita]) VALUES (80, 80, 475)
INSERT [dbo].[DettaglioOrdine] ([IdProdotto], [IdOrdine], [Quantita]) VALUES (81, 81, 142)
INSERT [dbo].[DettaglioOrdine] ([IdProdotto], [IdOrdine], [Quantita]) VALUES (82, 82, 365)
INSERT [dbo].[DettaglioOrdine] ([IdProdotto], [IdOrdine], [Quantita]) VALUES (83, 83, 81)
INSERT [dbo].[DettaglioOrdine] ([IdProdotto], [IdOrdine], [Quantita]) VALUES (84, 84, 138)
INSERT [dbo].[DettaglioOrdine] ([IdProdotto], [IdOrdine], [Quantita]) VALUES (85, 85, 494)
INSERT [dbo].[DettaglioOrdine] ([IdProdotto], [IdOrdine], [Quantita]) VALUES (86, 86, 203)
INSERT [dbo].[DettaglioOrdine] ([IdProdotto], [IdOrdine], [Quantita]) VALUES (87, 87, 145)
INSERT [dbo].[DettaglioOrdine] ([IdProdotto], [IdOrdine], [Quantita]) VALUES (88, 88, 282)
INSERT [dbo].[DettaglioOrdine] ([IdProdotto], [IdOrdine], [Quantita]) VALUES (89, 89, 159)
INSERT [dbo].[DettaglioOrdine] ([IdProdotto], [IdOrdine], [Quantita]) VALUES (90, 90, 336)
INSERT [dbo].[DettaglioOrdine] ([IdProdotto], [IdOrdine], [Quantita]) VALUES (91, 91, 237)
INSERT [dbo].[DettaglioOrdine] ([IdProdotto], [IdOrdine], [Quantita]) VALUES (92, 92, 205)
INSERT [dbo].[DettaglioOrdine] ([IdProdotto], [IdOrdine], [Quantita]) VALUES (93, 93, 96)
INSERT [dbo].[DettaglioOrdine] ([IdProdotto], [IdOrdine], [Quantita]) VALUES (94, 94, 460)
INSERT [dbo].[DettaglioOrdine] ([IdProdotto], [IdOrdine], [Quantita]) VALUES (95, 95, 328)
INSERT [dbo].[DettaglioOrdine] ([IdProdotto], [IdOrdine], [Quantita]) VALUES (96, 96, 152)
INSERT [dbo].[DettaglioOrdine] ([IdProdotto], [IdOrdine], [Quantita]) VALUES (97, 97, 494)
INSERT [dbo].[DettaglioOrdine] ([IdProdotto], [IdOrdine], [Quantita]) VALUES (98, 98, 87)
INSERT [dbo].[DettaglioOrdine] ([IdProdotto], [IdOrdine], [Quantita]) VALUES (99, 99, 341)
INSERT [dbo].[DettaglioOrdine] ([IdProdotto], [IdOrdine], [Quantita]) VALUES (100, 100, 177)
GO
SET IDENTITY_INSERT [dbo].[Gallery] ON 

INSERT [dbo].[Gallery] ([Id], [IdProdotto], [Immagine], [Didascalia]) VALUES (1, 99, N'sem. Nulla interdum. Curabitur dictum.', N'ipsum porta elit, a feugiat tellus lorem eu metus. In lorem. Donec elementum, lorem ut')
INSERT [dbo].[Gallery] ([Id], [IdProdotto], [Immagine], [Didascalia]) VALUES (2, 14, N'et, magna. Praesent interdum ligula', N'tincidunt adipiscing. Mauris molestie pharetra nibh. Aliquam ornare, libero at auctor ullamcorper, nisl arcu iaculis')
INSERT [dbo].[Gallery] ([Id], [IdProdotto], [Immagine], [Didascalia]) VALUES (3, 96, N'facilisis vitae, orci. Phasellus dapibus', N'lectus. Nullam suscipit, est ac facilisis facilisis, magna tellus faucibus leo, in lobortis tellus justo')
INSERT [dbo].[Gallery] ([Id], [IdProdotto], [Immagine], [Didascalia]) VALUES (4, 46, N'bibendum fermentum metus. Aenean sed', N'imperdiet non, vestibulum nec, euismod in, dolor. Fusce feugiat. Lorem ipsum dolor sit amet, consectetuer')
INSERT [dbo].[Gallery] ([Id], [IdProdotto], [Immagine], [Didascalia]) VALUES (5, 80, N'In faucibus. Morbi vehicula. Pellentesque', N'lorem ipsum sodales purus, in molestie tortor nibh sit amet orci. Ut sagittis lobortis mauris.')
INSERT [dbo].[Gallery] ([Id], [IdProdotto], [Immagine], [Didascalia]) VALUES (6, 18, N'ultricies ornare, elit elit fermentum', N'turpis nec mauris blandit mattis. Cras eget nisi dictum augue malesuada malesuada. Integer id magna')
INSERT [dbo].[Gallery] ([Id], [IdProdotto], [Immagine], [Didascalia]) VALUES (7, 25, N'sed orci lobortis augue scelerisque', N'malesuada augue ut lacus. Nulla tincidunt, neque vitae semper egestas, urna justo faucibus lectus, a')
INSERT [dbo].[Gallery] ([Id], [IdProdotto], [Immagine], [Didascalia]) VALUES (8, 27, N'nec metus facilisis lorem tristique', N'gravida sagittis. Duis gravida. Praesent eu nulla at sem molestie sodales. Mauris blandit enim consequat')
INSERT [dbo].[Gallery] ([Id], [IdProdotto], [Immagine], [Didascalia]) VALUES (9, 29, N'Maecenas iaculis aliquet diam. Sed', N'orci, in consequat enim diam vel arcu. Curabitur ut odio vel est tempor bibendum. Donec')
INSERT [dbo].[Gallery] ([Id], [IdProdotto], [Immagine], [Didascalia]) VALUES (10, 85, N'amet luctus vulputate, nisi sem', N'elementum at, egestas a, scelerisque sed, sapien. Nunc pulvinar arcu et pede. Nunc sed orci')
INSERT [dbo].[Gallery] ([Id], [IdProdotto], [Immagine], [Didascalia]) VALUES (11, 73, N'sed, sapien. Nunc pulvinar arcu', N'Donec luctus aliquet odio. Etiam ligula tortor, dictum eu, placerat eget, venenatis a, magna. Lorem')
INSERT [dbo].[Gallery] ([Id], [IdProdotto], [Immagine], [Didascalia]) VALUES (12, 69, N'malesuada fringilla est. Mauris eu', N'ac turpis egestas. Aliquam fringilla cursus purus. Nullam scelerisque neque sed sem egestas blandit. Nam')
INSERT [dbo].[Gallery] ([Id], [IdProdotto], [Immagine], [Didascalia]) VALUES (13, 91, N'Praesent eu dui. Cum sociis', N'vulputate mauris sagittis placerat. Cras dictum ultricies ligula. Nullam enim. Sed nulla ante, iaculis nec,')
INSERT [dbo].[Gallery] ([Id], [IdProdotto], [Immagine], [Didascalia]) VALUES (14, 1, N'mus. Proin vel arcu eu', N'elit, pellentesque a, facilisis non, bibendum sed, est. Nunc laoreet lectus quis massa. Mauris vestibulum,')
INSERT [dbo].[Gallery] ([Id], [IdProdotto], [Immagine], [Didascalia]) VALUES (15, 72, N'eu nulla at sem molestie', N'lacus pede sagittis augue, eu tempor erat neque non quam. Pellentesque habitant morbi tristique senectus')
INSERT [dbo].[Gallery] ([Id], [IdProdotto], [Immagine], [Didascalia]) VALUES (16, 37, N'et netus et malesuada fames', N'tempor, est ac mattis semper, dui lectus rutrum urna, nec luctus felis purus ac tellus.')
INSERT [dbo].[Gallery] ([Id], [IdProdotto], [Immagine], [Didascalia]) VALUES (17, 49, N'aliquet molestie tellus. Aenean egestas', N'neque. Nullam nisl. Maecenas malesuada fringilla est. Mauris eu turpis. Nulla aliquet. Proin velit. Sed')
INSERT [dbo].[Gallery] ([Id], [IdProdotto], [Immagine], [Didascalia]) VALUES (18, 73, N'nec luctus felis purus ac', N'ut aliquam iaculis, lacus pede sagittis augue, eu tempor erat neque non quam. Pellentesque habitant')
INSERT [dbo].[Gallery] ([Id], [IdProdotto], [Immagine], [Didascalia]) VALUES (19, 42, N'fringilla est. Mauris eu turpis.', N'fringilla est. Mauris eu turpis. Nulla aliquet. Proin velit. Sed malesuada augue ut lacus. Nulla')
INSERT [dbo].[Gallery] ([Id], [IdProdotto], [Immagine], [Didascalia]) VALUES (20, 19, N'semper egestas, urna justo faucibus', N'bibendum. Donec felis orci, adipiscing non, luctus sit amet, faucibus ut, nulla. Cras eu tellus')
INSERT [dbo].[Gallery] ([Id], [IdProdotto], [Immagine], [Didascalia]) VALUES (21, 51, N'dolor sit amet, consectetuer adipiscing', N'risus. Quisque libero lacus, varius et, euismod et, commodo at, libero. Morbi accumsan laoreet ipsum.')
INSERT [dbo].[Gallery] ([Id], [IdProdotto], [Immagine], [Didascalia]) VALUES (22, 70, N'ligula. Nullam feugiat placerat velit.', N'nulla. Integer vulputate, risus a ultricies adipiscing, enim mi tempor lorem, eget mollis lectus pede')
INSERT [dbo].[Gallery] ([Id], [IdProdotto], [Immagine], [Didascalia]) VALUES (23, 60, N'nec tempus scelerisque, lorem ipsum', N'diam dictum sapien. Aenean massa. Integer vitae nibh. Donec est mauris, rhoncus id, mollis nec,')
INSERT [dbo].[Gallery] ([Id], [IdProdotto], [Immagine], [Didascalia]) VALUES (24, 26, N'a odio semper cursus. Integer', N'augue scelerisque mollis. Phasellus libero mauris, aliquam eu, accumsan sed, facilisis vitae, orci. Phasellus dapibus')
INSERT [dbo].[Gallery] ([Id], [IdProdotto], [Immagine], [Didascalia]) VALUES (25, 72, N'lacus. Quisque imperdiet, erat nonummy', N'placerat velit. Quisque varius. Nam porttitor scelerisque neque. Nullam nisl. Maecenas malesuada fringilla est. Mauris')
INSERT [dbo].[Gallery] ([Id], [IdProdotto], [Immagine], [Didascalia]) VALUES (26, 35, N'Nullam lobortis quam a felis', N'ipsum. Suspendisse non leo. Vivamus nibh dolor, nonummy ac, feugiat non, lobortis quis, pede. Suspendisse')
INSERT [dbo].[Gallery] ([Id], [IdProdotto], [Immagine], [Didascalia]) VALUES (27, 100, N'laoreet posuere, enim nisl elementum', N'eget tincidunt dui augue eu tellus. Phasellus elit pede, malesuada vel, venenatis vel, faucibus id,')
INSERT [dbo].[Gallery] ([Id], [IdProdotto], [Immagine], [Didascalia]) VALUES (28, 4, N'sagittis lobortis mauris. Suspendisse aliquet', N'Aliquam tincidunt, nunc ac mattis ornare, lectus ante dictum mi, ac mattis velit justo nec')
INSERT [dbo].[Gallery] ([Id], [IdProdotto], [Immagine], [Didascalia]) VALUES (29, 13, N'consequat dolor vitae dolor. Donec', N'faucibus leo, in lobortis tellus justo sit amet nulla. Donec non justo. Proin non massa')
INSERT [dbo].[Gallery] ([Id], [IdProdotto], [Immagine], [Didascalia]) VALUES (30, 2, N'ut, pharetra sed, hendrerit a,', N'Integer in magna. Phasellus dolor elit, pellentesque a, facilisis non, bibendum sed, est. Nunc laoreet')
INSERT [dbo].[Gallery] ([Id], [IdProdotto], [Immagine], [Didascalia]) VALUES (31, 77, N'massa lobortis ultrices. Vivamus rhoncus.', N'amet, risus. Donec nibh enim, gravida sit amet, dapibus id, blandit at, nisi. Cum sociis')
INSERT [dbo].[Gallery] ([Id], [IdProdotto], [Immagine], [Didascalia]) VALUES (32, 97, N'Maecenas mi felis, adipiscing fringilla,', N'Phasellus elit pede, malesuada vel, venenatis vel, faucibus id, libero. Donec consectetuer mauris id sapien.')
INSERT [dbo].[Gallery] ([Id], [IdProdotto], [Immagine], [Didascalia]) VALUES (33, 38, N'amet luctus vulputate, nisi sem', N'risus. Donec nibh enim, gravida sit amet, dapibus id, blandit at, nisi. Cum sociis natoque')
INSERT [dbo].[Gallery] ([Id], [IdProdotto], [Immagine], [Didascalia]) VALUES (34, 49, N'arcu. Vestibulum ut eros non', N'Aenean eget metus. In nec orci. Donec nibh. Quisque nonummy ipsum non arcu. Vivamus sit')
INSERT [dbo].[Gallery] ([Id], [IdProdotto], [Immagine], [Didascalia]) VALUES (35, 79, N'ac orci. Ut semper pretium', N'pede sagittis augue, eu tempor erat neque non quam. Pellentesque habitant morbi tristique senectus et')
INSERT [dbo].[Gallery] ([Id], [IdProdotto], [Immagine], [Didascalia]) VALUES (36, 23, N'massa. Integer vitae nibh. Donec', N'pede et risus. Quisque libero lacus, varius et, euismod et, commodo at, libero. Morbi accumsan')
INSERT [dbo].[Gallery] ([Id], [IdProdotto], [Immagine], [Didascalia]) VALUES (37, 81, N'felis orci, adipiscing non, luctus', N'Vestibulum ut eros non enim commodo hendrerit. Donec porttitor tellus non magna. Nam ligula elit,')
INSERT [dbo].[Gallery] ([Id], [IdProdotto], [Immagine], [Didascalia]) VALUES (38, 19, N'porttitor scelerisque neque. Nullam nisl.', N'tortor, dictum eu, placerat eget, venenatis a, magna. Lorem ipsum dolor sit amet, consectetuer adipiscing')
INSERT [dbo].[Gallery] ([Id], [IdProdotto], [Immagine], [Didascalia]) VALUES (39, 65, N'Proin nisl sem, consequat nec,', N'Proin mi. Aliquam gravida mauris ut mi. Duis risus odio, auctor vitae, aliquet nec, imperdiet')
INSERT [dbo].[Gallery] ([Id], [IdProdotto], [Immagine], [Didascalia]) VALUES (40, 41, N'ligula. Donec luctus aliquet odio.', N'dictum mi, ac mattis velit justo nec ante. Maecenas mi felis, adipiscing fringilla, porttitor vulputate,')
INSERT [dbo].[Gallery] ([Id], [IdProdotto], [Immagine], [Didascalia]) VALUES (41, 53, N'scelerisque scelerisque dui. Suspendisse ac', N'varius. Nam porttitor scelerisque neque. Nullam nisl. Maecenas malesuada fringilla est. Mauris eu turpis. Nulla')
INSERT [dbo].[Gallery] ([Id], [IdProdotto], [Immagine], [Didascalia]) VALUES (42, 7, N'auctor vitae, aliquet nec, imperdiet', N'sem, consequat nec, mollis vitae, posuere at, velit. Cras lorem lorem, luctus ut, pellentesque eget,')
INSERT [dbo].[Gallery] ([Id], [IdProdotto], [Immagine], [Didascalia]) VALUES (43, 52, N'sit amet ornare lectus justo', N'natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin vel arcu eu odio')
INSERT [dbo].[Gallery] ([Id], [IdProdotto], [Immagine], [Didascalia]) VALUES (44, 53, N'aliquam, enim nec tempus scelerisque,', N'congue. In scelerisque scelerisque dui. Suspendisse ac metus vitae velit egestas lacinia. Sed congue, elit')
INSERT [dbo].[Gallery] ([Id], [IdProdotto], [Immagine], [Didascalia]) VALUES (45, 51, N'imperdiet ornare. In faucibus. Morbi', N'dictum magna. Ut tincidunt orci quis lectus. Nullam suscipit, est ac facilisis facilisis, magna tellus')
INSERT [dbo].[Gallery] ([Id], [IdProdotto], [Immagine], [Didascalia]) VALUES (46, 91, N'turpis vitae purus gravida sagittis.', N'dui. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean eget')
INSERT [dbo].[Gallery] ([Id], [IdProdotto], [Immagine], [Didascalia]) VALUES (47, 48, N'diam eu dolor egestas rhoncus.', N'magna. Sed eu eros. Nam consequat dolor vitae dolor. Donec fringilla. Donec feugiat metus sit')
INSERT [dbo].[Gallery] ([Id], [IdProdotto], [Immagine], [Didascalia]) VALUES (48, 56, N'rutrum, justo. Praesent luctus. Curabitur', N'magna. Phasellus dolor elit, pellentesque a, facilisis non, bibendum sed, est. Nunc laoreet lectus quis')
INSERT [dbo].[Gallery] ([Id], [IdProdotto], [Immagine], [Didascalia]) VALUES (49, 69, N'interdum. Nunc sollicitudin commodo ipsum.', N'enim, condimentum eget, volutpat ornare, facilisis eget, ipsum. Donec sollicitudin adipiscing ligula. Aenean gravida nunc')
INSERT [dbo].[Gallery] ([Id], [IdProdotto], [Immagine], [Didascalia]) VALUES (50, 74, N'sagittis lobortis mauris. Suspendisse aliquet', N'nulla. Cras eu tellus eu augue porttitor interdum. Sed auctor odio a purus. Duis elementum,')
INSERT [dbo].[Gallery] ([Id], [IdProdotto], [Immagine], [Didascalia]) VALUES (51, 51, N'Morbi non sapien molestie orci', N'dui, in sodales elit erat vitae risus. Duis a mi fringilla mi lacinia mattis. Integer')
INSERT [dbo].[Gallery] ([Id], [IdProdotto], [Immagine], [Didascalia]) VALUES (52, 45, N'Pellentesque habitant morbi tristique senectus', N'ac mattis ornare, lectus ante dictum mi, ac mattis velit justo nec ante. Maecenas mi')
INSERT [dbo].[Gallery] ([Id], [IdProdotto], [Immagine], [Didascalia]) VALUES (53, 40, N'ligula. Donec luctus aliquet odio.', N'urna. Nullam lobortis quam a felis ullamcorper viverra. Maecenas iaculis aliquet diam. Sed diam lorem,')
INSERT [dbo].[Gallery] ([Id], [IdProdotto], [Immagine], [Didascalia]) VALUES (54, 28, N'consequat dolor vitae dolor. Donec', N'pellentesque eget, dictum placerat, augue. Sed molestie. Sed id risus quis diam luctus lobortis. Class')
INSERT [dbo].[Gallery] ([Id], [IdProdotto], [Immagine], [Didascalia]) VALUES (55, 88, N'a, auctor non, feugiat nec,', N'ipsum. Phasellus vitae mauris sit amet lorem semper auctor. Mauris vel turpis. Aliquam adipiscing lobortis')
INSERT [dbo].[Gallery] ([Id], [IdProdotto], [Immagine], [Didascalia]) VALUES (56, 2, N'et malesuada fames ac turpis', N'pede et risus. Quisque libero lacus, varius et, euismod et, commodo at, libero. Morbi accumsan')
INSERT [dbo].[Gallery] ([Id], [IdProdotto], [Immagine], [Didascalia]) VALUES (57, 25, N'vitae odio sagittis semper. Nam', N'nulla. Donec non justo. Proin non massa non ante bibendum ullamcorper. Duis cursus, diam at')
INSERT [dbo].[Gallery] ([Id], [IdProdotto], [Immagine], [Didascalia]) VALUES (58, 2, N'porttitor interdum. Sed auctor odio', N'ut, pellentesque eget, dictum placerat, augue. Sed molestie. Sed id risus quis diam luctus lobortis.')
INSERT [dbo].[Gallery] ([Id], [IdProdotto], [Immagine], [Didascalia]) VALUES (59, 71, N'ullamcorper. Duis at lacus. Quisque', N'purus, in molestie tortor nibh sit amet orci. Ut sagittis lobortis mauris. Suspendisse aliquet molestie')
INSERT [dbo].[Gallery] ([Id], [IdProdotto], [Immagine], [Didascalia]) VALUES (60, 68, N'elit. Curabitur sed tortor. Integer', N'vel, convallis in, cursus et, eros. Proin ultrices. Duis volutpat nunc sit amet metus. Aliquam')
INSERT [dbo].[Gallery] ([Id], [IdProdotto], [Immagine], [Didascalia]) VALUES (61, 34, N'sollicitudin orci sem eget massa.', N'odio sagittis semper. Nam tempor diam dictum sapien. Aenean massa. Integer vitae nibh. Donec est')
INSERT [dbo].[Gallery] ([Id], [IdProdotto], [Immagine], [Didascalia]) VALUES (62, 21, N'Integer vitae nibh. Donec est', N'mattis. Integer eu lacus. Quisque imperdiet, erat nonummy ultricies ornare, elit elit fermentum risus, at')
INSERT [dbo].[Gallery] ([Id], [IdProdotto], [Immagine], [Didascalia]) VALUES (63, 38, N'Duis mi enim, condimentum eget,', N'ultricies ligula. Nullam enim. Sed nulla ante, iaculis nec, eleifend non, dapibus rutrum, justo. Praesent')
INSERT [dbo].[Gallery] ([Id], [IdProdotto], [Immagine], [Didascalia]) VALUES (64, 33, N'ac urna. Ut tincidunt vehicula', N'egestas a, scelerisque sed, sapien. Nunc pulvinar arcu et pede. Nunc sed orci lobortis augue')
INSERT [dbo].[Gallery] ([Id], [IdProdotto], [Immagine], [Didascalia]) VALUES (65, 34, N'nunc id enim. Curabitur massa.', N'eu neque pellentesque massa lobortis ultrices. Vivamus rhoncus. Donec est. Nunc ullamcorper, velit in aliquet')
INSERT [dbo].[Gallery] ([Id], [IdProdotto], [Immagine], [Didascalia]) VALUES (66, 44, N'non, cursus non, egestas a,', N'cubilia Curae; Donec tincidunt. Donec vitae erat vel pede blandit congue. In scelerisque scelerisque dui.')
INSERT [dbo].[Gallery] ([Id], [IdProdotto], [Immagine], [Didascalia]) VALUES (67, 33, N'dui. Fusce aliquam, enim nec', N'suscipit, est ac facilisis facilisis, magna tellus faucibus leo, in lobortis tellus justo sit amet')
INSERT [dbo].[Gallery] ([Id], [IdProdotto], [Immagine], [Didascalia]) VALUES (68, 69, N'Sed pharetra, felis eget varius', N'parturient montes, nascetur ridiculus mus. Aenean eget magna. Suspendisse tristique neque venenatis lacus. Etiam bibendum')
INSERT [dbo].[Gallery] ([Id], [IdProdotto], [Immagine], [Didascalia]) VALUES (69, 14, N'eu augue porttitor interdum. Sed', N'odio a purus. Duis elementum, dui quis accumsan convallis, ante lectus convallis est, vitae sodales')
INSERT [dbo].[Gallery] ([Id], [IdProdotto], [Immagine], [Didascalia]) VALUES (70, 68, N'egestas a, scelerisque sed, sapien.', N'Proin vel arcu eu odio tristique pharetra. Quisque ac libero nec ligula consectetuer rhoncus. Nullam')
INSERT [dbo].[Gallery] ([Id], [IdProdotto], [Immagine], [Didascalia]) VALUES (71, 89, N'augue ac ipsum. Phasellus vitae', N'Integer vitae nibh. Donec est mauris, rhoncus id, mollis nec, cursus a, enim. Suspendisse aliquet,')
INSERT [dbo].[Gallery] ([Id], [IdProdotto], [Immagine], [Didascalia]) VALUES (72, 54, N'quam. Pellentesque habitant morbi tristique', N'neque. Nullam ut nisi a odio semper cursus. Integer mollis. Integer tincidunt aliquam arcu. Aliquam')
INSERT [dbo].[Gallery] ([Id], [IdProdotto], [Immagine], [Didascalia]) VALUES (73, 95, N'dapibus quam quis diam. Pellentesque', N'Sed nunc est, mollis non, cursus non, egestas a, dui. Cras pellentesque. Sed dictum. Proin')
INSERT [dbo].[Gallery] ([Id], [IdProdotto], [Immagine], [Didascalia]) VALUES (74, 86, N'Ut tincidunt vehicula risus. Nulla', N'arcu. Vestibulum ut eros non enim commodo hendrerit. Donec porttitor tellus non magna. Nam ligula')
INSERT [dbo].[Gallery] ([Id], [IdProdotto], [Immagine], [Didascalia]) VALUES (75, 32, N'Maecenas ornare egestas ligula. Nullam', N'ultricies dignissim lacus. Aliquam rutrum lorem ac risus. Morbi metus. Vivamus euismod urna. Nullam lobortis')
INSERT [dbo].[Gallery] ([Id], [IdProdotto], [Immagine], [Didascalia]) VALUES (76, 82, N'Curabitur massa. Vestibulum accumsan neque', N'sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean eget magna. Suspendisse')
INSERT [dbo].[Gallery] ([Id], [IdProdotto], [Immagine], [Didascalia]) VALUES (77, 100, N'sed turpis nec mauris blandit', N'at, velit. Cras lorem lorem, luctus ut, pellentesque eget, dictum placerat, augue. Sed molestie. Sed')
INSERT [dbo].[Gallery] ([Id], [IdProdotto], [Immagine], [Didascalia]) VALUES (78, 7, N'ornare, facilisis eget, ipsum. Donec', N'Aliquam rutrum lorem ac risus. Morbi metus. Vivamus euismod urna. Nullam lobortis quam a felis')
INSERT [dbo].[Gallery] ([Id], [IdProdotto], [Immagine], [Didascalia]) VALUES (79, 42, N'ac mattis semper, dui lectus', N'eget metus eu erat semper rutrum. Fusce dolor quam, elementum at, egestas a, scelerisque sed,')
INSERT [dbo].[Gallery] ([Id], [IdProdotto], [Immagine], [Didascalia]) VALUES (80, 34, N'Integer id magna et ipsum', N'ridiculus mus. Proin vel arcu eu odio tristique pharetra. Quisque ac libero nec ligula consectetuer')
INSERT [dbo].[Gallery] ([Id], [IdProdotto], [Immagine], [Didascalia]) VALUES (81, 38, N'lorem eu metus. In lorem.', N'consectetuer ipsum nunc id enim. Curabitur massa. Vestibulum accumsan neque et nunc. Quisque ornare tortor')
INSERT [dbo].[Gallery] ([Id], [IdProdotto], [Immagine], [Didascalia]) VALUES (82, 4, N'vulputate mauris sagittis placerat. Cras', N'sodales at, velit. Pellentesque ultricies dignissim lacus. Aliquam rutrum lorem ac risus. Morbi metus. Vivamus')
INSERT [dbo].[Gallery] ([Id], [IdProdotto], [Immagine], [Didascalia]) VALUES (83, 1, N'purus, in molestie tortor nibh', N'Duis ac arcu. Nunc mauris. Morbi non sapien molestie orci tincidunt adipiscing. Mauris molestie pharetra')
INSERT [dbo].[Gallery] ([Id], [IdProdotto], [Immagine], [Didascalia]) VALUES (84, 33, N'Duis at lacus. Quisque purus', N'egestas, urna justo faucibus lectus, a sollicitudin orci sem eget massa. Suspendisse eleifend. Cras sed')
INSERT [dbo].[Gallery] ([Id], [IdProdotto], [Immagine], [Didascalia]) VALUES (85, 3, N'augue scelerisque mollis. Phasellus libero', N'purus ac tellus. Suspendisse sed dolor. Fusce mi lorem, vehicula et, rutrum eu, ultrices sit')
INSERT [dbo].[Gallery] ([Id], [IdProdotto], [Immagine], [Didascalia]) VALUES (86, 59, N'amet ornare lectus justo eu', N'mauris, rhoncus id, mollis nec, cursus a, enim. Suspendisse aliquet, sem ut cursus luctus, ipsum')
INSERT [dbo].[Gallery] ([Id], [IdProdotto], [Immagine], [Didascalia]) VALUES (87, 5, N'commodo auctor velit. Aliquam nisl.', N'feugiat tellus lorem eu metus. In lorem. Donec elementum, lorem ut aliquam iaculis, lacus pede')
INSERT [dbo].[Gallery] ([Id], [IdProdotto], [Immagine], [Didascalia]) VALUES (88, 37, N'molestie in, tempus eu, ligula.', N'convallis dolor. Quisque tincidunt pede ac urna. Ut tincidunt vehicula risus. Nulla eget metus eu')
INSERT [dbo].[Gallery] ([Id], [IdProdotto], [Immagine], [Didascalia]) VALUES (89, 32, N'lobortis quis, pede. Suspendisse dui.', N'Proin eget odio. Aliquam vulputate ullamcorper magna. Sed eu eros. Nam consequat dolor vitae dolor.')
INSERT [dbo].[Gallery] ([Id], [IdProdotto], [Immagine], [Didascalia]) VALUES (90, 56, N'ut quam vel sapien imperdiet', N'eu, eleifend nec, malesuada ut, sem. Nulla interdum. Curabitur dictum. Phasellus in felis. Nulla tempor')
INSERT [dbo].[Gallery] ([Id], [IdProdotto], [Immagine], [Didascalia]) VALUES (91, 34, N'tempor bibendum. Donec felis orci,', N'ante. Maecenas mi felis, adipiscing fringilla, porttitor vulputate, posuere vulputate, lacus. Cras interdum. Nunc sollicitudin')
INSERT [dbo].[Gallery] ([Id], [IdProdotto], [Immagine], [Didascalia]) VALUES (92, 28, N'sollicitudin orci sem eget massa.', N'magna tellus faucibus leo, in lobortis tellus justo sit amet nulla. Donec non justo. Proin')
INSERT [dbo].[Gallery] ([Id], [IdProdotto], [Immagine], [Didascalia]) VALUES (93, 70, N'dictum. Proin eget odio. Aliquam', N'aliquet diam. Sed diam lorem, auctor quis, tristique ac, eleifend vitae, erat. Vivamus nisi. Mauris')
INSERT [dbo].[Gallery] ([Id], [IdProdotto], [Immagine], [Didascalia]) VALUES (94, 100, N'ipsum porta elit, a feugiat', N'vulputate mauris sagittis placerat. Cras dictum ultricies ligula. Nullam enim. Sed nulla ante, iaculis nec,')
INSERT [dbo].[Gallery] ([Id], [IdProdotto], [Immagine], [Didascalia]) VALUES (95, 87, N'Nulla eget metus eu erat', N'lacinia vitae, sodales at, velit. Pellentesque ultricies dignissim lacus. Aliquam rutrum lorem ac risus. Morbi')
INSERT [dbo].[Gallery] ([Id], [IdProdotto], [Immagine], [Didascalia]) VALUES (96, 51, N'Donec tempor, est ac mattis', N'in lobortis tellus justo sit amet nulla. Donec non justo. Proin non massa non ante')
INSERT [dbo].[Gallery] ([Id], [IdProdotto], [Immagine], [Didascalia]) VALUES (97, 4, N'odio. Phasellus at augue id', N'dui. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean eget')
INSERT [dbo].[Gallery] ([Id], [IdProdotto], [Immagine], [Didascalia]) VALUES (98, 20, N'vitae purus gravida sagittis. Duis', N'ultrices. Duis volutpat nunc sit amet metus. Aliquam erat volutpat. Nulla facilisis. Suspendisse commodo tincidunt')
INSERT [dbo].[Gallery] ([Id], [IdProdotto], [Immagine], [Didascalia]) VALUES (99, 83, N'dui quis accumsan convallis, ante', N'Nullam ut nisi a odio semper cursus. Integer mollis. Integer tincidunt aliquam arcu. Aliquam ultrices')
GO
INSERT [dbo].[Gallery] ([Id], [IdProdotto], [Immagine], [Didascalia]) VALUES (100, 30, N'ac arcu. Nunc mauris. Morbi', N'et ultrices posuere cubilia Curae; Phasellus ornare. Fusce mollis. Duis sit amet diam eu dolor')
SET IDENTITY_INSERT [dbo].[Gallery] OFF
SET IDENTITY_INSERT [dbo].[Indirizzo] ON 

INSERT [dbo].[Indirizzo] ([Id], [IdCliente], [Via], [Citta], [Provincia], [Paese], [Fattura], [Spedizione]) VALUES (1, 1, N'Viale Tica 24', N'Siracusa', N'SR', N'Italia', 1, 2)
INSERT [dbo].[Indirizzo] ([Id], [IdCliente], [Via], [Citta], [Provincia], [Paese], [Fattura], [Spedizione]) VALUES (2, 1, N'Via Montebello 32', N'Torino', N'TO', N'Italia', 2, 1)
INSERT [dbo].[Indirizzo] ([Id], [IdCliente], [Via], [Citta], [Provincia], [Paese], [Fattura], [Spedizione]) VALUES (3, 2, N'Via Roma 10', N'Chivasso', N'TO', N'Italia', 1, 1)
INSERT [dbo].[Indirizzo] ([Id], [IdCliente], [Via], [Citta], [Provincia], [Paese], [Fattura], [Spedizione]) VALUES (15, 42, N'9289 Laoreet, Av.', N'Siracusa', N'BO', N'Italia', 2, 2)
INSERT [dbo].[Indirizzo] ([Id], [IdCliente], [Via], [Citta], [Provincia], [Paese], [Fattura], [Spedizione]) VALUES (16, 31, N'441-717 Eu Street', N'Siracusa', N'BO', N'Italia', 2, 1)
INSERT [dbo].[Indirizzo] ([Id], [IdCliente], [Via], [Citta], [Provincia], [Paese], [Fattura], [Spedizione]) VALUES (17, 66, N'Ap #699-3654 Ornare St.', N'Milano', N'MO', N'Italia', 2, 2)
INSERT [dbo].[Indirizzo] ([Id], [IdCliente], [Via], [Citta], [Provincia], [Paese], [Fattura], [Spedizione]) VALUES (18, 8, N'Ap #530-1009 Lobortis. Road', N'Parma', N'MO', N'Italia', 1, 2)
INSERT [dbo].[Indirizzo] ([Id], [IdCliente], [Via], [Citta], [Provincia], [Paese], [Fattura], [Spedizione]) VALUES (19, 24, N'P.O. Box 956, 2367 Pharetra. St.', N'Ragusa', N'RO', N'Italia', 1, 2)
INSERT [dbo].[Indirizzo] ([Id], [IdCliente], [Via], [Citta], [Provincia], [Paese], [Fattura], [Spedizione]) VALUES (20, 78, N'P.O. Box 865, 748 Eleifend Rd.', N'Venezia', N'VE', N'Italia', 2, 1)
INSERT [dbo].[Indirizzo] ([Id], [IdCliente], [Via], [Citta], [Provincia], [Paese], [Fattura], [Spedizione]) VALUES (21, 96, N'Ap #674-6640 A, Ave', N'Venezia', N'NA', N'Italia', 1, 1)
INSERT [dbo].[Indirizzo] ([Id], [IdCliente], [Via], [Citta], [Provincia], [Paese], [Fattura], [Spedizione]) VALUES (22, 55, N'3746 Natoque St.', N'Parma', N'MO', N'Italia', 2, 1)
INSERT [dbo].[Indirizzo] ([Id], [IdCliente], [Via], [Citta], [Provincia], [Paese], [Fattura], [Spedizione]) VALUES (23, 4, N'Ap #506-2266 Vel Ave', N'Catania', N'MO', N'Italia', 2, 2)
INSERT [dbo].[Indirizzo] ([Id], [IdCliente], [Via], [Citta], [Provincia], [Paese], [Fattura], [Spedizione]) VALUES (24, 72, N'322-6673 Turpis. Rd.', N'Milano', N'PV', N'Italia', 1, 2)
INSERT [dbo].[Indirizzo] ([Id], [IdCliente], [Via], [Citta], [Provincia], [Paese], [Fattura], [Spedizione]) VALUES (25, 59, N'P.O. Box 989, 6898 Sem St.', N'Parma', N'NA', N'Italia', 1, 2)
INSERT [dbo].[Indirizzo] ([Id], [IdCliente], [Via], [Citta], [Provincia], [Paese], [Fattura], [Spedizione]) VALUES (26, 26, N'4424 Velit Av.', N'Parma', N'SR', N'Italia', 1, 2)
INSERT [dbo].[Indirizzo] ([Id], [IdCliente], [Via], [Citta], [Provincia], [Paese], [Fattura], [Spedizione]) VALUES (27, 10, N'7177 Et, Ave', N'Milano', N'RG', N'Italia', 2, 2)
INSERT [dbo].[Indirizzo] ([Id], [IdCliente], [Via], [Citta], [Provincia], [Paese], [Fattura], [Spedizione]) VALUES (28, 46, N'Ap #989-4223 Id, Street', N'Torino', N'PA', N'Italia', 1, 1)
INSERT [dbo].[Indirizzo] ([Id], [IdCliente], [Via], [Citta], [Provincia], [Paese], [Fattura], [Spedizione]) VALUES (29, 53, N'2132 Dolor St.', N'Pavia', N'RG', N'Italia', 2, 1)
INSERT [dbo].[Indirizzo] ([Id], [IdCliente], [Via], [Citta], [Provincia], [Paese], [Fattura], [Spedizione]) VALUES (30, 23, N'1603 Scelerisque, Street', N'Bologna', N'PV', N'Italia', 2, 1)
INSERT [dbo].[Indirizzo] ([Id], [IdCliente], [Via], [Citta], [Provincia], [Paese], [Fattura], [Spedizione]) VALUES (31, 43, N'6005 Dui St.', N'Siracusa', N'PV', N'Italia', 1, 2)
INSERT [dbo].[Indirizzo] ([Id], [IdCliente], [Via], [Citta], [Provincia], [Paese], [Fattura], [Spedizione]) VALUES (32, 50, N'180-583 Ante Ave', N'Ragusa', N'CT', N'Italia', 1, 1)
INSERT [dbo].[Indirizzo] ([Id], [IdCliente], [Via], [Citta], [Provincia], [Paese], [Fattura], [Spedizione]) VALUES (33, 82, N'731-4011 Semper Avenue', N'Modena', N'MO', N'Italia', 2, 1)
INSERT [dbo].[Indirizzo] ([Id], [IdCliente], [Via], [Citta], [Provincia], [Paese], [Fattura], [Spedizione]) VALUES (34, 10, N'943-433 Porttitor Av.', N'Modena', N'NA', N'Italia', 1, 2)
INSERT [dbo].[Indirizzo] ([Id], [IdCliente], [Via], [Citta], [Provincia], [Paese], [Fattura], [Spedizione]) VALUES (35, 99, N'762-507 Pede, Av.', N'Napoli', N'PA', N'Italia', 1, 2)
INSERT [dbo].[Indirizzo] ([Id], [IdCliente], [Via], [Citta], [Provincia], [Paese], [Fattura], [Spedizione]) VALUES (36, 93, N'6022 Nullam Av.', N'Catania', N'MI', N'Italia', 1, 1)
INSERT [dbo].[Indirizzo] ([Id], [IdCliente], [Via], [Citta], [Provincia], [Paese], [Fattura], [Spedizione]) VALUES (37, 35, N'675-2434 Montes, Rd.', N'Milano', N'VE', N'Italia', 2, 2)
INSERT [dbo].[Indirizzo] ([Id], [IdCliente], [Via], [Citta], [Provincia], [Paese], [Fattura], [Spedizione]) VALUES (38, 88, N'733-7989 Sed Street', N'Venezia', N'PV', N'Italia', 1, 1)
INSERT [dbo].[Indirizzo] ([Id], [IdCliente], [Via], [Citta], [Provincia], [Paese], [Fattura], [Spedizione]) VALUES (39, 5, N'911 Lobortis Av.', N'Parma', N'MO', N'Italia', 1, 1)
INSERT [dbo].[Indirizzo] ([Id], [IdCliente], [Via], [Citta], [Provincia], [Paese], [Fattura], [Spedizione]) VALUES (40, 21, N'233-5504 Praesent Ave', N'Catania', N'VE', N'Italia', 1, 2)
INSERT [dbo].[Indirizzo] ([Id], [IdCliente], [Via], [Citta], [Provincia], [Paese], [Fattura], [Spedizione]) VALUES (41, 61, N'Ap #468-6452 Parturient Avenue', N'Bologna', N'RO', N'Italia', 1, 2)
INSERT [dbo].[Indirizzo] ([Id], [IdCliente], [Via], [Citta], [Provincia], [Paese], [Fattura], [Spedizione]) VALUES (42, 80, N'Ap #512-8117 Urna. Road', N'Milano', N'PA', N'Italia', 2, 1)
INSERT [dbo].[Indirizzo] ([Id], [IdCliente], [Via], [Citta], [Provincia], [Paese], [Fattura], [Spedizione]) VALUES (43, 32, N'4863 Orci. Street', N'Bologna', N'MI', N'Italia', 1, 1)
INSERT [dbo].[Indirizzo] ([Id], [IdCliente], [Via], [Citta], [Provincia], [Paese], [Fattura], [Spedizione]) VALUES (44, 43, N'162-2482 Lacinia. Avenue', N'Milano', N'VE', N'Italia', 2, 1)
INSERT [dbo].[Indirizzo] ([Id], [IdCliente], [Via], [Citta], [Provincia], [Paese], [Fattura], [Spedizione]) VALUES (45, 14, N'P.O. Box 738, 6725 Mauris Avenue', N'Modena', N'RG', N'Italia', 1, 1)
INSERT [dbo].[Indirizzo] ([Id], [IdCliente], [Via], [Citta], [Provincia], [Paese], [Fattura], [Spedizione]) VALUES (46, 88, N'P.O. Box 553, 469 Suspendisse Road', N'Milano', N'TO', N'Italia', 2, 2)
INSERT [dbo].[Indirizzo] ([Id], [IdCliente], [Via], [Citta], [Provincia], [Paese], [Fattura], [Spedizione]) VALUES (47, 93, N'Ap #914-4601 Vel St.', N'Milano', N'MO', N'Italia', 2, 1)
INSERT [dbo].[Indirizzo] ([Id], [IdCliente], [Via], [Citta], [Provincia], [Paese], [Fattura], [Spedizione]) VALUES (48, 85, N'P.O. Box 786, 475 Quam. Road', N'Roma', N'PV', N'Italia', 2, 2)
INSERT [dbo].[Indirizzo] ([Id], [IdCliente], [Via], [Citta], [Provincia], [Paese], [Fattura], [Spedizione]) VALUES (49, 11, N'Ap #455-3748 Nec Road', N'Napoli', N'BO', N'Italia', 1, 2)
INSERT [dbo].[Indirizzo] ([Id], [IdCliente], [Via], [Citta], [Provincia], [Paese], [Fattura], [Spedizione]) VALUES (50, 40, N'2957 Et, Rd.', N'Roma', N'MO', N'Italia', 2, 1)
INSERT [dbo].[Indirizzo] ([Id], [IdCliente], [Via], [Citta], [Provincia], [Paese], [Fattura], [Spedizione]) VALUES (51, 15, N'750 Sed Avenue', N'Modena', N'VE', N'Italia', 1, 2)
INSERT [dbo].[Indirizzo] ([Id], [IdCliente], [Via], [Citta], [Provincia], [Paese], [Fattura], [Spedizione]) VALUES (52, 5, N'446-5906 Auctor. Street', N'Milano', N'MI', N'Italia', 2, 1)
INSERT [dbo].[Indirizzo] ([Id], [IdCliente], [Via], [Citta], [Provincia], [Paese], [Fattura], [Spedizione]) VALUES (53, 43, N'9443 Elit. Rd.', N'Ragusa', N'RG', N'Italia', 1, 2)
INSERT [dbo].[Indirizzo] ([Id], [IdCliente], [Via], [Citta], [Provincia], [Paese], [Fattura], [Spedizione]) VALUES (54, 95, N'P.O. Box 382, 8531 Urna. Av.', N'Venezia', N'PV', N'Italia', 1, 1)
INSERT [dbo].[Indirizzo] ([Id], [IdCliente], [Via], [Citta], [Provincia], [Paese], [Fattura], [Spedizione]) VALUES (55, 70, N'441-2517 Felis Rd.', N'Venezia', N'VE', N'Italia', 2, 1)
INSERT [dbo].[Indirizzo] ([Id], [IdCliente], [Via], [Citta], [Provincia], [Paese], [Fattura], [Spedizione]) VALUES (56, 83, N'P.O. Box 769, 7574 Turpis Avenue', N'Siracusa', N'MI', N'Italia', 2, 1)
INSERT [dbo].[Indirizzo] ([Id], [IdCliente], [Via], [Citta], [Provincia], [Paese], [Fattura], [Spedizione]) VALUES (57, 37, N'6491 Nec Rd.', N'Ragusa', N'SR', N'Italia', 1, 2)
INSERT [dbo].[Indirizzo] ([Id], [IdCliente], [Via], [Citta], [Provincia], [Paese], [Fattura], [Spedizione]) VALUES (58, 86, N'P.O. Box 886, 3384 Sed Ave', N'Ragusa', N'RO', N'Italia', 1, 2)
INSERT [dbo].[Indirizzo] ([Id], [IdCliente], [Via], [Citta], [Provincia], [Paese], [Fattura], [Spedizione]) VALUES (59, 35, N'P.O. Box 138, 7913 Nullam Av.', N'Catania', N'PV', N'Italia', 1, 1)
INSERT [dbo].[Indirizzo] ([Id], [IdCliente], [Via], [Citta], [Provincia], [Paese], [Fattura], [Spedizione]) VALUES (60, 64, N'Ap #912-5099 Amet Avenue', N'Siracusa', N'PV', N'Italia', 1, 2)
INSERT [dbo].[Indirizzo] ([Id], [IdCliente], [Via], [Citta], [Provincia], [Paese], [Fattura], [Spedizione]) VALUES (61, 63, N'4655 Nullam Avenue', N'Napoli', N'PV', N'Italia', 1, 2)
INSERT [dbo].[Indirizzo] ([Id], [IdCliente], [Via], [Citta], [Provincia], [Paese], [Fattura], [Spedizione]) VALUES (62, 42, N'P.O. Box 139, 4628 Vivamus Rd.', N'Pavia', N'BO', N'Italia', 1, 1)
INSERT [dbo].[Indirizzo] ([Id], [IdCliente], [Via], [Citta], [Provincia], [Paese], [Fattura], [Spedizione]) VALUES (63, 71, N'754-5058 Ornare, Rd.', N'Bologna', N'PV', N'Italia', 2, 2)
INSERT [dbo].[Indirizzo] ([Id], [IdCliente], [Via], [Citta], [Provincia], [Paese], [Fattura], [Spedizione]) VALUES (64, 65, N'562-5198 Tempus St.', N'Parma', N'SR', N'Italia', 2, 2)
INSERT [dbo].[Indirizzo] ([Id], [IdCliente], [Via], [Citta], [Provincia], [Paese], [Fattura], [Spedizione]) VALUES (65, 71, N'Ap #854-1534 Et St.', N'Bologna', N'MO', N'Italia', 2, 1)
INSERT [dbo].[Indirizzo] ([Id], [IdCliente], [Via], [Citta], [Provincia], [Paese], [Fattura], [Spedizione]) VALUES (66, 60, N'Ap #273-2859 In St.', N'Siracusa', N'RO', N'Italia', 2, 1)
INSERT [dbo].[Indirizzo] ([Id], [IdCliente], [Via], [Citta], [Provincia], [Paese], [Fattura], [Spedizione]) VALUES (67, 41, N'451-7242 Rhoncus. Rd.', N'Siracusa', N'VE', N'Italia', 1, 2)
INSERT [dbo].[Indirizzo] ([Id], [IdCliente], [Via], [Citta], [Provincia], [Paese], [Fattura], [Spedizione]) VALUES (68, 30, N'Ap #241-5610 Nunc St.', N'Siracusa', N'RG', N'Italia', 1, 2)
INSERT [dbo].[Indirizzo] ([Id], [IdCliente], [Via], [Citta], [Provincia], [Paese], [Fattura], [Spedizione]) VALUES (69, 5, N'864-5555 Nisi Rd.', N'Milano', N'BO', N'Italia', 2, 1)
INSERT [dbo].[Indirizzo] ([Id], [IdCliente], [Via], [Citta], [Provincia], [Paese], [Fattura], [Spedizione]) VALUES (70, 37, N'2389 Ut Road', N'Ragusa', N'CT', N'Italia', 2, 2)
INSERT [dbo].[Indirizzo] ([Id], [IdCliente], [Via], [Citta], [Provincia], [Paese], [Fattura], [Spedizione]) VALUES (71, 2, N'Ap #430-1338 Neque Street', N'Roma', N'TO', N'Italia', 1, 1)
INSERT [dbo].[Indirizzo] ([Id], [IdCliente], [Via], [Citta], [Provincia], [Paese], [Fattura], [Spedizione]) VALUES (72, 25, N'612-9085 Ut St.', N'Napoli', N'MO', N'Italia', 2, 2)
INSERT [dbo].[Indirizzo] ([Id], [IdCliente], [Via], [Citta], [Provincia], [Paese], [Fattura], [Spedizione]) VALUES (73, 90, N'Ap #206-8104 Curabitur Road', N'Roma', N'VE', N'Italia', 1, 1)
INSERT [dbo].[Indirizzo] ([Id], [IdCliente], [Via], [Citta], [Provincia], [Paese], [Fattura], [Spedizione]) VALUES (74, 75, N'P.O. Box 496, 3050 Ut Road', N'Torino', N'RG', N'Italia', 1, 2)
INSERT [dbo].[Indirizzo] ([Id], [IdCliente], [Via], [Citta], [Provincia], [Paese], [Fattura], [Spedizione]) VALUES (75, 34, N'Ap #391-4636 Semper Rd.', N'Venezia', N'BO', N'Italia', 2, 2)
INSERT [dbo].[Indirizzo] ([Id], [IdCliente], [Via], [Citta], [Provincia], [Paese], [Fattura], [Spedizione]) VALUES (76, 91, N'Ap #464-6505 Convallis Road', N'Ragusa', N'SR', N'Italia', 1, 2)
INSERT [dbo].[Indirizzo] ([Id], [IdCliente], [Via], [Citta], [Provincia], [Paese], [Fattura], [Spedizione]) VALUES (77, 57, N'3279 Suspendisse Avenue', N'Venezia', N'CT', N'Italia', 1, 2)
INSERT [dbo].[Indirizzo] ([Id], [IdCliente], [Via], [Citta], [Provincia], [Paese], [Fattura], [Spedizione]) VALUES (78, 77, N'P.O. Box 144, 4936 Blandit Av.', N'Siracusa', N'RG', N'Italia', 1, 1)
INSERT [dbo].[Indirizzo] ([Id], [IdCliente], [Via], [Citta], [Provincia], [Paese], [Fattura], [Spedizione]) VALUES (79, 70, N'135-2041 Nunc Road', N'Catania', N'MI', N'Italia', 1, 2)
INSERT [dbo].[Indirizzo] ([Id], [IdCliente], [Via], [Citta], [Provincia], [Paese], [Fattura], [Spedizione]) VALUES (80, 68, N'P.O. Box 883, 9494 Erat, Rd.', N'Catania', N'MI', N'Italia', 2, 1)
INSERT [dbo].[Indirizzo] ([Id], [IdCliente], [Via], [Citta], [Provincia], [Paese], [Fattura], [Spedizione]) VALUES (81, 76, N'787-2653 Sed Ave', N'Pavia', N'TO', N'Italia', 2, 2)
INSERT [dbo].[Indirizzo] ([Id], [IdCliente], [Via], [Citta], [Provincia], [Paese], [Fattura], [Spedizione]) VALUES (82, 71, N'P.O. Box 989, 2635 Pretium Road', N'Pavia', N'MI', N'Italia', 1, 2)
INSERT [dbo].[Indirizzo] ([Id], [IdCliente], [Via], [Citta], [Provincia], [Paese], [Fattura], [Spedizione]) VALUES (83, 86, N'Ap #373-1879 Diam St.', N'Ragusa', N'CT', N'Italia', 1, 1)
INSERT [dbo].[Indirizzo] ([Id], [IdCliente], [Via], [Citta], [Provincia], [Paese], [Fattura], [Spedizione]) VALUES (84, 43, N'Ap #252-8192 Duis Ave', N'Modena', N'BO', N'Italia', 2, 2)
INSERT [dbo].[Indirizzo] ([Id], [IdCliente], [Via], [Citta], [Provincia], [Paese], [Fattura], [Spedizione]) VALUES (85, 61, N'483-9083 Ut Street', N'Venezia', N'VE', N'Italia', 1, 2)
INSERT [dbo].[Indirizzo] ([Id], [IdCliente], [Via], [Citta], [Provincia], [Paese], [Fattura], [Spedizione]) VALUES (86, 1, N'Ap #832-8116 Id, St.', N'Ragusa', N'PV', N'Italia', 1, 1)
INSERT [dbo].[Indirizzo] ([Id], [IdCliente], [Via], [Citta], [Provincia], [Paese], [Fattura], [Spedizione]) VALUES (87, 74, N'Ap #481-4366 Ligula St.', N'Modena', N'TO', N'Italia', 2, 2)
INSERT [dbo].[Indirizzo] ([Id], [IdCliente], [Via], [Citta], [Provincia], [Paese], [Fattura], [Spedizione]) VALUES (88, 77, N'Ap #848-1927 Bibendum Avenue', N'Parma', N'RG', N'Italia', 2, 2)
INSERT [dbo].[Indirizzo] ([Id], [IdCliente], [Via], [Citta], [Provincia], [Paese], [Fattura], [Spedizione]) VALUES (89, 33, N'521-3398 Vel Avenue', N'Siracusa', N'TO', N'Italia', 2, 2)
INSERT [dbo].[Indirizzo] ([Id], [IdCliente], [Via], [Citta], [Provincia], [Paese], [Fattura], [Spedizione]) VALUES (90, 92, N'P.O. Box 683, 5529 Consequat Rd.', N'Ragusa', N'PV', N'Italia', 2, 1)
INSERT [dbo].[Indirizzo] ([Id], [IdCliente], [Via], [Citta], [Provincia], [Paese], [Fattura], [Spedizione]) VALUES (91, 95, N'3441 Tincidunt Ave', N'Modena', N'MI', N'Italia', 2, 2)
INSERT [dbo].[Indirizzo] ([Id], [IdCliente], [Via], [Citta], [Provincia], [Paese], [Fattura], [Spedizione]) VALUES (92, 31, N'583-5050 Vehicula Av.', N'Parma', N'RO', N'Italia', 1, 2)
INSERT [dbo].[Indirizzo] ([Id], [IdCliente], [Via], [Citta], [Provincia], [Paese], [Fattura], [Spedizione]) VALUES (93, 86, N'Ap #157-990 Ultrices. St.', N'Torino', N'MO', N'Italia', 1, 1)
INSERT [dbo].[Indirizzo] ([Id], [IdCliente], [Via], [Citta], [Provincia], [Paese], [Fattura], [Spedizione]) VALUES (94, 95, N'Ap #703-4068 Ut St.', N'Pavia', N'RG', N'Italia', 2, 1)
INSERT [dbo].[Indirizzo] ([Id], [IdCliente], [Via], [Citta], [Provincia], [Paese], [Fattura], [Spedizione]) VALUES (95, 97, N'2877 Nunc St.', N'Pavia', N'MO', N'Italia', 2, 2)
INSERT [dbo].[Indirizzo] ([Id], [IdCliente], [Via], [Citta], [Provincia], [Paese], [Fattura], [Spedizione]) VALUES (96, 32, N'979-4134 Magna Rd.', N'Modena', N'TO', N'Italia', 2, 1)
INSERT [dbo].[Indirizzo] ([Id], [IdCliente], [Via], [Citta], [Provincia], [Paese], [Fattura], [Spedizione]) VALUES (97, 50, N'423-7587 Eget Av.', N'Roma', N'RO', N'Italia', 1, 1)
INSERT [dbo].[Indirizzo] ([Id], [IdCliente], [Via], [Citta], [Provincia], [Paese], [Fattura], [Spedizione]) VALUES (98, 52, N'626 Eget Rd.', N'Bologna', N'SR', N'Italia', 2, 2)
INSERT [dbo].[Indirizzo] ([Id], [IdCliente], [Via], [Citta], [Provincia], [Paese], [Fattura], [Spedizione]) VALUES (99, 22, N'4539 Congue, St.', N'Ragusa', N'NA', N'Italia', 1, 2)
INSERT [dbo].[Indirizzo] ([Id], [IdCliente], [Via], [Citta], [Provincia], [Paese], [Fattura], [Spedizione]) VALUES (100, 45, N'4907 Ipsum. Av.', N'Pavia', N'NA', N'Italia', 2, 2)
INSERT [dbo].[Indirizzo] ([Id], [IdCliente], [Via], [Citta], [Provincia], [Paese], [Fattura], [Spedizione]) VALUES (101, 62, N'P.O. Box 341, 1104 Lobortis Ave', N'Milano', N'MO', N'Italia', 1, 1)
INSERT [dbo].[Indirizzo] ([Id], [IdCliente], [Via], [Citta], [Provincia], [Paese], [Fattura], [Spedizione]) VALUES (102, 9, N'P.O. Box 726, 625 Id Street', N'Pavia', N'TO', N'Italia', 2, 2)
INSERT [dbo].[Indirizzo] ([Id], [IdCliente], [Via], [Citta], [Provincia], [Paese], [Fattura], [Spedizione]) VALUES (103, 89, N'P.O. Box 599, 564 Felis Street', N'Siracusa', N'NA', N'Italia', 2, 2)
INSERT [dbo].[Indirizzo] ([Id], [IdCliente], [Via], [Citta], [Provincia], [Paese], [Fattura], [Spedizione]) VALUES (104, 33, N'P.O. Box 689, 160 Mauris Road', N'Torino', N'NA', N'Italia', 1, 2)
INSERT [dbo].[Indirizzo] ([Id], [IdCliente], [Via], [Citta], [Provincia], [Paese], [Fattura], [Spedizione]) VALUES (105, 93, N'1630 Malesuada Rd.', N'Siracusa', N'MO', N'Italia', 2, 1)
INSERT [dbo].[Indirizzo] ([Id], [IdCliente], [Via], [Citta], [Provincia], [Paese], [Fattura], [Spedizione]) VALUES (106, 8, N'3314 Ut Rd.', N'Roma', N'PA', N'Italia', 2, 1)
INSERT [dbo].[Indirizzo] ([Id], [IdCliente], [Via], [Citta], [Provincia], [Paese], [Fattura], [Spedizione]) VALUES (107, 21, N'934-1098 Rutrum, Road', N'Catania', N'NA', N'Italia', 2, 2)
INSERT [dbo].[Indirizzo] ([Id], [IdCliente], [Via], [Citta], [Provincia], [Paese], [Fattura], [Spedizione]) VALUES (108, 97, N'2709 Nibh. Road', N'Roma', N'BO', N'Italia', 2, 2)
INSERT [dbo].[Indirizzo] ([Id], [IdCliente], [Via], [Citta], [Provincia], [Paese], [Fattura], [Spedizione]) VALUES (109, 75, N'331-8730 Montes, Avenue', N'Napoli', N'RG', N'Italia', 2, 1)
INSERT [dbo].[Indirizzo] ([Id], [IdCliente], [Via], [Citta], [Provincia], [Paese], [Fattura], [Spedizione]) VALUES (110, 43, N'974-3736 Ac Ave', N'Ragusa', N'MI', N'Italia', 2, 1)
GO
INSERT [dbo].[Indirizzo] ([Id], [IdCliente], [Via], [Citta], [Provincia], [Paese], [Fattura], [Spedizione]) VALUES (111, 39, N'Ap #630-5813 Eu Avenue', N'Siracusa', N'PA', N'Italia', 1, 1)
INSERT [dbo].[Indirizzo] ([Id], [IdCliente], [Via], [Citta], [Provincia], [Paese], [Fattura], [Spedizione]) VALUES (112, 29, N'698-417 Magna Road', N'Catania', N'NA', N'Italia', 2, 1)
INSERT [dbo].[Indirizzo] ([Id], [IdCliente], [Via], [Citta], [Provincia], [Paese], [Fattura], [Spedizione]) VALUES (113, 23, N'Ap #657-4037 Vitae Rd.', N'Torino', N'CT', N'Italia', 2, 1)
INSERT [dbo].[Indirizzo] ([Id], [IdCliente], [Via], [Citta], [Provincia], [Paese], [Fattura], [Spedizione]) VALUES (114, 1, N'P.O. Box 126, 7268 In Ave', N'Siracusa', N'MO', N'Italia', 2, 1)
SET IDENTITY_INSERT [dbo].[Indirizzo] OFF
SET IDENTITY_INSERT [dbo].[Ordine] ON 

INSERT [dbo].[Ordine] ([Id], [IdStato], [IdFatturazione], [IdSpedizione], [Data]) VALUES (1, 2, 1, 1, CAST(N'2016-03-18' AS Date))
INSERT [dbo].[Ordine] ([Id], [IdStato], [IdFatturazione], [IdSpedizione], [Data]) VALUES (2, 1, 1, 1, CAST(N'2015-09-14' AS Date))
INSERT [dbo].[Ordine] ([Id], [IdStato], [IdFatturazione], [IdSpedizione], [Data]) VALUES (3, 1, 2, 1, CAST(N'2016-11-06' AS Date))
INSERT [dbo].[Ordine] ([Id], [IdStato], [IdFatturazione], [IdSpedizione], [Data]) VALUES (4, 3, 2, 1, CAST(N'2016-10-09' AS Date))
INSERT [dbo].[Ordine] ([Id], [IdStato], [IdFatturazione], [IdSpedizione], [Data]) VALUES (5, 3, 2, 2, CAST(N'2017-02-28' AS Date))
INSERT [dbo].[Ordine] ([Id], [IdStato], [IdFatturazione], [IdSpedizione], [Data]) VALUES (6, 4, 1, 2, CAST(N'2016-10-31' AS Date))
INSERT [dbo].[Ordine] ([Id], [IdStato], [IdFatturazione], [IdSpedizione], [Data]) VALUES (7, 3, 1, 2, CAST(N'2017-05-11' AS Date))
INSERT [dbo].[Ordine] ([Id], [IdStato], [IdFatturazione], [IdSpedizione], [Data]) VALUES (8, 2, 1, 2, CAST(N'2015-04-03' AS Date))
INSERT [dbo].[Ordine] ([Id], [IdStato], [IdFatturazione], [IdSpedizione], [Data]) VALUES (9, 2, 1, 1, CAST(N'2015-12-28' AS Date))
INSERT [dbo].[Ordine] ([Id], [IdStato], [IdFatturazione], [IdSpedizione], [Data]) VALUES (10, 1, 1, 1, CAST(N'2014-06-19' AS Date))
INSERT [dbo].[Ordine] ([Id], [IdStato], [IdFatturazione], [IdSpedizione], [Data]) VALUES (11, 2, 1, 1, CAST(N'2014-08-14' AS Date))
INSERT [dbo].[Ordine] ([Id], [IdStato], [IdFatturazione], [IdSpedizione], [Data]) VALUES (12, 4, 2, 2, CAST(N'2014-11-20' AS Date))
INSERT [dbo].[Ordine] ([Id], [IdStato], [IdFatturazione], [IdSpedizione], [Data]) VALUES (13, 3, 1, 1, CAST(N'2017-01-22' AS Date))
INSERT [dbo].[Ordine] ([Id], [IdStato], [IdFatturazione], [IdSpedizione], [Data]) VALUES (14, 4, 1, 2, CAST(N'2014-08-07' AS Date))
INSERT [dbo].[Ordine] ([Id], [IdStato], [IdFatturazione], [IdSpedizione], [Data]) VALUES (15, 4, 2, 1, CAST(N'2014-07-17' AS Date))
INSERT [dbo].[Ordine] ([Id], [IdStato], [IdFatturazione], [IdSpedizione], [Data]) VALUES (16, 1, 1, 2, CAST(N'2015-04-19' AS Date))
INSERT [dbo].[Ordine] ([Id], [IdStato], [IdFatturazione], [IdSpedizione], [Data]) VALUES (17, 3, 2, 2, CAST(N'2014-09-23' AS Date))
INSERT [dbo].[Ordine] ([Id], [IdStato], [IdFatturazione], [IdSpedizione], [Data]) VALUES (18, 2, 1, 2, CAST(N'2015-01-14' AS Date))
INSERT [dbo].[Ordine] ([Id], [IdStato], [IdFatturazione], [IdSpedizione], [Data]) VALUES (19, 1, 2, 1, CAST(N'2015-12-23' AS Date))
INSERT [dbo].[Ordine] ([Id], [IdStato], [IdFatturazione], [IdSpedizione], [Data]) VALUES (20, 2, 2, 2, CAST(N'2015-10-31' AS Date))
INSERT [dbo].[Ordine] ([Id], [IdStato], [IdFatturazione], [IdSpedizione], [Data]) VALUES (21, 3, 2, 1, CAST(N'2015-12-19' AS Date))
INSERT [dbo].[Ordine] ([Id], [IdStato], [IdFatturazione], [IdSpedizione], [Data]) VALUES (22, 4, 2, 1, CAST(N'2015-11-04' AS Date))
INSERT [dbo].[Ordine] ([Id], [IdStato], [IdFatturazione], [IdSpedizione], [Data]) VALUES (23, 2, 2, 2, CAST(N'2016-07-16' AS Date))
INSERT [dbo].[Ordine] ([Id], [IdStato], [IdFatturazione], [IdSpedizione], [Data]) VALUES (24, 1, 1, 2, CAST(N'2017-02-16' AS Date))
INSERT [dbo].[Ordine] ([Id], [IdStato], [IdFatturazione], [IdSpedizione], [Data]) VALUES (25, 1, 1, 1, CAST(N'2014-11-17' AS Date))
INSERT [dbo].[Ordine] ([Id], [IdStato], [IdFatturazione], [IdSpedizione], [Data]) VALUES (26, 3, 1, 1, CAST(N'2014-12-13' AS Date))
INSERT [dbo].[Ordine] ([Id], [IdStato], [IdFatturazione], [IdSpedizione], [Data]) VALUES (27, 4, 2, 2, CAST(N'2016-10-19' AS Date))
INSERT [dbo].[Ordine] ([Id], [IdStato], [IdFatturazione], [IdSpedizione], [Data]) VALUES (28, 1, 2, 2, CAST(N'2016-04-18' AS Date))
INSERT [dbo].[Ordine] ([Id], [IdStato], [IdFatturazione], [IdSpedizione], [Data]) VALUES (29, 2, 2, 2, CAST(N'2016-03-11' AS Date))
INSERT [dbo].[Ordine] ([Id], [IdStato], [IdFatturazione], [IdSpedizione], [Data]) VALUES (30, 4, 2, 2, CAST(N'2015-07-23' AS Date))
INSERT [dbo].[Ordine] ([Id], [IdStato], [IdFatturazione], [IdSpedizione], [Data]) VALUES (31, 1, 1, 1, CAST(N'2016-02-02' AS Date))
INSERT [dbo].[Ordine] ([Id], [IdStato], [IdFatturazione], [IdSpedizione], [Data]) VALUES (32, 4, 2, 2, CAST(N'2015-12-11' AS Date))
INSERT [dbo].[Ordine] ([Id], [IdStato], [IdFatturazione], [IdSpedizione], [Data]) VALUES (33, 4, 1, 1, CAST(N'2015-02-04' AS Date))
INSERT [dbo].[Ordine] ([Id], [IdStato], [IdFatturazione], [IdSpedizione], [Data]) VALUES (34, 4, 1, 1, CAST(N'2017-03-28' AS Date))
INSERT [dbo].[Ordine] ([Id], [IdStato], [IdFatturazione], [IdSpedizione], [Data]) VALUES (35, 1, 2, 2, CAST(N'2016-01-08' AS Date))
INSERT [dbo].[Ordine] ([Id], [IdStato], [IdFatturazione], [IdSpedizione], [Data]) VALUES (36, 1, 2, 2, CAST(N'2016-09-04' AS Date))
INSERT [dbo].[Ordine] ([Id], [IdStato], [IdFatturazione], [IdSpedizione], [Data]) VALUES (37, 4, 2, 2, CAST(N'2014-12-11' AS Date))
INSERT [dbo].[Ordine] ([Id], [IdStato], [IdFatturazione], [IdSpedizione], [Data]) VALUES (38, 2, 2, 1, CAST(N'2016-04-21' AS Date))
INSERT [dbo].[Ordine] ([Id], [IdStato], [IdFatturazione], [IdSpedizione], [Data]) VALUES (39, 4, 2, 1, CAST(N'2016-11-02' AS Date))
INSERT [dbo].[Ordine] ([Id], [IdStato], [IdFatturazione], [IdSpedizione], [Data]) VALUES (40, 4, 2, 2, CAST(N'2015-06-10' AS Date))
INSERT [dbo].[Ordine] ([Id], [IdStato], [IdFatturazione], [IdSpedizione], [Data]) VALUES (41, 2, 2, 2, CAST(N'2016-09-05' AS Date))
INSERT [dbo].[Ordine] ([Id], [IdStato], [IdFatturazione], [IdSpedizione], [Data]) VALUES (42, 4, 1, 2, CAST(N'2014-08-21' AS Date))
INSERT [dbo].[Ordine] ([Id], [IdStato], [IdFatturazione], [IdSpedizione], [Data]) VALUES (43, 3, 1, 1, CAST(N'2017-03-20' AS Date))
INSERT [dbo].[Ordine] ([Id], [IdStato], [IdFatturazione], [IdSpedizione], [Data]) VALUES (44, 4, 2, 1, CAST(N'2015-05-10' AS Date))
INSERT [dbo].[Ordine] ([Id], [IdStato], [IdFatturazione], [IdSpedizione], [Data]) VALUES (45, 2, 2, 1, CAST(N'2015-03-18' AS Date))
INSERT [dbo].[Ordine] ([Id], [IdStato], [IdFatturazione], [IdSpedizione], [Data]) VALUES (46, 3, 2, 2, CAST(N'2015-05-30' AS Date))
INSERT [dbo].[Ordine] ([Id], [IdStato], [IdFatturazione], [IdSpedizione], [Data]) VALUES (47, 4, 1, 2, CAST(N'2015-07-12' AS Date))
INSERT [dbo].[Ordine] ([Id], [IdStato], [IdFatturazione], [IdSpedizione], [Data]) VALUES (48, 2, 1, 1, CAST(N'2016-04-30' AS Date))
INSERT [dbo].[Ordine] ([Id], [IdStato], [IdFatturazione], [IdSpedizione], [Data]) VALUES (49, 2, 1, 1, CAST(N'2015-09-27' AS Date))
INSERT [dbo].[Ordine] ([Id], [IdStato], [IdFatturazione], [IdSpedizione], [Data]) VALUES (50, 4, 2, 1, CAST(N'2015-02-22' AS Date))
INSERT [dbo].[Ordine] ([Id], [IdStato], [IdFatturazione], [IdSpedizione], [Data]) VALUES (51, 4, 1, 2, CAST(N'2014-06-22' AS Date))
INSERT [dbo].[Ordine] ([Id], [IdStato], [IdFatturazione], [IdSpedizione], [Data]) VALUES (52, 3, 1, 2, CAST(N'2015-04-20' AS Date))
INSERT [dbo].[Ordine] ([Id], [IdStato], [IdFatturazione], [IdSpedizione], [Data]) VALUES (53, 1, 1, 1, CAST(N'2015-10-06' AS Date))
INSERT [dbo].[Ordine] ([Id], [IdStato], [IdFatturazione], [IdSpedizione], [Data]) VALUES (54, 1, 2, 2, CAST(N'2014-06-24' AS Date))
INSERT [dbo].[Ordine] ([Id], [IdStato], [IdFatturazione], [IdSpedizione], [Data]) VALUES (55, 3, 1, 1, CAST(N'2015-04-25' AS Date))
INSERT [dbo].[Ordine] ([Id], [IdStato], [IdFatturazione], [IdSpedizione], [Data]) VALUES (56, 4, 1, 2, CAST(N'2014-06-05' AS Date))
INSERT [dbo].[Ordine] ([Id], [IdStato], [IdFatturazione], [IdSpedizione], [Data]) VALUES (57, 4, 2, 1, CAST(N'2017-04-06' AS Date))
INSERT [dbo].[Ordine] ([Id], [IdStato], [IdFatturazione], [IdSpedizione], [Data]) VALUES (58, 1, 1, 1, CAST(N'2017-04-01' AS Date))
INSERT [dbo].[Ordine] ([Id], [IdStato], [IdFatturazione], [IdSpedizione], [Data]) VALUES (59, 1, 2, 2, CAST(N'2016-07-24' AS Date))
INSERT [dbo].[Ordine] ([Id], [IdStato], [IdFatturazione], [IdSpedizione], [Data]) VALUES (60, 3, 1, 2, CAST(N'2016-03-16' AS Date))
INSERT [dbo].[Ordine] ([Id], [IdStato], [IdFatturazione], [IdSpedizione], [Data]) VALUES (61, 2, 2, 1, CAST(N'2015-11-01' AS Date))
INSERT [dbo].[Ordine] ([Id], [IdStato], [IdFatturazione], [IdSpedizione], [Data]) VALUES (62, 4, 2, 2, CAST(N'2016-06-04' AS Date))
INSERT [dbo].[Ordine] ([Id], [IdStato], [IdFatturazione], [IdSpedizione], [Data]) VALUES (63, 2, 2, 1, CAST(N'2016-12-20' AS Date))
INSERT [dbo].[Ordine] ([Id], [IdStato], [IdFatturazione], [IdSpedizione], [Data]) VALUES (64, 3, 1, 1, CAST(N'2015-07-27' AS Date))
INSERT [dbo].[Ordine] ([Id], [IdStato], [IdFatturazione], [IdSpedizione], [Data]) VALUES (65, 3, 2, 2, CAST(N'2015-07-18' AS Date))
INSERT [dbo].[Ordine] ([Id], [IdStato], [IdFatturazione], [IdSpedizione], [Data]) VALUES (66, 1, 1, 2, CAST(N'2014-10-24' AS Date))
INSERT [dbo].[Ordine] ([Id], [IdStato], [IdFatturazione], [IdSpedizione], [Data]) VALUES (67, 4, 2, 2, CAST(N'2017-04-08' AS Date))
INSERT [dbo].[Ordine] ([Id], [IdStato], [IdFatturazione], [IdSpedizione], [Data]) VALUES (68, 4, 2, 2, CAST(N'2015-02-04' AS Date))
INSERT [dbo].[Ordine] ([Id], [IdStato], [IdFatturazione], [IdSpedizione], [Data]) VALUES (69, 1, 1, 1, CAST(N'2017-03-05' AS Date))
INSERT [dbo].[Ordine] ([Id], [IdStato], [IdFatturazione], [IdSpedizione], [Data]) VALUES (70, 1, 2, 2, CAST(N'2016-11-04' AS Date))
INSERT [dbo].[Ordine] ([Id], [IdStato], [IdFatturazione], [IdSpedizione], [Data]) VALUES (71, 4, 2, 1, CAST(N'2015-08-13' AS Date))
INSERT [dbo].[Ordine] ([Id], [IdStato], [IdFatturazione], [IdSpedizione], [Data]) VALUES (72, 3, 2, 1, CAST(N'2016-02-29' AS Date))
INSERT [dbo].[Ordine] ([Id], [IdStato], [IdFatturazione], [IdSpedizione], [Data]) VALUES (73, 3, 1, 2, CAST(N'2015-06-03' AS Date))
INSERT [dbo].[Ordine] ([Id], [IdStato], [IdFatturazione], [IdSpedizione], [Data]) VALUES (74, 4, 1, 2, CAST(N'2015-06-30' AS Date))
INSERT [dbo].[Ordine] ([Id], [IdStato], [IdFatturazione], [IdSpedizione], [Data]) VALUES (75, 4, 2, 1, CAST(N'2015-04-25' AS Date))
INSERT [dbo].[Ordine] ([Id], [IdStato], [IdFatturazione], [IdSpedizione], [Data]) VALUES (76, 1, 1, 1, CAST(N'2016-10-05' AS Date))
INSERT [dbo].[Ordine] ([Id], [IdStato], [IdFatturazione], [IdSpedizione], [Data]) VALUES (77, 2, 2, 1, CAST(N'2016-02-03' AS Date))
INSERT [dbo].[Ordine] ([Id], [IdStato], [IdFatturazione], [IdSpedizione], [Data]) VALUES (78, 4, 2, 1, CAST(N'2015-06-04' AS Date))
INSERT [dbo].[Ordine] ([Id], [IdStato], [IdFatturazione], [IdSpedizione], [Data]) VALUES (79, 2, 1, 1, CAST(N'2016-03-23' AS Date))
INSERT [dbo].[Ordine] ([Id], [IdStato], [IdFatturazione], [IdSpedizione], [Data]) VALUES (80, 4, 1, 2, CAST(N'2015-07-24' AS Date))
INSERT [dbo].[Ordine] ([Id], [IdStato], [IdFatturazione], [IdSpedizione], [Data]) VALUES (81, 2, 2, 2, CAST(N'2015-06-05' AS Date))
INSERT [dbo].[Ordine] ([Id], [IdStato], [IdFatturazione], [IdSpedizione], [Data]) VALUES (82, 3, 2, 2, CAST(N'2016-01-14' AS Date))
INSERT [dbo].[Ordine] ([Id], [IdStato], [IdFatturazione], [IdSpedizione], [Data]) VALUES (83, 2, 1, 2, CAST(N'2016-12-31' AS Date))
INSERT [dbo].[Ordine] ([Id], [IdStato], [IdFatturazione], [IdSpedizione], [Data]) VALUES (84, 4, 1, 2, CAST(N'2016-03-01' AS Date))
INSERT [dbo].[Ordine] ([Id], [IdStato], [IdFatturazione], [IdSpedizione], [Data]) VALUES (85, 1, 2, 1, CAST(N'2017-05-15' AS Date))
INSERT [dbo].[Ordine] ([Id], [IdStato], [IdFatturazione], [IdSpedizione], [Data]) VALUES (86, 2, 1, 1, CAST(N'2015-11-15' AS Date))
INSERT [dbo].[Ordine] ([Id], [IdStato], [IdFatturazione], [IdSpedizione], [Data]) VALUES (87, 2, 1, 2, CAST(N'2017-01-31' AS Date))
INSERT [dbo].[Ordine] ([Id], [IdStato], [IdFatturazione], [IdSpedizione], [Data]) VALUES (88, 3, 1, 1, CAST(N'2016-03-13' AS Date))
INSERT [dbo].[Ordine] ([Id], [IdStato], [IdFatturazione], [IdSpedizione], [Data]) VALUES (89, 4, 1, 2, CAST(N'2016-10-29' AS Date))
INSERT [dbo].[Ordine] ([Id], [IdStato], [IdFatturazione], [IdSpedizione], [Data]) VALUES (90, 1, 2, 2, CAST(N'2015-05-30' AS Date))
INSERT [dbo].[Ordine] ([Id], [IdStato], [IdFatturazione], [IdSpedizione], [Data]) VALUES (91, 3, 2, 1, CAST(N'2016-04-06' AS Date))
INSERT [dbo].[Ordine] ([Id], [IdStato], [IdFatturazione], [IdSpedizione], [Data]) VALUES (92, 3, 2, 1, CAST(N'2015-04-17' AS Date))
INSERT [dbo].[Ordine] ([Id], [IdStato], [IdFatturazione], [IdSpedizione], [Data]) VALUES (93, 4, 1, 1, CAST(N'2015-08-09' AS Date))
INSERT [dbo].[Ordine] ([Id], [IdStato], [IdFatturazione], [IdSpedizione], [Data]) VALUES (94, 1, 1, 2, CAST(N'2015-11-30' AS Date))
INSERT [dbo].[Ordine] ([Id], [IdStato], [IdFatturazione], [IdSpedizione], [Data]) VALUES (95, 2, 2, 2, CAST(N'2015-12-04' AS Date))
INSERT [dbo].[Ordine] ([Id], [IdStato], [IdFatturazione], [IdSpedizione], [Data]) VALUES (96, 1, 1, 2, CAST(N'2016-11-08' AS Date))
INSERT [dbo].[Ordine] ([Id], [IdStato], [IdFatturazione], [IdSpedizione], [Data]) VALUES (97, 2, 1, 2, CAST(N'2015-06-19' AS Date))
INSERT [dbo].[Ordine] ([Id], [IdStato], [IdFatturazione], [IdSpedizione], [Data]) VALUES (98, 1, 2, 2, CAST(N'2017-03-17' AS Date))
INSERT [dbo].[Ordine] ([Id], [IdStato], [IdFatturazione], [IdSpedizione], [Data]) VALUES (99, 3, 1, 1, CAST(N'2016-09-08' AS Date))
GO
INSERT [dbo].[Ordine] ([Id], [IdStato], [IdFatturazione], [IdSpedizione], [Data]) VALUES (100, 1, 2, 1, CAST(N'2016-04-16' AS Date))
SET IDENTITY_INSERT [dbo].[Ordine] OFF
SET IDENTITY_INSERT [dbo].[Prodotto] ON 

INSERT [dbo].[Prodotto] ([Id], [IdCategoria], [Nome], [Descrizione], [Prezzo], [Giacienza]) VALUES (1, 97, N'Ossi di Seppia', N'Lorem', 1711.0000, 6459)
INSERT [dbo].[Prodotto] ([Id], [IdCategoria], [Nome], [Descrizione], [Prezzo], [Giacienza]) VALUES (2, 59, N'Vestito Lungo', N'Lorem ipsum dolor sit amet, consectetuer', 1907.0000, 8239)
INSERT [dbo].[Prodotto] ([Id], [IdCategoria], [Nome], [Descrizione], [Prezzo], [Giacienza]) VALUES (3, 68, N'Ram', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed', 1768.0000, 8770)
INSERT [dbo].[Prodotto] ([Id], [IdCategoria], [Nome], [Descrizione], [Prezzo], [Giacienza]) VALUES (4, 82, N'Ossi di Seppia', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', 434.0000, 5205)
INSERT [dbo].[Prodotto] ([Id], [IdCategoria], [Nome], [Descrizione], [Prezzo], [Giacienza]) VALUES (5, 50, N'il piacere', N'Lorem', 1063.0000, 5288)
INSERT [dbo].[Prodotto] ([Id], [IdCategoria], [Nome], [Descrizione], [Prezzo], [Giacienza]) VALUES (6, 37, N'Ram', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur', 947.0000, 7108)
INSERT [dbo].[Prodotto] ([Id], [IdCategoria], [Nome], [Descrizione], [Prezzo], [Giacienza]) VALUES (7, 37, N'Ossi di Seppia', N'Lorem ipsum dolor sit amet,', 363.0000, 7684)
INSERT [dbo].[Prodotto] ([Id], [IdCategoria], [Nome], [Descrizione], [Prezzo], [Giacienza]) VALUES (8, 64, N'Processore', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur', 1868.0000, 2516)
INSERT [dbo].[Prodotto] ([Id], [IdCategoria], [Nome], [Descrizione], [Prezzo], [Giacienza]) VALUES (9, 36, N'Processore', N'Lorem ipsum dolor sit', 428.0000, 1900)
INSERT [dbo].[Prodotto] ([Id], [IdCategoria], [Nome], [Descrizione], [Prezzo], [Giacienza]) VALUES (10, 36, N'Ossi di Seppia', N'Lorem ipsum dolor', 1150.0000, 425)
INSERT [dbo].[Prodotto] ([Id], [IdCategoria], [Nome], [Descrizione], [Prezzo], [Giacienza]) VALUES (11, 57, N'Xbox one', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur', 150.0000, 8531)
INSERT [dbo].[Prodotto] ([Id], [IdCategoria], [Nome], [Descrizione], [Prezzo], [Giacienza]) VALUES (12, 68, N'il piacere', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed', 696.0000, 2656)
INSERT [dbo].[Prodotto] ([Id], [IdCategoria], [Nome], [Descrizione], [Prezzo], [Giacienza]) VALUES (13, 58, N'PS4', N'Lorem ipsum dolor sit amet, consectetuer', 1950.0000, 2044)
INSERT [dbo].[Prodotto] ([Id], [IdCategoria], [Nome], [Descrizione], [Prezzo], [Giacienza]) VALUES (14, 29, N'Vestito Lungo', N'Lorem ipsum dolor', 1989.0000, 5902)
INSERT [dbo].[Prodotto] ([Id], [IdCategoria], [Nome], [Descrizione], [Prezzo], [Giacienza]) VALUES (15, 38, N'PS4', N'Lorem ipsum dolor sit amet,', 205.0000, 2687)
INSERT [dbo].[Prodotto] ([Id], [IdCategoria], [Nome], [Descrizione], [Prezzo], [Giacienza]) VALUES (16, 21, N'Intel I7', N'Lorem ipsum dolor sit amet, consectetuer', 58.0000, 9147)
INSERT [dbo].[Prodotto] ([Id], [IdCategoria], [Nome], [Descrizione], [Prezzo], [Giacienza]) VALUES (17, 39, N'Xbox one', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed', 1009.0000, 5046)
INSERT [dbo].[Prodotto] ([Id], [IdCategoria], [Nome], [Descrizione], [Prezzo], [Giacienza]) VALUES (18, 66, N'Ossi di Seppia', N'Lorem ipsum dolor sit amet, consectetuer adipiscing', 894.0000, 4475)
INSERT [dbo].[Prodotto] ([Id], [IdCategoria], [Nome], [Descrizione], [Prezzo], [Giacienza]) VALUES (19, 98, N'PS4', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed', 240.0000, 3307)
INSERT [dbo].[Prodotto] ([Id], [IdCategoria], [Nome], [Descrizione], [Prezzo], [Giacienza]) VALUES (20, 71, N'Processore', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', 1895.0000, 7882)
INSERT [dbo].[Prodotto] ([Id], [IdCategoria], [Nome], [Descrizione], [Prezzo], [Giacienza]) VALUES (21, 16, N'Xbox one', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur', 1895.0000, 1141)
INSERT [dbo].[Prodotto] ([Id], [IdCategoria], [Nome], [Descrizione], [Prezzo], [Giacienza]) VALUES (22, 53, N'PS4', N'Lorem ipsum dolor sit amet, consectetuer', 163.0000, 162)
INSERT [dbo].[Prodotto] ([Id], [IdCategoria], [Nome], [Descrizione], [Prezzo], [Giacienza]) VALUES (23, 69, N'Ram', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed', 487.0000, 6614)
INSERT [dbo].[Prodotto] ([Id], [IdCategoria], [Nome], [Descrizione], [Prezzo], [Giacienza]) VALUES (24, 88, N'Vestito Lungo', N'Lorem ipsum dolor', 1578.0000, 8531)
INSERT [dbo].[Prodotto] ([Id], [IdCategoria], [Nome], [Descrizione], [Prezzo], [Giacienza]) VALUES (25, 96, N'Ram', N'Lorem ipsum dolor sit', 713.0000, 5302)
INSERT [dbo].[Prodotto] ([Id], [IdCategoria], [Nome], [Descrizione], [Prezzo], [Giacienza]) VALUES (26, 36, N'Intel I7', N'Lorem ipsum dolor sit amet, consectetuer', 476.0000, 3990)
INSERT [dbo].[Prodotto] ([Id], [IdCategoria], [Nome], [Descrizione], [Prezzo], [Giacienza]) VALUES (27, 78, N'Ossi di Seppia', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', 1273.0000, 2068)
INSERT [dbo].[Prodotto] ([Id], [IdCategoria], [Nome], [Descrizione], [Prezzo], [Giacienza]) VALUES (28, 38, N'Ram', N'Lorem ipsum dolor sit', 428.0000, 3270)
INSERT [dbo].[Prodotto] ([Id], [IdCategoria], [Nome], [Descrizione], [Prezzo], [Giacienza]) VALUES (29, 44, N'il piacere', N'Lorem ipsum dolor sit', 1603.0000, 3618)
INSERT [dbo].[Prodotto] ([Id], [IdCategoria], [Nome], [Descrizione], [Prezzo], [Giacienza]) VALUES (30, 8, N'Processore', N'Lorem ipsum', 435.0000, 7608)
INSERT [dbo].[Prodotto] ([Id], [IdCategoria], [Nome], [Descrizione], [Prezzo], [Giacienza]) VALUES (31, 43, N'Ram', N'Lorem ipsum dolor sit amet,', 771.0000, 2414)
INSERT [dbo].[Prodotto] ([Id], [IdCategoria], [Nome], [Descrizione], [Prezzo], [Giacienza]) VALUES (32, 39, N'Intel I7', N'Lorem ipsum dolor sit amet, consectetuer', 628.0000, 1076)
INSERT [dbo].[Prodotto] ([Id], [IdCategoria], [Nome], [Descrizione], [Prezzo], [Giacienza]) VALUES (33, 42, N'Vestito Lungo', N'Lorem ipsum dolor', 539.0000, 3103)
INSERT [dbo].[Prodotto] ([Id], [IdCategoria], [Nome], [Descrizione], [Prezzo], [Giacienza]) VALUES (34, 35, N'PS4', N'Lorem ipsum dolor sit amet,', 1642.0000, 7323)
INSERT [dbo].[Prodotto] ([Id], [IdCategoria], [Nome], [Descrizione], [Prezzo], [Giacienza]) VALUES (35, 49, N'il piacere', N'Lorem ipsum dolor sit amet, consectetuer adipiscing', 1885.0000, 827)
INSERT [dbo].[Prodotto] ([Id], [IdCategoria], [Nome], [Descrizione], [Prezzo], [Giacienza]) VALUES (36, 70, N'Vestito Lungo', N'Lorem ipsum dolor sit amet,', 1371.0000, 6942)
INSERT [dbo].[Prodotto] ([Id], [IdCategoria], [Nome], [Descrizione], [Prezzo], [Giacienza]) VALUES (37, 63, N'Nike', N'Lorem ipsum dolor sit', 295.0000, 8310)
INSERT [dbo].[Prodotto] ([Id], [IdCategoria], [Nome], [Descrizione], [Prezzo], [Giacienza]) VALUES (38, 10, N'Processore', N'Lorem ipsum dolor sit', 939.0000, 8594)
INSERT [dbo].[Prodotto] ([Id], [IdCategoria], [Nome], [Descrizione], [Prezzo], [Giacienza]) VALUES (39, 60, N'Intel I7', N'Lorem ipsum dolor sit amet, consectetuer adipiscing', 492.0000, 4827)
INSERT [dbo].[Prodotto] ([Id], [IdCategoria], [Nome], [Descrizione], [Prezzo], [Giacienza]) VALUES (40, 95, N'Intel I7', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed', 1090.0000, 269)
INSERT [dbo].[Prodotto] ([Id], [IdCategoria], [Nome], [Descrizione], [Prezzo], [Giacienza]) VALUES (41, 65, N'Ossi di Seppia', N'Lorem ipsum dolor sit amet,', 1917.0000, 6075)
INSERT [dbo].[Prodotto] ([Id], [IdCategoria], [Nome], [Descrizione], [Prezzo], [Giacienza]) VALUES (42, 61, N'Nike', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed', 1134.0000, 3762)
INSERT [dbo].[Prodotto] ([Id], [IdCategoria], [Nome], [Descrizione], [Prezzo], [Giacienza]) VALUES (43, 16, N'Intel I7', N'Lorem ipsum', 1195.0000, 6664)
INSERT [dbo].[Prodotto] ([Id], [IdCategoria], [Nome], [Descrizione], [Prezzo], [Giacienza]) VALUES (44, 32, N'Ram', N'Lorem ipsum dolor sit', 1582.0000, 4318)
INSERT [dbo].[Prodotto] ([Id], [IdCategoria], [Nome], [Descrizione], [Prezzo], [Giacienza]) VALUES (45, 98, N'Vestito Lungo', N'Lorem ipsum dolor sit amet,', 911.0000, 6085)
INSERT [dbo].[Prodotto] ([Id], [IdCategoria], [Nome], [Descrizione], [Prezzo], [Giacienza]) VALUES (46, 21, N'Processore', N'Lorem', 356.0000, 8651)
INSERT [dbo].[Prodotto] ([Id], [IdCategoria], [Nome], [Descrizione], [Prezzo], [Giacienza]) VALUES (47, 47, N'Ossi di Seppia', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur', 1316.0000, 8687)
INSERT [dbo].[Prodotto] ([Id], [IdCategoria], [Nome], [Descrizione], [Prezzo], [Giacienza]) VALUES (48, 51, N'il piacere', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed', 1800.0000, 4305)
INSERT [dbo].[Prodotto] ([Id], [IdCategoria], [Nome], [Descrizione], [Prezzo], [Giacienza]) VALUES (49, 11, N'Ram', N'Lorem ipsum dolor', 556.0000, 1870)
INSERT [dbo].[Prodotto] ([Id], [IdCategoria], [Nome], [Descrizione], [Prezzo], [Giacienza]) VALUES (50, 60, N'Ram', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', 255.0000, 2602)
INSERT [dbo].[Prodotto] ([Id], [IdCategoria], [Nome], [Descrizione], [Prezzo], [Giacienza]) VALUES (51, 81, N'Ossi di Seppia', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur', 18.0000, 2359)
INSERT [dbo].[Prodotto] ([Id], [IdCategoria], [Nome], [Descrizione], [Prezzo], [Giacienza]) VALUES (52, 76, N'il piacere', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', 533.0000, 7963)
INSERT [dbo].[Prodotto] ([Id], [IdCategoria], [Nome], [Descrizione], [Prezzo], [Giacienza]) VALUES (53, 72, N'Ram', N'Lorem ipsum dolor sit amet, consectetuer', 1203.0000, 5235)
INSERT [dbo].[Prodotto] ([Id], [IdCategoria], [Nome], [Descrizione], [Prezzo], [Giacienza]) VALUES (54, 55, N'Vestito Lungo', N'Lorem ipsum', 1564.0000, 1736)
INSERT [dbo].[Prodotto] ([Id], [IdCategoria], [Nome], [Descrizione], [Prezzo], [Giacienza]) VALUES (55, 76, N'Xbox one', N'Lorem ipsum dolor sit amet, consectetuer adipiscing', 1410.0000, 2933)
INSERT [dbo].[Prodotto] ([Id], [IdCategoria], [Nome], [Descrizione], [Prezzo], [Giacienza]) VALUES (56, 58, N'Nike', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur', 568.0000, 5024)
INSERT [dbo].[Prodotto] ([Id], [IdCategoria], [Nome], [Descrizione], [Prezzo], [Giacienza]) VALUES (57, 82, N'Nike', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', 300.0000, 6373)
INSERT [dbo].[Prodotto] ([Id], [IdCategoria], [Nome], [Descrizione], [Prezzo], [Giacienza]) VALUES (58, 86, N'Ossi di Seppia', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur', 918.0000, 8402)
INSERT [dbo].[Prodotto] ([Id], [IdCategoria], [Nome], [Descrizione], [Prezzo], [Giacienza]) VALUES (59, 13, N'Ossi di Seppia', N'Lorem ipsum', 1941.0000, 5283)
INSERT [dbo].[Prodotto] ([Id], [IdCategoria], [Nome], [Descrizione], [Prezzo], [Giacienza]) VALUES (60, 8, N'PS4', N'Lorem ipsum dolor sit amet, consectetuer', 873.0000, 4034)
INSERT [dbo].[Prodotto] ([Id], [IdCategoria], [Nome], [Descrizione], [Prezzo], [Giacienza]) VALUES (61, 100, N'il piacere', N'Lorem ipsum', 1382.0000, 7731)
INSERT [dbo].[Prodotto] ([Id], [IdCategoria], [Nome], [Descrizione], [Prezzo], [Giacienza]) VALUES (62, 75, N'Ram', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur', 1140.0000, 9545)
INSERT [dbo].[Prodotto] ([Id], [IdCategoria], [Nome], [Descrizione], [Prezzo], [Giacienza]) VALUES (63, 22, N'Nike', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed', 710.0000, 8695)
INSERT [dbo].[Prodotto] ([Id], [IdCategoria], [Nome], [Descrizione], [Prezzo], [Giacienza]) VALUES (64, 100, N'Vestito Lungo', N'Lorem ipsum dolor sit amet, consectetuer adipiscing', 1821.0000, 7048)
INSERT [dbo].[Prodotto] ([Id], [IdCategoria], [Nome], [Descrizione], [Prezzo], [Giacienza]) VALUES (65, 53, N'Processore', N'Lorem', 1554.0000, 7269)
INSERT [dbo].[Prodotto] ([Id], [IdCategoria], [Nome], [Descrizione], [Prezzo], [Giacienza]) VALUES (66, 59, N'Processore', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', 1275.0000, 7736)
INSERT [dbo].[Prodotto] ([Id], [IdCategoria], [Nome], [Descrizione], [Prezzo], [Giacienza]) VALUES (67, 45, N'Nike', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed', 808.0000, 1294)
INSERT [dbo].[Prodotto] ([Id], [IdCategoria], [Nome], [Descrizione], [Prezzo], [Giacienza]) VALUES (68, 39, N'il piacere', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed', 1268.0000, 7790)
INSERT [dbo].[Prodotto] ([Id], [IdCategoria], [Nome], [Descrizione], [Prezzo], [Giacienza]) VALUES (69, 10, N'Nike', N'Lorem ipsum dolor sit amet,', 476.0000, 2168)
INSERT [dbo].[Prodotto] ([Id], [IdCategoria], [Nome], [Descrizione], [Prezzo], [Giacienza]) VALUES (70, 49, N'Nike', N'Lorem ipsum dolor sit', 1005.0000, 1213)
INSERT [dbo].[Prodotto] ([Id], [IdCategoria], [Nome], [Descrizione], [Prezzo], [Giacienza]) VALUES (71, 56, N'Ram', N'Lorem ipsum dolor sit amet, consectetuer adipiscing', 1205.0000, 317)
INSERT [dbo].[Prodotto] ([Id], [IdCategoria], [Nome], [Descrizione], [Prezzo], [Giacienza]) VALUES (72, 20, N'PS4', N'Lorem', 1906.0000, 7511)
INSERT [dbo].[Prodotto] ([Id], [IdCategoria], [Nome], [Descrizione], [Prezzo], [Giacienza]) VALUES (73, 20, N'Nike', N'Lorem ipsum dolor sit amet,', 831.0000, 6607)
INSERT [dbo].[Prodotto] ([Id], [IdCategoria], [Nome], [Descrizione], [Prezzo], [Giacienza]) VALUES (74, 40, N'Nike', N'Lorem ipsum dolor sit amet, consectetuer adipiscing', 1468.0000, 8609)
INSERT [dbo].[Prodotto] ([Id], [IdCategoria], [Nome], [Descrizione], [Prezzo], [Giacienza]) VALUES (75, 51, N'Xbox one', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', 878.0000, 1610)
INSERT [dbo].[Prodotto] ([Id], [IdCategoria], [Nome], [Descrizione], [Prezzo], [Giacienza]) VALUES (76, 14, N'Xbox one', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur', 1448.0000, 9189)
INSERT [dbo].[Prodotto] ([Id], [IdCategoria], [Nome], [Descrizione], [Prezzo], [Giacienza]) VALUES (77, 1, N'Ossi di Seppia', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', 298.0000, 88)
INSERT [dbo].[Prodotto] ([Id], [IdCategoria], [Nome], [Descrizione], [Prezzo], [Giacienza]) VALUES (78, 36, N'il piacere', N'Lorem ipsum dolor sit', 281.0000, 8518)
INSERT [dbo].[Prodotto] ([Id], [IdCategoria], [Nome], [Descrizione], [Prezzo], [Giacienza]) VALUES (79, 85, N'Processore', N'Lorem', 259.0000, 5414)
INSERT [dbo].[Prodotto] ([Id], [IdCategoria], [Nome], [Descrizione], [Prezzo], [Giacienza]) VALUES (80, 96, N'il piacere', N'Lorem ipsum dolor sit amet, consectetuer', 25.0000, 7155)
INSERT [dbo].[Prodotto] ([Id], [IdCategoria], [Nome], [Descrizione], [Prezzo], [Giacienza]) VALUES (81, 73, N'Xbox one', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed', 412.0000, 5621)
INSERT [dbo].[Prodotto] ([Id], [IdCategoria], [Nome], [Descrizione], [Prezzo], [Giacienza]) VALUES (82, 85, N'il piacere', N'Lorem', 782.0000, 1842)
INSERT [dbo].[Prodotto] ([Id], [IdCategoria], [Nome], [Descrizione], [Prezzo], [Giacienza]) VALUES (83, 67, N'PS4', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur', 1302.0000, 6050)
INSERT [dbo].[Prodotto] ([Id], [IdCategoria], [Nome], [Descrizione], [Prezzo], [Giacienza]) VALUES (84, 28, N'Processore', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', 1723.0000, 9305)
INSERT [dbo].[Prodotto] ([Id], [IdCategoria], [Nome], [Descrizione], [Prezzo], [Giacienza]) VALUES (85, 31, N'Ossi di Seppia', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur', 531.0000, 5542)
INSERT [dbo].[Prodotto] ([Id], [IdCategoria], [Nome], [Descrizione], [Prezzo], [Giacienza]) VALUES (86, 57, N'Nike', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur', 1964.0000, 3631)
INSERT [dbo].[Prodotto] ([Id], [IdCategoria], [Nome], [Descrizione], [Prezzo], [Giacienza]) VALUES (87, 15, N'Ram', N'Lorem ipsum dolor sit amet, consectetuer', 181.0000, 806)
INSERT [dbo].[Prodotto] ([Id], [IdCategoria], [Nome], [Descrizione], [Prezzo], [Giacienza]) VALUES (88, 87, N'Ram', N'Lorem ipsum dolor', 387.0000, 52)
INSERT [dbo].[Prodotto] ([Id], [IdCategoria], [Nome], [Descrizione], [Prezzo], [Giacienza]) VALUES (89, 43, N'Xbox one', N'Lorem ipsum dolor sit', 1739.0000, 3827)
INSERT [dbo].[Prodotto] ([Id], [IdCategoria], [Nome], [Descrizione], [Prezzo], [Giacienza]) VALUES (90, 16, N'Ossi di Seppia', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur', 938.0000, 9015)
INSERT [dbo].[Prodotto] ([Id], [IdCategoria], [Nome], [Descrizione], [Prezzo], [Giacienza]) VALUES (91, 77, N'Nike', N'Lorem ipsum dolor sit amet,', 1070.0000, 2386)
INSERT [dbo].[Prodotto] ([Id], [IdCategoria], [Nome], [Descrizione], [Prezzo], [Giacienza]) VALUES (92, 23, N'il piacere', N'Lorem ipsum dolor sit amet, consectetuer adipiscing', 660.0000, 8262)
INSERT [dbo].[Prodotto] ([Id], [IdCategoria], [Nome], [Descrizione], [Prezzo], [Giacienza]) VALUES (93, 16, N'Xbox one', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur', 704.0000, 3292)
INSERT [dbo].[Prodotto] ([Id], [IdCategoria], [Nome], [Descrizione], [Prezzo], [Giacienza]) VALUES (94, 95, N'Nike', N'Lorem ipsum dolor sit', 95.0000, 474)
INSERT [dbo].[Prodotto] ([Id], [IdCategoria], [Nome], [Descrizione], [Prezzo], [Giacienza]) VALUES (95, 28, N'PS4', N'Lorem ipsum dolor sit amet,', 1062.0000, 4934)
INSERT [dbo].[Prodotto] ([Id], [IdCategoria], [Nome], [Descrizione], [Prezzo], [Giacienza]) VALUES (96, 9, N'il piacere', N'Lorem ipsum dolor sit amet,', 1792.0000, 395)
INSERT [dbo].[Prodotto] ([Id], [IdCategoria], [Nome], [Descrizione], [Prezzo], [Giacienza]) VALUES (97, 96, N'Vestito Lungo', N'Lorem', 1259.0000, 4588)
INSERT [dbo].[Prodotto] ([Id], [IdCategoria], [Nome], [Descrizione], [Prezzo], [Giacienza]) VALUES (98, 6, N'Intel I7', N'Lorem ipsum dolor sit amet, consectetuer adipiscing', 216.0000, 3485)
INSERT [dbo].[Prodotto] ([Id], [IdCategoria], [Nome], [Descrizione], [Prezzo], [Giacienza]) VALUES (99, 24, N'Xbox one', N'Lorem ipsum', 1726.0000, 3694)
GO
INSERT [dbo].[Prodotto] ([Id], [IdCategoria], [Nome], [Descrizione], [Prezzo], [Giacienza]) VALUES (100, 3, N'Ram', N'Lorem ipsum dolor sit amet, consectetuer adipiscing', 813.0000, 8530)
SET IDENTITY_INSERT [dbo].[Prodotto] OFF
SET IDENTITY_INSERT [dbo].[Stato] ON 

INSERT [dbo].[Stato] ([Id], [Nome]) VALUES (1, N'In Viaggio')
INSERT [dbo].[Stato] ([Id], [Nome]) VALUES (2, N'Reso')
INSERT [dbo].[Stato] ([Id], [Nome]) VALUES (3, N'In Magazzino')
INSERT [dbo].[Stato] ([Id], [Nome]) VALUES (4, N'In Arrivo')
SET IDENTITY_INSERT [dbo].[Stato] OFF
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
