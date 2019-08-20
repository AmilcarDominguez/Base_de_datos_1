drop if exists autos; 
create table autos( marca varchar(15), modelo year, dueño varchar(30), precio decimal (8,2) unsigned );
insert into autos(marca,modelo,dueño,precio) values('Fiat 128','1970','Juan Lopez',50000);
insert into autos(marca,modelo,dueño,precio) values('Renault 11','1990','Juan Lopez',80000);
insert into autos(marca,modelo,dueño,precio) values('Fiat 128','1971','Ana Ferreyra',51000);
insert into autos(marca,modelo,dueño,precio) values('Peugeot 505','1998','Luis Luque',99000);
insert into autos(marca,modelo,dueño,precio) values('Peugeot 505','1997','Carola Perez',85000);
select * from autos where modelo<1995;
select marca,modelo from autos where modelo<>1970;
insert into autos(marca,modelo,dueño,precio) values('Peugeot 505',1995,'Carlos Lopez',88000); //Error 
