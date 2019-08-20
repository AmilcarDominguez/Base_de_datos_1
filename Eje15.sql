drop table peliculas if exists;
create table peliculas(codigo integer unsigned auto_increment,titulo varchar(40) not null,actor varchar(20),duracion integer unsigned, primary key (codigo) );
describe peliculas;
