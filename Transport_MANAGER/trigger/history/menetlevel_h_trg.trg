CREATE OR REPLACE TRIGGER menetlevel_h_trg
  AFTER INSERT OR UPDATE OR DELETE ON menetlevel
  FOR EACH ROW
DECLARE
  v_mod_user menetlevel.mod_user%TYPE;
  v_mod_time menetlevel.last_mod%TYPE;
BEGIN
  v_mod_user := sys_context('USERENV', 'OS_USER');
  v_mod_time := SYSDATE;

  IF deleting THEN
    insert into menetlevel_h
      (menetlevel_id,
       szerelveny_id,
       sofor_id,
       start_kereskedes,
       cel_kereskedes,
       start_nap,
       cel_nap,
       last_mod,
       created,
       mod_user,
       dml_flag,
       version)
    values
      (:old.menetlevel_id,
       :old.szerelveny_id,
       :old.sofor_id,
       :old.start_kereskedes,
       :old.cel_kereskedes,
       :old.start_nap,
       :old.cel_nap,
       v_mod_time,
       :old.created,
       v_mod_user,
       'D',
       :old.version + 1);
  
  ELSE
    insert into menetlevel_h
      (menetlevel_id,
       szerelveny_id,
       sofor_id,
       start_kereskedes,
       cel_kereskedes,
       start_nap,
       cel_nap,
       last_mod,
       created,
       mod_user,
       dml_flag,
       version)
    
    values
      (:new.menetlevel_id,
       :new.szerelveny_id,
       :new.sofor_id,
       :new.start_kereskedes,
       :new.cel_kereskedes,
       :new.start_nap,
       :new.cel_nap,
       :new.last_mod,
       :new.created,
       :new.mod_user,
       :new.dml_flag,
       :new.version);
  
  END IF;
END menetlevel_h_trg;
/
