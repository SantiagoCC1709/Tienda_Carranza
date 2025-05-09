CREATE DATABASE IF NOT EXISTS tienda_mundo;
USE tienda_mundo;

CREATE TABLE IF NOT EXISTS t_usuarios (
  id_usuario    INT(11) AUTO_INCREMENT NOT NULL,
  nombre        VARCHAR(100) NOT NULL,
  apellido      VARCHAR(100) NOT NULL,
  email         VARCHAR(200) NOT NULL,
  password      VARCHAR(200) NOT NULL,
  rol           VARCHAR(20) NOT NULL,
  imagen        VARCHAR(250) NOT NULL,
  CONSTRAINT pk_usuario PRIMARY KEY (id_usuario),
  CONSTRAINT uq_email UNIQUE (email)
) ENGINE=InnoDB;

INSERT INTO t_usuarios (nombre, apellido, email, password, rol, imagen)
VALUES ('admin', 'admin', 'admin1@admin.com', 'contasena', 'admin', 'imagenes/admin.jpg');