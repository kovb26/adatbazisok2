CREATE OR REPLACE VIEW view_egy AS
select m.menetlevel_id,
       s.nev               as Sofor_nev,
       jv.muszaki_erv      as Vontato_muszaki_ervenyeesseg,
       ju.muszaki_erv      as Utanfuto_muszaki_ervenyesseg,
       sz.szallitott_autok,
       jv.terhelhetoseg + ju.terhelhetoseg as osszterhelhetoseg
  from menetlevel m
  join szerelveny sz
    on sz.szerelveny_id = m.szerelveny_id
  join sofor s
    on s.sofor_id = m.sofor_id
  join jarmu jv
    on jv.rendszam = sz.vontato_rendszam
  join jarmu ju
    on ju.rendszam = sz.utanfuto_rendszam
 order by m.menetlevel_id;
 
 select * from view_egy;
