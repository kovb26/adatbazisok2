DECLARE
  v_count NUMBER;
BEGIN
  SELECT COUNT(*) INTO v_count FROM dba_users t WHERE t.username='TRANSPORT_MANAGER';
  IF v_count = 1 THEN 
    EXECUTE IMMEDIATE 'DROP USER transport_manager CASCADE';
  END IF;
END;
/
CREATE USER transport_manager 
  IDENTIFIED BY "12345678" 
  DEFAULT TABLESPACE users
  QUOTA UNLIMITED ON users
;

GRANT CREATE SESSION TO transport_manager;
GRANT CREATE TABLE TO transport_manager;
GRANT CREATE VIEW TO transport_manager;
GRANT CREATE SEQUENCE TO transport_manager;
GRANT CREATE PROCEDURE TO transport_manager;
