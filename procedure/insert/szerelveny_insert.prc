create or replace procedure szerelveny_insert(p_szerelveny_id    number,
                                              p_vontato_id       number,
                                              p_utanfuto_id      number,
                                              p_szallitott_autok number) is
begin
  insert into szerelveny
    (szerelveny_id, vontato_id, utanfuto_id, szallitott_autok)
  values
    (p_szerelveny_id, p_vontato_id, p_utanfuto_id, p_szallitott_autok);
end szerelveny_insert;
/
