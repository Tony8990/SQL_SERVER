use Istat
go
insert into Provincia(CodiceProvincia,IdRegione,Denominazione,Sigla)
Select distinct [Codice provincia] as codiceprovincia,[Codice regione] as Idregione,[Denominazione provincia] as Denominazione,[Sigla automobilistica] as sigla from COD_REG_PROV$ 
where [Codice regione] is not null 
