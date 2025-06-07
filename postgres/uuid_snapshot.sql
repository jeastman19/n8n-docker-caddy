-- 
-- En esta tabla se guarda los UUID de los puntos
-- que se cargan a Qdrant que lueso será utilizado
-- el el módulo "Detect Deleted Links"
-- Si el UUID existe en esta tabla y no en la hoja de cálculo
-- se elimina de Qdrant
-- 
CREATE TABLE uuid_snapshot (
  uuid TEXT PRIMARY KEY,
  link TEXT,
  pregunta TEXT,
  fecha_ingesta TIMESTAMP DEFAULT NOW()
);
