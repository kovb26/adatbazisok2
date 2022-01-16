create or replace view view_harom as
select s.nev           as sofor_nev,
       ck.nev          as kereskedes_nev,
       ck.tulaj_nev    as kereskedo_nev,
       m.cel_nap,
       m.menetlevel_id
  from menetlevel m
  join kereskedes ck
    on ck.kereskedes_id = m.cel_kereskedes
  join szerelveny sz
    on sz.szerelveny_id = m.szerelveny_id
  join sofor s
    on s.sofor_id = m.sofor_id
  join kereskedes sk
    on sk.kereskedes_id = m.cel_kereskedes
 where sz.szallitott_autok > 2
   AND ck.orszag = 'HU'
   AND sk.orszag = 'HU'
 order by m.menetlevel_id;

select * from view_harom;
