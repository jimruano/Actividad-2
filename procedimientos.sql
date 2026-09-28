USE `empresa-retail-db`;

DELIMITER $$

-- 1. REPLACE
DROP PROCEDURE IF EXISTS sp_replace$$
CREATE PROCEDURE sp_replace()
BEGIN
    SELECT cli_correo, REPLACE(cli_correo, '.com', '.com.co') AS correo_modificado
    FROM cliente;
END$$

-- 2. REVERSE
DROP PROCEDURE IF EXISTS sp_reverse$$
CREATE PROCEDURE sp_reverse()
BEGIN
    SELECT cli_nombre, REVERSE(cli_nombre) AS nombre_invertido
    FROM cliente;
END$$

-- 3. RIGHT
DROP PROCEDURE IF EXISTS sp_right$$
CREATE PROCEDURE sp_right()
BEGIN
    SELECT cli_telefono, RIGHT(cli_telefono, 4) AS ultimos_4_digitos
    FROM cliente;
END$$

-- 4. SPACE
DROP PROCEDURE IF EXISTS sp_space$$
CREATE PROCEDURE sp_space()
BEGIN
    SELECT CONCAT(cli_nombre, SPACE(5), cli_apellido) AS nombre_espaciado
    FROM cliente;
END$$

-- 5. SUBSTR
DROP PROCEDURE IF EXISTS sp_substr$$
CREATE PROCEDURE sp_substr()
BEGIN
    SELECT cam_nombre, SUBSTR(cam_nombre, 1, 10) AS nombre_corto
    FROM campania;
END$$

-- 6. SUBSTRING
DROP PROCEDURE IF EXISTS sp_substring$$
CREATE PROCEDURE sp_substring()
BEGIN
    SELECT cam_nombre, SUBSTRING(cam_nombre, 5, 8) AS fragmento
    FROM campania;
END$$

-- 7. UPPER
DROP PROCEDURE IF EXISTS sp_upper$$
CREATE PROCEDURE sp_upper()
BEGIN
    SELECT cli_ciudad, UPPER(cli_ciudad) AS ciudad_mayus
    FROM cliente;
END$$

-- 8. CONCAT
DROP PROCEDURE IF EXISTS sp_concat$$
CREATE PROCEDURE sp_concat()
BEGIN
    SELECT CONCAT(cli_nombre, ' ', cli_apellido, ' - ', cli_ciudad) AS cliente_completo
    FROM cliente;
END$$

-- 9. FIELD
DROP PROCEDURE IF EXISTS sp_field$$
CREATE PROCEDURE sp_field()
BEGIN
    SELECT cli_ciudad, FIELD(cli_ciudad, 'Popayán', 'Cali', 'Medellín', 'Bogotá') AS posicion
    FROM cliente;
END$$

-- 10. FORMAT
DROP PROCEDURE IF EXISTS sp_format$$
CREATE PROCEDURE sp_format()
BEGIN
    SELECT cam_nombre, cam_presupuesto, FORMAT(cam_presupuesto, 2) AS presupuesto_formateado
    FROM campania;
END$$

-- 11. LCASE
DROP PROCEDURE IF EXISTS sp_lcase$$
CREATE PROCEDURE sp_lcase()
BEGIN
    SELECT cli_nombre, LCASE(cli_nombre) AS nombre_minus
    FROM cliente;
END$$

-- 12. LEFT
DROP PROCEDURE IF EXISTS sp_left$$
CREATE PROCEDURE sp_left()
BEGIN
    SELECT cli_correo, LEFT(cli_correo, 5) AS inicio_correo
    FROM cliente;
END$$

-- 13. LENGTH
DROP PROCEDURE IF EXISTS sp_length$$
CREATE PROCEDURE sp_length()
BEGIN
    SELECT cam_nombre, LENGTH(cam_nombre) AS longitud
    FROM campania;
END$$

-- 14. LOWER
DROP PROCEDURE IF EXISTS sp_lower$$
CREATE PROCEDURE sp_lower()
BEGIN
    SELECT can_nombre, LOWER(can_nombre) AS canal_minus
    FROM canal;
END$$

-- 15. REPEAT
DROP PROCEDURE IF EXISTS sp_repeat$$
CREATE PROCEDURE sp_repeat()
BEGIN
    SELECT cli_nombre, REPEAT('*', 3) AS separador, cli_apellido
    FROM cliente;
END$$

DELIMITER ;