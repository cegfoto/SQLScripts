CREATE PROCEDURE `insert_movement` (sp_id_type_movements, sp_id_institution, sp_value, sp_description, sp_date_movement)
BEGIN
	INSERT INTO financial_movements (id_type_movements, id_institution, `value`, `description`,  date_movement) VALUES (sp_id_type_movements, sp_id_institution, sp_value, sp_description, sp_date_movement);
END



