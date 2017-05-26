use Istat
go
insert into Regione(CodiceRegione,IdRipartizioneGeografica,Denominazione)
Select distinct [Codice regione] as Codiceregione,[Codice ripartizione] as IdRipartizioneGeografica,[Denominazione regione] as Denominazione from COD_REG_PROV$ 
where [Codice regione] is not null 
