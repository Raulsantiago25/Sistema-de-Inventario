CREATE USER 'admin'@'localhost' IDENTIFIED BY 'admin1';
CREATE USER 'empleado'@'localhost' IDENTIFIED BY 'empleado1';
CREATE USER 'consulta'@'localhost' IDENTIFIED BY 'consulta1';
GRANT ALL PRIVILEGES ON tienda.* TO 'admin'@'localhost';

GRANT SELECT, INSERT, UPDATE ON tienda.* TO 'empleado'@'localhost';

GRANT SELECT ON tienda.* TO 'consulta'@'localhost';
FLUSH PRIVILEGES;