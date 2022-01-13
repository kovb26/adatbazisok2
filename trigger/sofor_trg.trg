CREATE OR REPLACE TRIGGER sofor_trg
  BEFORE INSERT OR UPDATE ON sofor
  FOR EACH ROW
BEGIN
  IF inserting
  THEN
    IF :new.sofor_id IS NULL
    THEN
      :new.sofor_id := sofor_seq.nextval;
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
END sofor_trg;
/
