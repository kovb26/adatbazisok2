CREATE OR REPLACE TRIGGER jarmu_h_trg
  AFTER INSERT OR UPDATE OR DELETE ON jarmu
  FOR EACH ROW
DECLARE
  v_mod_user jarmu.mod_user%TYPE;
  v_mod_time jarmu.last_mod%TYPE;
BEGIN
  v_mod_user := sys_context('USERENV', 'OS_USER');
  v_mod_time := SYSDATE;

  IF deleting THEN
    insert into jarmu_h
      (jarmu_id,
       marka,
       tipus,
       rendszam,
       terhelhetoseg,
       evjarat,
       muszaki_erv,
       last_mod,
       created,
       mod_user,
       dml_flag,
       version)
    values
      (:old.jarmu_id,
       :old.marka,
       :old.tipus,
       :old.rendszam,
       :old.terhelhetoseg,
       :old.evjarat,
       :old.muszaki_erv,
       v_mod_time,
       :old.created,
       v_mod_user,
       'D',
       :old.version + 1);
  
  ELSE
    insert into jarmu_h
      (jarmu_id,
       marka,
       tipus,
       rendszam,
       terhelhetoseg,
       evjarat,
       muszaki_erv,
       last_mod,
       created,
       mod_user,
       dml_flag,
       version)
    
    values
      (:new.jarmu_id,
       :new.marka,
       :new.tipus,
       :new.rendszam,
       :new.terhelhetoseg,
       :new.evjarat,
       :new.muszaki_erv,
       :new.last_mod,
       :new.created,
       :new.mod_user,
       :new.dml_flag,
       :new.version);
  
  END IF;
END jarmu_h_trg;
/
