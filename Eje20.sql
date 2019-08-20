drop table if exits peliculas;
create table peiculas( codigo int unsigned auto_increment, titulo varchar(50) NOT NULL, actor varchar(20), duracion int unsigned, primary key (codigo) );
insert into peliculas (titulo,actor,duracion) values('Mision imposible','Tom Cruise',120);
insert into peliculas (codigo,duracion) values(5,90); //no pone el codigo
insert into peliculas (titulo,actor) ('Harry Potter y la piedra filosofal','Daniel R.');
insert into peliculas (titulo,actor,duracion) ('Harry Potter y la piedra filosofal','Daniel R.',120);
select * from peliculas;
