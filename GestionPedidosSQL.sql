create database pedidos;
use pedidos;
create table cliente
(id int primary key,
nombre varchar(25), 
direccion varchar(25), 
telefono varchar(25), 
email varchar(50), 
usurio varchar(25), contraseña varchar(25),
es_admin boolean);
create table cuenta
(No_cuenta int primary key,
id int, foreign key
(id) references cliente
(id), tipo_cuenta varchar(25),
saldo_cuenta double);
create table producto (id int primary key, nombre varchar(25),stok int, precio double);
insert into cliente values 
(1, 'Sebastian Palma', 'cra 71 # 91-57', 3001231212, 'sebastian.palma@pca.edu.co', 'sebasp','123', true),
(4, 'Reinaldo Peña', 'cl 86a # 22-57', 3003212112, 'reinaldo.penar@pca.edu.co', 'reinaldop','321', true),
(2, 'Carlos Perez', 'cra 38 # 77-57', 3001231234, 'carlos.perez@pca.edu.co', 'carlosp','123', false),
(3, 'Camila Polo', 'cra 42 # 80-57', 3003214321, 'camila.polo@pca.edu.co', 'camilap','123', false);
insert into cuenta
(No_cuenta,id,tipo_cuenta, saldo_cuenta)values
(12345, 2, 'Ahorro', 1000000),
(16390, 3, 'Credito', 2000000);
insert into producto values
(10, 'tomate',50, 500),
(11, 'arroz',150, 2000),
(12, 'carne de res',50, 15000),
(14, 'coca cola',30, 5000),
(15, 'pan',80, 1000);
select * from cliente;
select * from cuenta;
select * from producto;