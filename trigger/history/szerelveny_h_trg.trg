CREATE OR REPLACE TRIGGER szerelveny_h_trg
  AFTER INSERT OR UPDATE OR DELETE ON szerelveny
  FOR EACH ROW
DECLARE
  v_mod_user szerelveny.mod_user%TYPE;
  v_mod_time szerelveny.last_mod%TYPE;
BEGIN
  v_mod_user := sys_context('USERENV', 'OS_USER');
  v_mod_time := SYSDATE;

  IF deleting
  THEN
    insert into szerelveny_h(szerelveny_id,
                             vontato_id,
                             utanfuto_id,
                             szallitott_autok,
                             last_mod,
                             created,
                             mod_user,
                             dml_flag,
                             version)
    values(
    :old.szerelveny_id
    ,:old.vontato_id
    ,:old.utanfuto_id
    ,:old.szallitott_autok
    ,v_mod_time
    ,:old.created
    ,v_mod_user
    ,'D'
    ,:old.version + 1);
    
  ELSE
   insert into szerelveny_h(szerelveny_id,
                            vontato_id,
                            utanfuto_id,
                            szallitott_autok,
                            last_mod,
                            created,
                            mod_user,
                            dml_flag,
                            version)
         
    values(
    :new.szerelveny_id
    ,:new.vontato_id
    ,:new.utanfuto_id
    ,:new.szallitott_autok
    ,:new.last_mod
    ,:new.created
    ,:new.mod_user
    ,:new.dml_flag
    ,:new.version);
    
     
    
  END IF;
END ;
/
