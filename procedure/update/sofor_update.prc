create or replace procedure sofor_update(p_sofor_id                number,
                                         p_nev                     varchar2,
                                         p_szuletesi_ido           date,
                                         p_jogositvany_ervenyesseg date,
                                         p_telefonszam             number) is
  v_sofor sofor%rowtype;
begin
  begin
    select * into v_sofor from sofor s where s.sofor_id = p_sofor_id;
  exception
    when no_data_found then
      raise_application_error(pkg_exception.gc_no_sofor_found_exc_code,
                              'Nem talalhato ilyen id-ju sofor.');
  end;

  if p_nev is not null then
    v_sofor.nev := p_nev;
  end if;

  if p_szuletesi_ido is not null then
    v_sofor.szuletesi_ido := p_szuletesi_ido;
  end if;

  if p_jogositvany_ervenyesseg is not null then
    v_sofor.jogositvany_ervenyesseg := p_jogositvany_ervenyesseg;
  end if;

  if p_telefonszam is not null then
    v_sofor.telefonszam := p_telefonszam;
  end if;

  update sofor s
     set s.nev                     = v_sofor.nev,
         s.szuletesi_ido           = v_sofor.szuletesi_ido,
         s.jogositvany_ervenyesseg = v_sofor.jogositvany_ervenyesseg,
         s.telefonszam             = v_sofor.telefonszam
         where s.sofor_id = p_sofor_id;
end;
/
