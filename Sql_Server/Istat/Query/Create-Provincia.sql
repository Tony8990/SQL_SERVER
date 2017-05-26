USE [Istat]
GO

/****** Object:  Table [dbo].[Provincia]    Script Date: 25/05/2017 17:46:02 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Provincia](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CodiceProvincia] [varchar](50) NULL,
	[IdRegione] [int] NOT NULL,
	[Denominazione] [varchar](200) NOT NULL,
	[Sigla] [char](2) NOT NULL,
 CONSTRAINT [PK_Provincia] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO


