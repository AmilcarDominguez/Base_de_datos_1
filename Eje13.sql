 drop table if exists  medicamentos;
create table medicamentos( codigo integer auto_increment, nombre varchar(20),laboratorio varchar(20),precio float,
cantidad integer,primary key (codigo));
insert into medicamentos (nombre, laboratorio,precio,cantidad)
   values('Sertal','Roche',5.2,100);
 insert into medicamentos (nombre, laboratorio,precio,cantidad)
  values('Buscapina','Roche',4.10,200);
 insert into medicamentos (nombre, laboratorio,precio,cantidad)
  values('Amoxidal 500','Bayer',15.60,100);
 delete from medicamentos;
 insert into medicamentos (nombre, laboratorio,precio,cantidad)
   values('Sertal','Roche',5.2,100);
 insert into medicamentos (nombre, laboratorio,precio,cantidad)
  values('Amoxidal 500','Bayer',15.60,100);
 select * from medicamentos;
 truncate table medicamentos;
insert into medicamentos (nombre, laboratorio,precio,cantidad)
  values('Buscapina','Roche',4.10,200);
describe medicamentos;
