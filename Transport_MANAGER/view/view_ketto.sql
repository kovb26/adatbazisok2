CREATE OR REPLACE VIEW view_ketto AS
select ju.jarmu_id, ju.marka, ju.rendszam, ju.evjarat
  from szerelveny sz
  join jarmu ju
    on ju.jarmu_id = sz.utanfuto_id
 where EXTRACT(YEAR FROM CURRENT_DATE) - ju.evjarat > 10
 order by ju.jarmu_id;

select * from view_ketto;
