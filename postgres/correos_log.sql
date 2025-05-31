CREATE TABLE IF NOT EXISTS correos_log (
  email_id VARCHAR(100) PRIMARY KEY,
  from_name TEXT,
  from_address TEXT,
  to_address TEXT,
  subject TEXT,
  fecha TEXT,
  hora TEXT,
  clasificacion TEXT,
  body_clean TEXT,
  respuesta TEXT,
  pregunta_original TEXT,
  doc_id TEXT,
  docLink TEXT,
  point_id INTEGER,
  existe BOOLEAN,
  raw_text TEXT,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
