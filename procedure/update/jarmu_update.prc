create or replace procedure jarmu_update(p_jarmu_id      number,
                                         p_marka         varchar2,
                                         p_tipus         varchar2,
                                         p_rendszam      varchar2,
                                         p_terhelhetoseg number,
                                         p_evjarat       number,
                                         p_muszaki_erv   date) is
  v_jarmu jarmu%rowtype;
begin
  begin
    select * into v_jarmu from jarmu j where j.jarmu_id = p_jarmu_id;
  exception
    when no_data_found then
      raise_application_error(pkg_exception.gc_no_jarmu_found_exc_code,
                              'Nem talalhato ilyen id-ju jarmu.');
  end;

  if p_marka is not null then
    v_jarmu.marka := p_marka;
  end if;

  if p_tipus is not null then
    v_jarmu.tipus := p_tipus;
  end if;

  if p_rendszam is not null then
    v_jarmu.rendszam := p_rendszam;
  end if;

  if p_terhelhetoseg is not null then
    v_jarmu.terhelhetoseg := p_terhelhetoseg;
  end if;

  if p_evjarat is not null then
    v_jarmu.evjarat := p_evjarat;
  end if;

  if p_muszaki_erv is not null then
    v_jarmu.muszaki_erv := p_muszaki_erv;
  end if;

  update jarmu j
     set j.marka         = v_jarmu.marka,
         j.tipus         = v_jarmu.tipus,
         j.rendszam      = v_jarmu.rendszam,
         j.terhelhetoseg = v_jarmu.terhelhetoseg,
         j.evjarat       = v_jarmu.evjarat,
         j.muszaki_erv   = v_jarmu.muszaki_erv
   where j.jarmu_id      = p_jarmu_id;

end;
/
