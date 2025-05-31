CREATE TABLE uuid_snapshot (
  uuid TEXT PRIMARY KEY,
  link TEXT,
  pregunta TEXT,
  fecha_ingesta TIMESTAMP DEFAULT NOW()
);
