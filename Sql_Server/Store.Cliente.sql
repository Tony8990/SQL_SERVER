USE [Store]
GO
SET IDENTITY_INSERT [dbo].[Cliente] ON 

INSERT [dbo].[Cliente] ([Id], [Nome], [Cognome], [RagioneSociale], [Telefono], [Fax], [Cellulare], [Email], [CodiceFiscale], [PartitaIva]) VALUES (1, N'Tony', N'Fava', NULL, N'327/7626072', NULL, N'327/7626072', N'tony.fava@edu.itspiemonte.it', N'FVATNY90A04H163T', NULL)
INSERT [dbo].[Cliente] ([Id], [Nome], [Cognome], [RagioneSociale], [Telefono], [Fax], [Cellulare], [Email], [CodiceFiscale], [PartitaIva]) VALUES (2, N'Simone', N'Fuoco', NULL, N'348/2244749', NULL, N'348/2244749', N'simone.fuoco@edu.itspiemonte.it', N'FCUSMN95C02C665W', NULL)
SET IDENTITY_INSERT [dbo].[Cliente] OFF
