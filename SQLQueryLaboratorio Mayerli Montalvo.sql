create database NombreApellidoAlumno;
use NombreApellidoAlumno

create table productos(
id_productos int primary key identity,
NombreProducto varchar(50),
Precio money,
descripcionProducto varchar(50)
);
INSERT INTO productos VALUES( 'Madera', 40,'Amarillo' );
INSERT INTO productos VALUES( 'Clavos', 25, 'grandes');
INSERT INTO productos VALUES( 'Alambre', 2, 'Delgado');
INSERT INTO productos VALUES( 'Martillo',10, 'negro');
INSERT INTO productos  VALUES( 'Lamina', 4, 'Rojo');
INSERT INTO productos VALUES( 'Tenaza', 6, 'verde');
INSERT INTO productos VALUES( 'Aluminio', 6, 'Gris');
INSERT INTO productos VALUES( 'Lamina', 9, 'Amarillo');
INSERT INTO productos VALUES( 'Tenaza grande', 10,'Azul');
INSERT INTO productos VALUES( 'Metal', 9, 'Plateado');

/*drop table productos*/
select * from productos;


create table Ventas(
id_ventas int primary key identity ,
id_productos  integer foreign key (id_productos) references productos(id_productos), 

);
INSERT INTO Ventas VALUES(1);
INSERT INTO Ventas VALUES(2 );
INSERT INTO Ventas VALUES(3);
INSERT INTO Ventas VALUES(4);
INSERT INTO Ventas VALUES(5);
select* from Ventas
/*drop table Ventas*/
/*drop table Clientes*/

create table Clientes(
id_clientes int primary key identity ,
nombre varchar(50),
id_productos  integer foreign key (id_productos) references productos(id_productos), 

);
INSERT INTO Clientes VALUES('Mayerli',1);
INSERT INTO Clientes VALUES('Marbely',2 );
INSERT INTO Clientes VALUES('Damaris',3);
INSERT INTO Clientes VALUES('Azucena',4);
INSERT INTO Clientes VALUES('Judith',5);
select* from Clientes

create table Vendedor(
codigo int primary key identity,
Nombre varchar(50),
Apellido varchar(50),

id_productos  integer foreign key (id_productos) references productos(id_productos), 
codigo_cliente  integer foreign key (codigo_cliente) references Clientes(id_clientes), 
);
/*drop table Vendedor*/
INSERT INTO Vendedor VALUES('Maye','Montalvo',1,1);
INSERT INTO Vendedor VALUES('Marbely','Monterrosa',2,2);
INSERT INTO Vendedor VALUES('Damaris','Martinez',3,3);
select* from Vendedor












