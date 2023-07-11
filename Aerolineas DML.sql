-- Insertar datos en la tabla vuelo
insert into vuelos (horaSalida, fecha, horaLlegada, ciudad,precio) 
values (1330, '2023-04-18', 1530, 'MDQ', 20000.00);
insert into vuelos (horaSalida, fecha, horaLlegada, ciudad,precio) 
values (0920, '2023-04-18', 1130, 'MDQ', 18000.00);
insert into vuelos (horaSalida, fecha, horaLlegada, ciudad,precio) 
values (1520, '2023-04-10', 1730, 'Bariloche', 23000.00);
insert into vuelos (horaSalida, fecha, horaLlegada, ciudad,precio) 
values (1600, '2023-05-15', 2000, 'chile', 25000.00);
insert into vuelos (horaSalida, fecha, horaLlegada, ciudad,precio) 
values (1400, '2023-06-01', 1700, 'colombia', 27000.50);
insert into vuelos (horaSalida, fecha, horaLlegada, ciudad,precio) 
values (1500, '2023-06-04', 1800, 'venezuela', 28000.50);

-- Insertar datos en la tabla pasajeros
insert into pasajeros (pasaporte, nro_vuelo) values (23456984, 1);
insert into pasajeros (pasaporte, nro_vuelo) values (34562654, 3);
insert into pasajeros (pasaporte, nro_vuelo) values (24449875, 2);
insert into pasajeros (pasaporte, nro_vuelo) values (26547896, 5);
insert into pasajeros (pasaporte, nro_vuelo) values (24597991, 5);
insert into pasajeros (pasaporte, nro_vuelo) values (26541234, 4);
insert into pasajeros (pasaporte, nro_vuelo) values (85545656, null);
insert into pasajeros (pasaporte, nro_vuelo) values (88554543, null);
insert into pasajeros (pasaporte, nro_vuelo) values (86743524, null);

-- Insertar datos en la tabla aviones
insert into aviones (nro, modelo, fabricante, capacidad, pista, nro_vuelo) 
values (12, '420', 'PAMPA', 300, 'A2', 3);
insert into aviones (nro, modelo, fabricante, capacidad, pista, nro_vuelo) 
values (08, '320', 'AeroSA', 400, 'A1', 1);
insert into aviones (nro, modelo, fabricante, capacidad, pista, nro_vuelo) 
values (05, '120', 'PAMPA', 300, 'C2', 2);

-- Insertar datos en la tabla personal
insert into personal (nroLegajo, nombre, areaAsignada, nro_vuelo) 
values (35465468, 'Adrian', 'piloto', 1);
insert into personal (nroLegajo, nombre, areaAsignada, nro_vuelo) 
values (54826547, 'Walter', 'piloto', 3);
insert into personal (nroLegajo, nombre, areaAsignada, nro_vuelo) 
values (87965248, 'Daniela', 'piloto', 2);

-- Insertar datos en la tabla pilotos
insert into pilotos (nroLegajo, nro_avion) VALUES (35465468, 12);
insert into pilotos (nroLegajo, nro_avion) VALUES (54826547, 05);
insert into pilotos (nroLegajo, nro_avion) VALUES (87965248, 08);

-- Insertar datos en la tabla piloto_personal
insert into piloto_personal (nroLegajo_piloto, nroLegajo_personal)
values (35465468,35465468);
insert into piloto_personal (nroLegajo_piloto, nroLegajo_personal)
values (54826547,54826547);
insert into piloto_personal (nroLegajo_piloto, nroLegajo_personal)
values (87965248,87965248);

-- Insertar datos en la tabla personas
INSERT INTO `aerolinea`.`personas` (`pasaporte`, `nombre`, `apellido`, `tel`, `email`) VALUES ('23456984', 'juanito', 'perez', '2058901', 'lolo@gmail.com');
INSERT INTO `aerolinea`.`personas` (`pasaporte`, `nombre`, `apellido`, `tel`, `email`) VALUES ('34562654', 'Carlos', 'Gonzales', '2645326225', 'carlitos@gmail.com');
INSERT INTO `aerolinea`.`personas` (`pasaporte`, `nombre`, `apellido`, `tel`, `email`) VALUES ('24449875', 'Jeronimo', 'Ledezma', '114534623', 'Jero@gmail.com');
INSERT INTO `aerolinea`.`personas` (`pasaporte`, `nombre`, `apellido`, `tel`, `email`) VALUES ('26547896', 'Sebastian', 'Perez', '114532345', 'SebaP@gmail.com');
INSERT INTO `aerolinea`.`personas` (`pasaporte`, `nombre`, `apellido`, `tel`, `email`) VALUES ('85545656', 'Brenda', 'Muro', '112346342', 'brenn@gmail.com');
INSERT INTO `aerolinea`.`personas` (`pasaporte`, `nombre`, `apellido`, `tel`, `email`) VALUES ('88554543', 'Leila', 'Mendez', '1145324563', 'leilaM@gmail.com');
INSERT INTO `aerolinea`.`personas` (`pasaporte`, `nombre`, `apellido`, `tel`, `email`) VALUES ('24597991', 'Juan', 'Mendez', '445454545', 'juanM@gmail.com');
INSERT INTO `aerolinea`.`personas` (`pasaporte`, `nombre`, `apellido`, `tel`, `email`) VALUES ('86743524', 'Jerine', 'Morales', '114574342', 'Jeri@gmail.com');
INSERT INTO `aerolinea`.`personas` (`pasaporte`, `nombre`, `apellido`, `tel`, `email`) VALUES ('26541234', 'Agustin', 'Morales', '123456489', 'Agustin@gmail.com');

-- Actualizamos el valor de campos
update personal set nombre = "Juan" where nroLegajo = 35465468;
update aviones set fabricante = "Embraer" where nro = 08;