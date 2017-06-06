use [ConsorzioVinicolo]
go

--Query A Modifica Dati di una certa Tabella--
/*
Update Azienda Set Titolare='Pippo Peppe'
where Id=1000;
go
*/
--Modifica Di una Certa Tipologia Di Vino--
/*
Update Produzione Set TipologiaVino='Chardoney' where id=1;
go 
*/
--Eliminare i Dati Di una Certa Tabella--
/*
Delete from Azienda where Titolare='Pippo peppe';
go
*/
/*
Query Visualizzare numero di Bottiglie prodotte da 
Da ciascuna Azienda tra due date fornite
*/

Select a.nome,SUM(p.BottiglieProdotte) as 'Numero bottiglie Prodotte' from 
Produzione p inner join Azienda a on
p.IdAzienda=a.Id where p.DataProduzione between '2017-05-01' and '2017-12-01'
group by a.nome
go

/*
Visualizzare Media Di uva Lavorata Giornamente Dalle Aziende 
nell'anno corrente divise per regione
*/
/*
Select re.Denominazione,AVG(p.UvaLavorata)as 'Quantita Uva Lavorata'
from Produzione p inner join Azienda az
on p.IdAzienda=az.Id inner join Comune c
on az.IdComune=c.Id inner join Provincia pr
on c.IdProvincia=pr.Id inner join Regione re
on re.Id=pr.IdRegione 
where YEAR(Data)=2016
group by re.Denominazione;
go
*/
/*
Visualizzare i Dati dell'azienda che ha venduto 
il maggior numero di bottiglie di cabernet 
di origine controllata di una data annata
*/

Select top (1) a.nome,COUNT(*)as 'Bottiglie'
from Produzione p inner join Bottiglia b on
p.Id=b.IdProduzione inner join Azienda a on 
a.Id=p.IdAzienda
where p.TipologiaVino='Cabernet'and b.Annata=2011 and b.Denominazione like
'%DOC%'
group by a.Nome

/*
Visualizza l'elenco delle aziende vinicole che in un certo periodo 
hanno venduto meno di 1000 bottiglie di vino da tavola
*/
/*
Select a.Nome,COUNT(*) as 'Bottiglie'
from Azienda a inner join Produzione p
on p.IdAzienda=a.Id inner join Bottiglia b on
b.IdProduzione=p.Id
where b.DataVendita between '2012-06-01' and '2016-10-01' and b.Denominazione like '%VDT%'
group by a.Nome having COUNT(*)<1000
*/

go
