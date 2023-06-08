create table ventas(
vent_ID int identity(1,1) not null primary key,
vent_prod_ID int not null,
vent_facturas_ID int not null,
vent_cantidad int not null,
)

create table productos(
prod_ID int identity(1,1) not null primary key,
prod_detalles varchar(1000) not null,
prod_proveedor_ID int not null,
)

create table facturas(
fact_ID int identity(1,1) not null primary key,
fact_fecha varchar(1000) not null,
fact_clientes_ID int not null,
)

create table clientes(
clie_ID int identity(1,1) not null primary key,
clie_nombre varchar(1000) not null,
clie_direccion  varchar(1000) not null,
clie_telefono  varchar(1000) not null,
)

insert into clientes (clie_nombre,clie_telefono,clie_direccion) values ('Mateo','3446 394573','Barcelona'), ('Martin','3446 3465849','Moreno'), ('Gustavo','3446 763927','Almeida'), ('Lucas','3446 458218','Gran Hermano')

insert into facturas(fact_fecha,fact_clientes_ID) values ('25/8/19',1), ('26/9/21',2), ('15/1/23',3), ('30/3/23',4)
select * from clientes