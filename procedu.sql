CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_movement`(IN sp_id_type_movements INT, IN sp_id_institution INT, IN sp_value FLOAT, IN sp_description VARCHAR(255), IN sp_date_movement DATE)
BEGIN
	INSERT INTO financial_movements (id_type_movements, id_institution, `value`, `description`,  date_movement) VALUES (sp_id_type_movements, sp_id_institution, sp_value, sp_description, sp_date_movement);
END