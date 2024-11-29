-- Insertar usuarios iniciales
INSERT INTO app.users (username, email, password_hash) 
VALUES 
    ('admin', 'admin@example.com', crypt('adminpassword', gen_salt('bf'))),
    ('user', 'user@example.com', crypt('userpassword', gen_salt('bf')))
ON CONFLICT (username) DO NOTHING;