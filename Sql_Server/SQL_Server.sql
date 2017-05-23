use [Store]
go

CREATE TABLE Categoria(
Id int PRIMARY KEY IDENTITY(1,1),
Nome varchar(50) NOT NULL,
Descrizione varchar(200) NOT NULL
)
GO

CREATE TABLE Prodotto(
Id int PRIMARY KEY IDENTITY(1,1),
Nome varchar(50) NOT NULL,
Descrizione varchar(200) NOT NULL,
Prezzo float NOT NULL,
Giacienza int NOT NULL,
IdCategoria int NOT NULL,
FOREIGN KEY(IdCategoria) REFERENCES Categoria(Id)
)
GO

CREATE TABLE Cliente(
Id int PRIMARY KEY IDENTITY(1,1),
Nome varchar(50) NOT NULL,
Cognome varchar(50) NOT NULL,
RagioneSociale varchar(50),
CodiceFiscale varchar(20) NOT NULL,
PartitaIva varchar(30),
Email varchar(50) NOT NULL,
Telefono varchar(30) NOT NULL
)
GO

CREATE TABLE Indirizzo(
Id int PRIMARY KEY IDENTITY(1,1),
Via varchar(80) NOT NULL,
Citta varchar(80) NOT NULL,
Provincia varchar(2) NOT NULL,
Paese varchar(50) NOT NULL,
IdCliente int NOT NULL,
Fattura int NOT NULL,/*bool*/
Spedizione int NOT NULL,/*bool*/
FOREIGN KEY(IdCliente) REFERENCES Cliente(Id)
)
GO

CREATE TABLE Ordine(
Id int PRIMARY KEY IDENTITY(1,1),
Data datetime NOT NULL,
IdCliente int NOT NULL,
FOREIGN KEY(IdCliente) REFERENCES Cliente(Id)
)
GO

CREATE TABLE Stato(
Id int PRIMARY KEY IDENTITY(1,1),
Nome varchar(30) NOT NULL,

)
GO

CREATE TABLE DettaglioOrdine(
IdProdotto int,
IdOrdine int,
Quantita int NOT NULL,
PRIMARY KEY(IdProdotto, IdOrdine),
FOREIGN KEY(IdProdotto) REFERENCES Prodotto(Id),
FOREIGN KEY(IdOrdine) REFERENCES Ordine(Id)
)
GO
