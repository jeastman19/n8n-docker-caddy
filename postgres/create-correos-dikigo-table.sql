CREATE TABLE if not exists correos_dikigo (
    email_id            VARCHAR(100) PRIMARY KEY,
    fecha_hora          TIMESTAMP,
    from_email          TEXT,
    "subject"           TEXT,
    body_raw            TEXT,
    body_clean          TEXT,
    intent_extraido     TEXT,
	doc_id				varchar(100),
    pregunta_original   VARCHAR(100),
    question_vector_id  BIGINT,
    score_top1          REAL,
    question_id_top1    BIGINT,
    respuesta_sugerida  TEXT,
    respuesta_correcta  TEXT,
    tipo_error          TEXT,
    notas               TEXT,
    pregunta            BOOLEAN,
    encontrado          BOOLEAN,
	procesado           BOOLEAN,
    correcto            BOOLEAN
);

CREATE INDEX IF NOT EXISTS idx_correos_dikigo_fecha_hora ON correos_dikigo(fecha_hora);

CREATE INDEX IF NOT EXISTS idx_correos_dikigo_pregunta ON correos_dikigo(pregunta);
CREATE INDEX IF NOT EXISTS idx_correos_dikigo_encontrado ON correos_dikigo(encontrado);
CREATE INDEX IF NOT EXISTS idx_correos_dikigo_procesado ON correos_dikigo(procesado);
CREATE INDEX IF NOT EXISTS idx_correos_dikigo_correcto ON correos_dikigo(correcto);
