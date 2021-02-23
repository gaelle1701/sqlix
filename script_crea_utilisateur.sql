CREATE USER 'sqlix_u'@'localhost' IDENTIFIED BY 'cool';
GRANT SELECT, INSERT, UPDATE, DELETE ON sqlix.* TO 'sqlix_u'@'localhost';
