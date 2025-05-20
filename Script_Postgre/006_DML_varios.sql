UPDATE public."Client"
	SET id=?, ubication_id=?, name=?, first_contact_date=?, follow_up=?, created_at=?, updated_at=?
	WHERE <condition>;

INSERT INTO public."Client"(id, ubication_id, name, first_contact_date, follow_up, created_at, updated_at)
	VALUES (?, ?, ?, ?, ?, ?, ?);

DELETE FROM public."Client"
	WHERE <condition>;
	
	
	
	
UPDATE public."Client"
	SET id=?, ubication_id=?, name=?, first_contact_date=?, follow_up=?, created_at=?, updated_at=?
	WHERE (
			SELECT CAMPOS
				FROM TABLA O TABLAS 
				 WHERE CAMPO_ID = O IN()
	);