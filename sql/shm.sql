CREATE USER 'shm'@'localhost' IDENTIFIED BY 'shm';

GRANT SELECT, INSERT, UPDATE, REFERENCES, DELETE, CREATE, DROP, ALTER, INDEX, TRIGGER, CREATE VIEW, SHOW VIEW, EXECUTE, ALTER ROUTINE, CREATE ROUTINE, CREATE TEMPORARY TABLES, LOCK TABLES, EVENT ON `xy`.* TO 'shm'@'localhost';

GRANT GRANT OPTION ON `xy`.* TO 'shm'@'localhost';