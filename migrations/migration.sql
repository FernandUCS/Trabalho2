-- Criação de uma tabela de usuários
CREATE TABLE IF NOT EXISTS users (
    id SERIAL PRIMARY KEY,
    username VARCHAR(100) NOT NULL UNIQUE,
    email VARCHAR(100) NOT NULL UNIQUE,
    password_hash TEXT NOT NULL,
    created_at TIMESTAMPTZ DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMPTZ DEFAULT CURRENT_TIMESTAMP
);

-- Inserção de alguns dados de exemplo
INSERT INTO users (username, email, password_hash)
VALUES
    ('john_doe', 'john.doe@example.com', 'hashed_password_1'),
    ('jane_doe', 'jane.doe@example.com', 'hashed_password_2');

-- Criação de um índice para o campo 'username' para melhorar a performance das buscas
CREATE INDEX IF NOT EXISTS idx_users_username ON users (username);

-- Atualização de registros (se necessário)
UPDATE users SET updated_at = CURRENT_TIMESTAMP WHERE username = 'john_doe';