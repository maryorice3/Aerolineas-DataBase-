drop database if exists aerolinea; 
create database if not exists aerolinea;

-- Usar la base de datos
use aerolinea;

-- Crear la tabla vuelos
CREATE TABLE vuelos(
	nro int primary key auto_increment,
    horaSalida int,
    fecha date,
    horaLlegada int,
    ciudad varchar(50),
    precio double
);

-- Crear la tabla personas
create table personas (
	pasaporte int primary key,
    nombre varchar(50),
    apellido varchar(50),
    tel int,
    email varchar(50)
);

-- Crear la tabla pasajeros
CREATE TABLE pasajeros(
	pasaporte int PRIMARY KEY,
	nro_vuelo int
);

-- Crear la tabla personal
CREATE TABLE personal(
	nroLegajo int primary key,
    nombre varchar(25),
    areaAsignada enum('azafata','soporte','limpieza','piloto'),
	nro_vuelo int
);

-- Crear la tabla aviones
CREATE TABLE aviones(
	nro int primary key,
    modelo varchar(50),
    fabricante varchar(50),
    capacidad int,
    pista varchar(12),
    nro_vuelo int
);

-- Crear la tabla pilotos
create table pilotos(
	nroLegajo int primary key,
    nro_avion int
);

-- Crear la tabla piloto_personal
create table piloto_personal(
	id int primary key auto_increment,
    nroLegajo_piloto int,
    nroLegajo_personal int
);

-- alteramos las tablas y las relacionamos
alter table pasajeros 
add foreign key (nro_vuelo)
references vuelos (nro);

alter table personal 
add foreign key (nro_vuelo)
references vuelos (nro);

alter table aviones 
add foreign key (nro_vuelo)
references vuelos (nro);

alter table pilotos 
add foreign key (nro_avion)
references aviones (nro);

alter table piloto_personal 
add foreign key (nroLegajo_piloto)
references pilotos (nroLegajo);

alter table piloto_personal 
add foreign key (nroLegajo_personal)
references personal (nroLegajo);

alter table personas 
add foreign key (pasaporte)
references pasajeros (pasaporte);

-- renombramos la tabla
ALTER TABLE piloto_personal
RENAME pilotos_personal;

SELECT * FROM pilotos_personal;

-- alteramos las tablas, cambiamos el nombre de la columna y el tipo de dato
ALTER TABLE pasajeros
CHANGE pasaporte dni INT;

-- alteramos las tablas y agregamos una columna
ALTER TABLE vuelos
ADD COLUMN columnademas VARCHAR(50);

-- alteramos la tabla y borramos una columna
ALTER TABLE vuelos 
DROP COLUMN columnademas;

-- alteramos las tablas y modificamos la columna
ALTER TABLE aviones 
MODIFY column modelo VARCHAR(25);

-- alteramos las tablas y modificamos la columna
alter table pilotos_personal
modify column id int;

-- alteramos las tablas y eliminamos la PK
alter table pilotos_personal
drop primary KEY;