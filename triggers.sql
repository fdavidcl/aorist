-- Eliminar la asociación Anuncio - Espacio si se introduce una URL al anuncio y el espacio no las permite.
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

-- Comprobar que al insertar un cobro asociado a un contrato, la suma de sus cobros no supere el importe definido.
CREATE OR REPLACE TRIGGER check_cobros
  BEFORE
    INSERT
  ON cobros
  FOR EACH ROW
DECLARE
  suma      cobros.importe%TYPE := 0;
  importe   cobros.importe%TYPE := 0;
BEGIN
  SELECT importe INTO importe
  FROM anunciante_contratos
  WHERE id = :NEW.anunciante_contrato_id;

  SELECT SUM(importe) INTO suma
  FROM cobros
  WHERE anunciante_contrato_id = :NEW.anunciante_contrato_id;

  suma := suma + :NEW.importe;

  IF suma > importe THEN
    raise_application_error(-20001, 'Cobros inválidos');
  END IF;
END;
/

-- Comprobar que al insertar un pago asociado a un contrato, la suma de sus pagos no supere el importe definido.
CREATE OR REPLACE TRIGGER check_pagos
  BEFORE
    INSERT
  ON pagos
  FOR EACH ROW
DECLARE
  suma      pagos.importe%TYPE := 0;
  importe   pagos.importe%TYPE := 0;
BEGIN
  SELECT importe INTO importe
  FROM medio_contratos
  WHERE id = :NEW.medio_contrato_id;

  SELECT SUM(importe) INTO suma
  FROM pagos
  WHERE medio_contrato_id = :NEW.medio_contrato_id;

  suma := suma + :NEW.importe;

  IF suma > importe THEN
    raise_application_error(-20002, 'Pagos inválidos');
  END IF;

END;
/
