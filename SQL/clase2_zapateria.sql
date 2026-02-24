USE zapateria;

ALTER TABLE zapatillas
	ADD COLUMN marca VARCHAR(45) NOT NULL,
    ADD COLUMN talla INT NOT NULL;
    
ALTER TABLE empleados
	MODIFY COLUMN salario 	DECIMAL(10,2);
    
ALTER TABLE clientes
	DROP COLUMN pais;
    
ALTER TABLE facturas
	ADD COLUMN total_facturas DECIMAL(10,2) NOT NULL;
    
INSERT INTO zapatillas (modelo,color,marca,talla)
		VALUES ("xqyun", "negro", "nike", 42),
			("uopmn", "rosa", "nike", 39),
            ("opnyt", "verde", "adidas", 35);
            
INSERT INTO empleados (nombre,tienda,salario,fecha_incorporacion)
    VALUES ("laura", "alcobendas", 25987, "2010-09-03"),
		("maria", "sevilla", NULL, "2001-04-11"),
        ("ester", "oviedo", 30165.68, "2000-11-29");
        
INSERT INTO clientes (id_clientes, nombre,numero_telefono,email,direccion,ciudad,provincia,codigo_postal)
	VALUES (1, "Monica", 1234567289, "monica@email.com", "Calle Felicidad", "Móstoles", "Madrid", "28176"),
		(2, "Lorena", 289345678, "lorena@email.com", "Calle Alegria", "Barcelona", "Barcelona", "12346"),
        (3, "Carmen", 298463759, "carmen@email.com", "Calle del Color", "Vigo", "Pontevedra", "234563");
        
INSERT INTO facturas (numero_factura,fecha,zapatillas,empleado,cliente,total_facturas)
	VALUES ("123", "2001-12-11", 1, 6, 1, 54.98),
		("1234", "2005-05-23", 1, 4, 3, 89.91),
        ("12345", "2015-09-18", 2, 5, 3, 76.23);
        

UPDATE zapatillas
	SET	color = "amarillas"
    WHERE id_zapatillas = 2;
    
UPDATE empleados
	SET tienda = "coruña"
    WHERE id_empleado = 4;

	