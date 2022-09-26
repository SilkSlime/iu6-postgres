-- 3.10
CREATE USER admin WITH password 'iu6-magisters';
GRANT ALL ON DATABASE iu6 TO admin;
ALTER USER admin WITH SUPERUSER;
-- 4.4
CREATE SEQUENCE user_ids;
CREATE TABLE users (
    id INTEGER PRIMARY KEY DEFAULT NEXTVAL('user_ids'),
    -- id SERIAL PRIMARY KEY,
    surname VARCHAR(64),
    firstname VARCHAR(64)
);
-- 4.5
INSERT INTO users (surname, firstname) VALUES ('Иванов', 'Иван');
INSERT INTO users (surname, firstname) VALUES ('Петров', 'Пётр');
-- 4.6
SELECT * FROM users;
SELECT * FROM users WHERE surname='Иванов';