CREATE OR REPLACE TRIGGER enforce_space_compatibility
  AFTER
    UPDATE OF url
  ON anuncios
  FOR EACH ROW
  WHEN (NEW.url <> '')
BEGIN
  DELETE FROM anuncio_allocations
  WHERE anuncio_id = :NEW.id AND espacio_id IN (
    SELECT id FROM espacios WHERE enlace = 0
  );
END;
/
