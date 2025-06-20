CREATE TABLE IF NOT EXISTS correos_log (
  email_id VARCHAR(100) PRIMARY KEY,
  from_name TEXT,
  from_address TEXT,
  to_address TEXT,
  subject TEXT,
  fecha TEXT,
  hora TEXT,
  raw_text TEXT,
  body_clean TEXT,
  clasificacion TEXT,
  existe BOOLEAN,
  respuesta TEXT,
  docLink TEXT,
  point_id INTEGER,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
