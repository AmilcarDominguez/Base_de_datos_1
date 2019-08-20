create table pedidos( nro_pedido, nombre, tipo, precio, cantidad, domicilio);
drop table if exists pedidos;
create table pedidos( nro_pedido tinyint unsigned auto_incremet; nombre varchar(8); tipo varchar(20); precio decimal(2,1); cantidad tinyint unsigned; domicilio varchar(50); primary key (nro_pedido) );
