CREATE DATABASE IF NOT EXISTS Barbacoa;
USE Barbacoa;

CREATE TABLE IF NOT EXISTS carne (
    id int AUTO_INCREMENT PRIMARY KEY,
    tipo varchar(100) NOT NULL,
    cantidad int NOT NULL,
    aporte int NOT NULL,
    pagado boolean NOT NULL,
    precio int NOT NULL
);

CREATE TABLE IF NOT EXISTS bebida (
    id int AUTO_INCREMENT PRIMARY KEY,
    tipo varchar(100) NOT NULL,
    cantidad decimal(10, 2) NOT NULL,
    aporte decimal(10, 2) NOT NULL,
    pagado boolean NOT NULL,
    precio decimal(10, 2) NOT NULL
);

CREATE TABLE IF NOT EXISTS actividad (
    id int AUTO_INCREMENT PRIMARY KEY,
    nombre varchar(100) NOT NULL,
    descripcion varchar(255) NOT NULL,
    hora_inici time NOT NULL,
    hora_fin time NOT NULL
);

CREATE table if not exists alumno (
    id int AUTO_INCREMENT PRIMARY KEY,
    nombre varchar(100) NOT NULL,
    id_actividad int,
    FOREIGN KEY (id_actividad) REFERENCES actividad(id)
    id_grupclasse int,
    FOREIGN KEY (id_grupclasse) REFERENCES grupclasse(id)
);

create table if not exists responsable (
    id int AUTO_INCREMENT PRIMARY KEY,
    id_alumno int,
    FOREIGN KEY (id_alumno) REFERENCES alumno(id)
);

create table IF NOT EXISTS tarea (
    id int AUTO_INCREMENT PRIMARY KEY,
    nombre varchar(100) NOT NULL,
    descripcion varchar(255) NOT NULL
);

create table if not exists responsable_tarea (
    id int AUTO_INCREMENT PRIMARY KEY,
    id_responsable int,
    id_tarea int,
    FOREIGN KEY (id_responsable) REFERENCES responsable(id),
    FOREIGN KEY (id_tarea) REFERENCES tarea(id)
);

create table if not exists parrilla (
    id int AUTO_INCREMENT PRIMARY KEY,
    estado boolean NOT NULL
);

create table if not exists turno (
    id int AUTO_INCREMENT PRIMARY KEY,
    nombre varchar(100) NOT NULL,
    hora_inici time NOT NULL,
    hora_fin time NOT NULL,
    id_parrilla int,
    FOREIGN KEY (id_parrilla) REFERENCES parrilla(id)
);

create table if not exists grupclasse (
    id int AUTO_INCREMENT PRIMARY KEY,
    letra varchar(5) NOT NULL,
    id_turno int,
    FOREIGN KEY (id_turno) REFERENCES turno(id),
    id_carne int,
    FOREIGN KEY (id_carne) REFERENCES carne(id),
    id_bebida int,
    FOREIGN KEY (id_bebida) REFERENCES bebida(id)
);


create table if not exists mesa (
    id int AUTO_INCREMENT PRIMARY KEY,
    capacidad int NOT NULL,
    ubicacion varchar(100) NOT NULL
);

create table if not exists assigacion_mesa (
    id int AUTO_INCREMENT PRIMARY KEY,
    id_grupclasse int,
    FOREIGN KEY (id_grupclasse) REFERENCES grupclasse(id),
    id_mesa int,
    FOREIGN KEY (id_mesa) REFERENCES mesa(id)
);