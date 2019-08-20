drop table medicamentos if exists;
create table medicamentos(codigo integer auto_increment,nombre varchar(20),laboratorio varchar(20),precio float,
cantidad integer,primary key (codigo));
describe medicamentos;
insert into medicamentos (nombre, laboratorio,precio,cantidad)
   values('Sertal','Roche',5.2,100);
 insert into medicamentos (nombre, laboratorio,precio,cantidad)
  values('Buscapina','Roche',4.10,200);
 insert into medicamentos (nombre, laboratorio,precio,cantidad)
  values('Amoxidal 500','Bayer',15.60,100);
 select codigo,nombre,laboratorio,precio,cantidad
  from medicamentos;
insert into medicamentos (codigo,nombre, laboratorio,precio,cantidad)
   values('2','Sertal','Roche',5.2,100);
 insert into medicamentos (codigo,nombre, laboratorio,precio,cantidad)
  values(12,'Paracetamol 500','Bago',1.90,200);
insert into medicamentos (nombre, laboratorio,precio,cantidad)
  values('Bayaspirina','Bayer',2.10,150); 
