 /*Borrar tablas anteriores*/
 drop table if exists inscriptos;
 drop table if exists socios;
 drop table if exists profesores; 
 drop table if exists cursos;
/*creacion de tablas*/
 create table socios(
  documento char(8) not null,
  nombre varchar(40),
  domicilio varchar(30),
  primary key (documento)
 );
  create table profesores(
  documento char(8) not null,
  nombre varchar(40),
  domicilio varchar(30),
  primary key (documento)
 );
 create table cursos(
  numero integer auto_increment,
  deporte varchar(20),
  dia varchar(15),
  documentoprofesor char(8),
  primary key (numero)
 );

 create table inscriptos(
  documentosocio char(8) not null,
  numero integer not null,
  matricula char(1),
  primary key (documentosocio,numero)
 );
 /*Carga de valores*/
 insert into socios values('30000000','Fabian Fuentes','Caseros 987');
 insert into socios values('31111111','Gaston Garcia','Guemes 65');
 insert into socios values('32222222','Hector Huerta','Sucre 534');
 insert into socios values('33333333','Ines Irala','Bulnes 345');

 insert into profesores values('22222222','Ana Acosta','Avellaneda 231');
 insert into profesores values('23333333','Carlos Caseres','Colon 245');
 insert into profesores values('24444444','Daniel Duarte','Sarmiento 987');
 insert into profesores values('25555555','Esteban Lopez','Sucre 1204');
 
 insert into cursos(deporte,dia,documentoprofesor) 
  values('tenis','lunes','22222222');
 insert into cursos(deporte,dia,documentoprofesor) 
  values('tenis','martes','22222222');
 insert into cursos(deporte,dia,documentoprofesor) 
  values('natacion','miercoles','22222222');
 insert into cursos(deporte,dia,documentoprofesor) 
  values('natacion','jueves','23333333');
 insert into cursos(deporte,dia,documentoprofesor) 
  values('natacion','viernes','23333333');
 insert into cursos(deporte,dia,documentoprofesor) 
  values('futbol','sabado','24444444');
 insert into cursos(deporte,dia,documentoprofesor) 
  values('futbol','lunes','24444444');
 insert into cursos(deporte,dia,documentoprofesor) 
  values('basquet','martes','24444444');

 insert into inscriptos values('30000000',1,'s');
 insert into inscriptos values('30000000',3,'n');
 insert into inscriptos values('30000000',6,null);
 insert into inscriptos values('31111111',1,'s');
 insert into inscriptos values('31111111',4,'s');
 insert into inscriptos values('32222222',8,'s');
 
 /*borrar vista anterior*/
 drop view if exists vista_club; 
 
 /*crear nueva vista*/
 create view vista_club as
  select s.nombre as socio,
         s.documento as docsocio,
         s.domicilio as domsocio,
         c.deporte as deporte,
         dia,
         p.nombre as profesor, 
         matricula
   from socios as s
   join inscriptos as i on s.documento=i.documentosocio
   join cursos as c on i.numero=c.numero
   join profesores as p on c.documentoprofesor=p.documento;
   
   /*Mostramos la vista*/
    select * from vista_club;
    
    /*Consulta para ver socios inscriptos por deporte ordenado por cantidad*/
    select deporte,dia,count(socio) as cantidad
   from vista_club
   group by deporte,dia
   order by cantidad; 
   
   /*Socios que deben matricular*/
   select socio, 
        docsocio 
   from vista_club 
   where matricula <> 's';   
   
   /*Profesores asistentes al club por dia*/
	select distinct profesor,dia
   from vista_club;
   
   /*Socios que juegan tenis los lunes*/
   select socio from vista_club
  where deporte='tenis' and dia='lunes';
  
  /*borrar vista de inscriptos*/
  drop view if exists vista_incriptos; 
  
  /*Crear vista de inscriptos*/
 create view vista_inscriptos as
 
 /*Cantidad de inscriptos en curso por deporte y dia*/
  select deporte,dia,
   (select count(*)
    from inscriptos as i
    where i.numero=c.numero) as cantidad
  from cursos as c;
  
/*Visualizar la vista*/
select * from vista_inscriptos;  
