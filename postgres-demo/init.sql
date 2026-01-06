CREATE TABLE IF NOT EXISTS users (
    id           BIGSERIAL PRIMARY KEY,
    email        TEXT NOT NULL UNIQUE,
    username     TEXT NOT NULL UNIQUE,
    password_hash TEXT NOT NULL,
    first_name   TEXT,
    last_name    TEXT,
    is_active    BOOLEAN NOT NULL DEFAULT TRUE,
    role         TEXT NOT NULL DEFAULT 'user',
    metadata     JSONB,
    created_at   TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    updated_at   TIMESTAMPTZ NOT NULL DEFAULT NOW()
);
