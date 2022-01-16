CREATE OR REPLACE TRIGGER kereskedes_trg
  BEFORE INSERT OR UPDATE ON kereskedes
  FOR EACH ROW
BEGIN
  IF inserting THEN
    IF :new.kereskedes_id IS NULL THEN
      :new.kereskedes_id := kereskedes_seq.nextval;
    END IF;
  
    :new.created  := SYSDATE;
    :new.dml_flag := 'I';
    :new.version  := 1;
  ELSE
    IF nvl(:new.dml_flag, 'U') <> 'D' THEN
      :new.dml_flag := 'U';
    END IF;
  
    :new.version := :old.version + 1;
  END IF;

  :new.last_mod := SYSDATE;
  :new.mod_user := sys_context('USERENV', 'OS_USER');
END kereskedes_trg;
/
