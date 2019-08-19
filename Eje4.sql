drop table if exists agenda;
create table agenda( nombre varchar(20), domicilio varchar(30),telefono varchar(11));
show tables;
insert into agenda (nombre,domicilio,telefono) values ('Alberto Mores','Colon 123','4234567');
insert into agenda (nombre,domicilio,telefono) values ('Juan Torres','Avellaneda 135','4458787');
select nombre, domicilio,telefono from agenda;
drop table if exists agenda;
drop table agenda
