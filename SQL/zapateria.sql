CREATE SCHEMA zapateria;

USE zapateria;

CREATE TABLE zapatillas (
id_zapatillas INT AUTO_INCREMENT,
modelo VARCHAR(45) NOT NULL,
color VARCHAR(45) NOT NULL, 
PRIMARY KEY (id_zapatillas)
);

CREATE TABLE clientes (
id_clientes INT AUTO_INCREMENT,
nombre VARCHAR(45) NOT NULL,
numero_telefono INT NOT NULL,
email VARCHAR(45) NOT NULL UNIQUE,
direccion VARCHAR(45) NOT NULL,
ciudad VARCHAR(45) NOT NULL,
provincia VARCHAR(45) NOT NULL,
pais VARCHAR(45) NOT NULL,
codigo_postal VARCHAR(45) NOT NULL, 
PRIMARY KEY (id_clientes)
);

CREATE TABLE empleados (
id_empleado INT AUTO_INCREMENT, 
nombre VARCHAR(45) NOT NULL,
tienda VARCHAR(45) NOT NULL,
salario INT,
fecha_incorporacion DATE NOT NULL,
PRIMARY KEY (id_empleado)
);


CREATE TABLE facturas (
id_factura INT AUTO_INCREMENT,
numero_factura VARCHAR(45) NOT NULL,
fecha DATE NOT NULL,
zapatillas INT, 
empleado INT,
cliente INT, 
	PRIMARY KEY (id_factura),
    CONSTRAINT fk_zapatillas_factura
		FOREIGN KEY (zapatillas)
		REFERENCES zapatillas (id_zapatillas),
    CONSTRAINT fk_empleados_factura
		FOREIGN KEY (empleado)
		REFERENCES empleados (id_empleado),
	CONSTRAINT fk_cliente_factura
		FOREIGN KEY (cliente)
		REFERENCES clientes (id_clientes)
);

CREATE TABLE clientes2 (
    id_cliente INT AUTO_INCREMENT,
    nombre VARCHAR(45),
    email VARCHAR(45) UNIQUE,
    fecha_registro DATE,
    edad INT,
    saldo DECIMAL(10,2) DEFAULT 0,
    PRIMARY KEY (id_cliente),
    CONSTRAINT ck_edad
		CHECK (edad > 18)
);

/*CREATE TABLE clientes (
    id_cliente INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    fecha_registro DATE DEFAULT (CURDATE()),
    edad INT CHECK (edad > 18),
    saldo DECIMAL(10,2) DEFAULT 0
);*/
-- mejor forma de hacerlo