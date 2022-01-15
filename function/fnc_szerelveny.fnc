create or replace function fnc_szerelveny(p_szerelveny_id number)
  return type_szerelveny is
  res            type_szerelveny;
begin
  res := type_szerelveny();

  select m.szerelveny_id, ck.varos, m.cel_nap, ck.nev, ck.telefonszam
    into res.szerelveny_id,
         res.cel_varos,
         res.cel_nap,
         res.cel_k_nev,
         res.cel_k_telefon
    from menetlevel m
    join kereskedes ck
      on m.cel_kereskedes = ck.kereskedes_id
   where m.szerelveny_id = p_szerelveny_id;
  return res;
end fnc_szerelveny;
/
