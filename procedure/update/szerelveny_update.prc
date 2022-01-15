create or replace procedure szerelveny_update(p_szerelveny_id    number,
                                              p_vontato_id       number,
                                              p_utanfuto_id      number,
                                              p_szallitott_autok number) is
  v_szerelveny szerelveny%rowtype;
begin
  begin
    select *
      into v_szerelveny
      from szerelveny sz
     where sz.szerelveny_id = p_szerelveny_id;
  exception
    when no_data_found then
      raise_application_error(pkg_exception.gc_no_szerelv_found_exc_code,
                              'Nem talalhato ilyen id-ju szerelveny.');
  end;

  if p_vontato_id is not null then
    v_szerelveny.vontato_id := p_vontato_id;
  end if;

  if p_utanfuto_id is not null then
    v_szerelveny.utanfuto_id := p_utanfuto_id;
  end if;

  if p_szallitott_autok is not null then
    v_szerelveny.szallitott_autok := p_szallitott_autok;
  end if;

  update szerelveny sz
     set sz.vontato_id       = v_szerelveny.vontato_id,
         sz.utanfuto_id      = v_szerelveny.utanfuto_id,
         sz.szallitott_autok = v_szerelveny.szallitott_autok
   where sz.szerelveny_id = p_szerelveny_id;

end szerelveny_update;
/
