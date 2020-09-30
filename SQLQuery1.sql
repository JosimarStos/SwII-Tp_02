drop database porto;

create database porto;
go
use porto;
go

create table BLs(
	BLId int not null identity,
	Number int,
	Consignee varchar(60),
	Ship varchar(60),
	constraint PK_bl primary key(BLId)
);

create table Containers(
	ContainerId int not null identity,
	Number int,
	Type varchar(60),
	Size varchar(20),
	constraint PK_container	primary key (ContainerId),
	
	BLId int,
	constraint FK_ibBl	FOREIGN KEY (BLId) REFERENCES bls(BLId)
);

/* ====  Consulta  ==== */
select * from bls;
select * from containers;

/* === Deletando dados das Tabelas ===*/
delete containers where ContainerId = 1; 
delete Bls where BLId = 1;