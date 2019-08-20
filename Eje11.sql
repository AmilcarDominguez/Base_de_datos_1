drop table if exists libros;
create table libros(codigo integer,titulo varchar(20),autor varchar(30),editorial varchar(15),primary key(codigo));

insert into libros (codigo,titulo,autor,editorial) values ( 1,'El aleph','Borges','Planeta');
insert into libros (codigo,titulo,autor,editorial) values ( 2,'Martin Fierro','Jose Hernandez','Emece');
insert into libros (codigo,titulo,autor,editorial) values ( 3,'Aprenda PHP','Mario Molina','Emece');
insert into libros (codigo,titulo,autor,editorial) values ( 4,'Cervantes','Borges','Paidos');
insert into libros (codigo,titulo,autor,editorial) values ( 5,'Matematica estas ahi','Paenza','Paidos');
select * from libros;
insert into libros (codigo,titulo,autor,editorial) values ( 6,'Matematica estas ahi','Paenza','Paidos');
insert into libros (codigo,titulo,autor,editorial) values ( 7,'Matematica estas ahi','Paenza','Paidos');
insert into libros (codigo,titulo,autor,editorial) values ( 2,'Martin Fierro','Jose Hernandez','Emece');
