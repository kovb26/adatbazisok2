CREATE OR REPLACE TRIGGER menetlevel_trg
  BEFORE INSERT OR UPDATE ON menetlevel
  FOR EACH ROW
BEGIN
  IF inserting
  THEN
    IF :new.menetlevel_id IS NULL
    THEN
      :new.menetlevel_id := menetlevel_seq.nextval;
    END IF;
  
    :new.created    := SYSDATE;
    :new.dml_flag   := 'I';
    :new.version    := 1;
  ELSE
    IF nvl(:new.dml_flag, 'U') <> 'D'
    THEN
      :new.dml_flag := 'U';
    END IF;
  
    :new.version := :old.version + 1;
  END IF;

  :new.last_mod := SYSDATE;
  :new.mod_user := sys_context('USERENV', 'OS_USER');
END menetlevel_trg;
/
