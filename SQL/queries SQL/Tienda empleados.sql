USE zapateria;

CREATE TABLE if not exists empleados2 (
    id_empleado INT PRIMARY KEY,
    nombre VARCHAR(100),
    apellido VARCHAR(100),
    departamento VARCHAR(50),
    salario DECIMAL(10,2),
    fecha_contratacion DATE,
    ciudad VARCHAR(50)
);
SELECT *
FROM empleados2
WHERE departamento = 'Ventas';

SELECT *
FROM empleados2
WHERE (ciudad IN ('Madrid', 'Barcelona')) AND (salario > 30000)
ORDER BY salario DESC;

INSERT INTO empleados2 (id_empleado, nombre, apellido, departamento, salario, fecha_contratacion, ciudad) VALUES
(1, 'Juan', 'Pérez', 'Ventas', 28000.00, '2022-03-15', 'Madrid'),
(2, 'María', 'García', 'Marketing', 32000.00, '2021-08-20', 'Barcelona'),
(3, 'Carlos', 'López', 'IT', 45000.00, '2023-01-10', 'Madrid'),
(4, 'Ana', 'Rodríguez', 'Ventas', 25000.00, '2022-05-05', 'Valencia'),
(5, 'Pedro', 'Sánchez', 'RRHH', 30000.00, '2021-11-28', 'Barcelona'),
(6, 'Laura', 'Martínez', 'IT', 50000.00, '2023-04-01', 'Sevilla'),
(7, 'Javier', 'Fernández', 'Ventas', 38000.00, '2022-09-12', 'Madrid'),
(8, 'Sofía', 'Díaz', 'Marketing', 29000.00, '2021-06-18', 'Barcelona'),
(9, 'Miguel', 'Ruiz', 'IT', 42000.00, '2022-12-03', 'Zaragoza'),
(10, 'Elena', 'Gómez', 'Ventas', 31000.00, '2023-02-17', 'Valencia'),
(11, 'David', 'Torres', 'RRHH', 27000.00, '2021-04-08', 'Madrid'),
(12, 'Paula', 'Jiménez', 'Marketing', 35000.00, '2022-07-22', 'Barcelona'),
(13, 'Sergio', 'Martín', 'IT', 48000.00, '2023-03-05', 'Alicante'),
(14, 'Irene', 'López', 'Ventas', 26000.00, '2022-10-10', 'Barcelona'),
(15, 'Andrés', 'Sánchez', 'RRHH', 33000.00, '2021-09-01', 'Madrid');

SELECT *
FROM empleados2
WHERE (ciudad IN ('Madrid', 'Barcelona')) AND (salario > 30000)
ORDER BY salario DESC;

SELECT *
FROM empleados2
WHERE departamento = 'Ventas';
