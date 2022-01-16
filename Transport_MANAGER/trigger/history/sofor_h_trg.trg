CREATE OR REPLACE TRIGGER sofor_h_trg
  AFTER INSERT OR UPDATE OR DELETE ON sofor
  FOR EACH ROW
DECLARE
  v_mod_user sofor.mod_user%TYPE;
  v_mod_time sofor.last_mod%TYPE;
BEGIN
  v_mod_user := sys_context('USERENV', 'OS_USER');
  v_mod_time := SYSDATE;

  IF deleting
  THEN
    insert into sofor_h(sofor_id,
                        nev,
                        szuletesi_ido,
                        jogositvany_ervenyesseg,
                        telefonszam,
                        last_mod,
                        created,
                        mod_user,
                        dml_flag,
                        version)
    values
    (:old.sofor_id
    ,:old.nev
    ,:old.szuletesi_ido
    ,:old.jogositvany_ervenyesseg
    ,:old.telefonszam
    ,v_mod_time
    ,:old.created
    ,v_mod_user
    ,'D'
    ,:old.version + 1);
    
  ELSE
    insert into sofor_h(sofor_id,
                        nev,
                        szuletesi_ido,
                        jogositvany_ervenyesseg,
                        telefonszam,
                        last_mod,
                        created,
                        mod_user,
                        dml_flag,
                        version)
         
     values
    (:new.sofor_id
    ,:new.nev
    ,:new.szuletesi_ido
    ,:new.jogositvany_ervenyesseg
    ,:new.telefonszam
    ,:new.last_mod
    ,:new.created
    ,:new.mod_user
    ,:new.dml_flag
    ,:new.version);
                   
    
  END IF;
END sofor_h_trg;
/
