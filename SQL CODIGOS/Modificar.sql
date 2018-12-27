create database modificar

use modificar

create table producto(
clave_prod int,
nom_prod varchar(20),
precio float,
constraint pk_cp primary key (clave_prod))

create table cliente(
clave_clie int,
nom_clie varchar(20),
constraint pk_cc primary key (clave_clie))

create table nota(
folio int,
clave_prod1 int,
clave_clie1 int,
cant int,
subtot float,
constraint fk_cp1 foreign key (clave_prod1) references producto (clave_prod),
constraint fk_cc1 foreign key (clave_clie1) references cliente (clave_clie))

insert into producto values (1,'papas',7)
insert into producto values (2,'refresco',9)

insert into cliente values (1,'ana')
insert into cliente values (2,'sergio')

insert into nota values (1,1,1,4,null)
insert into nota values (2,2,2,1,null)

select * from cliente

--Cambia todos los datos del mismo campo
update cliente
set nom_clie='laura'

--Cambia datos mas especifico
update cliente
set nom_clie='sergio'
where clave_clie=2

select * from nota

--Cambia un dato con calculo entre tablas
update nota
set subtot=cant*precio
from nota inner join producto on producto.clave_prod=nota.clave_prod1

--Elimina todos los registros de una tabla
delete from nota

--Elimina un registros de una tabla
delete from nota
where subtot=9 and folio=2

--Elimina Tabla y registros
drop table cliente

--Elimina una base de datos
drop database modificar
