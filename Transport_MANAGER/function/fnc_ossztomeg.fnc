create or replace function fnc_ossztomeg(p_szerelvenyid number)
  return type_ossztomeg is
  res type_ossztomeg;
begin
  res := type_ossztomeg();

  select sz.szerelveny_id,
         jv.rendszam,
         jv.terhelhetoseg,
         ju.rendszam,
         ju.terhelhetoseg,
         ju.terhelhetoseg + jv.terhelhetoseg as osszterhelhetoseg
    into res.szerelveny_id,
         res.v_rendszam,
         res.v_terhelhetoseg,
         res.u_rendszam,
         res.u_terhelhetoseg,
         res.osszterhelhetoseg
    from szerelveny sz
    join jarmu jv
      on sz.vontato_id = jv.jarmu_id
    join jarmu ju
      on sz.utanfuto_id = ju.jarmu_id
   where sz.szerelveny_id = p_szerelvenyid;

  return res;

end fnc_ossztomeg;
/
