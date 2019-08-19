create table articulos(codigo integer,nombre varchar(20),descripcion varchar(30),precio float, cantidad integer);
describe articulos;
insert into articulos (codigo, nombre, descripcion, precio,cantidad)
  values (1,'impresora','Epson Stylus C45',400.80,20);
 insert into articulos (codigo, nombre, descripcion, precio,cantidad)
  values (2,'impresora','Epson Stylus C85',500,30);
 insert into articulos (codigo, nombre, descripcion, precio,cantidad)
  values (3,'monitor','Samsung 14',800,10);
 insert into articulos (codigo, nombre, descripcion, precio,cantidad)
  values (4,'teclado','ingles Biswal',100,50);
select * from articulos;
select codigo, nombre, descripcion, precio,cantidad from articulos where nombre='impresora';
select * from articulos where precio>=500;
select nombre,descripcion,precio ,cantidad from articulos where cantidad<20;
select nombre,descripcion from articulos where precio<>100;
