create or replace procedure jarmu_insert(p_jarmu_id      number,
                                         p_marka         varchar2,
                                         p_tipus         varchar2,
                                         p_rendszam      varchar2,
                                         p_terhelhetoseg number,
                                         p_evjarat       number,
                                         p_muszaki_erv   date) is
begin
  insert into jarmu
    (jarmu_id, marka, tipus, rendszam, terhelhetoseg, evjarat, muszaki_erv)
  values
    (p_jarmu_id,
     p_marka,
     p_tipus,
     p_rendszam,
     p_terhelhetoseg,
     p_evjarat,
     p_muszaki_erv);
end jarmu_insert;
/