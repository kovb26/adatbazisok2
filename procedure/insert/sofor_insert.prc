create or replace procedure sofor_insert(p_sofor_id                number,
                                         p_nev                     varchar2,
                                         p_szuletesi_ido           date,
                                         p_jogositvany_ervenyesseg date,
                                         p_telefonszam             number) is
begin
  insert into sofor
    (sofor_id, nev, szuletesi_ido, jogositvany_ervenyesseg, telefonszam)
  values
    (p_sofor_id,
     p_nev,
     p_szuletesi_ido,
     p_jogositvany_ervenyesseg,
     p_telefonszam);
end sofor_insert;
/
