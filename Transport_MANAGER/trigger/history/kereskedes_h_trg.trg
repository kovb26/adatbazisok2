CREATE OR REPLACE TRIGGER kereskedes_h_trg
  AFTER INSERT OR UPDATE OR DELETE ON kereskedes
  FOR EACH ROW
DECLARE
  v_mod_user kereskedes.mod_user%TYPE;
  v_mod_time kereskedes.last_mod%TYPE;
BEGIN
  v_mod_user := sys_context('USERENV', 'OS_USER');
  v_mod_time := SYSDATE;

  IF deleting THEN
    insert into kereskedes_h
      (kereskedes_id,
       nev,
       orszag,
       varos,
       tulaj_nev,
       telefonszam,
       last_mod,
       created,
       mod_user,
       dml_flag,
       version)
    values
      (:old.kereskedes_id,
       :old.nev,
       :old.orszag,
       :old.varos,
       :old.tulaj_nev,
       :old.telefonszam,
       v_mod_time,
       :old.created,
       v_mod_user,
       'D',
       :old.version + 1);
  
  ELSE
    insert into kereskedes_h
      (kereskedes_id,
       nev,
       orszag,
       varos,
       tulaj_nev,
       telefonszam,
       last_mod,
       created,
       mod_user,
       dml_flag,
       version)
    values
      (:new.kereskedes_id,
       :new.nev,
       :new.orszag,
       :new.varos,
       :new.tulaj_nev,
       :new.telefonszam,
       :new.last_mod,
       :new.created,
       :new.mod_user,
       :new.dml_flag,
       :new.version);
  
  END IF;
END kereskedes_h_trg;
/
