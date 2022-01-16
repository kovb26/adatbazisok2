create or replace package kereskedes_pkg is

  procedure kereskedes_delete(p_kereskedes_id number);

  procedure kereskedes_insert(p_kereskedes_id number,
                              p_nev           varchar2,
                              p_orszag        varchar2,
                              p_varos         varchar2,
                              p_tulaj_nev     varchar2,
                              p_telefonszam   varchar2);

  procedure kereskedes_update(p_kereskedes_id number,
                              p_nev           varchar2,
                              p_orszag        varchar2,
                              p_varos         varchar2,
                              p_tulaj_nev     varchar2,
                              p_telefonszam   varchar2);
end kereskedes_pkg;
/
create or replace package body kereskedes_pkg is

  procedure kereskedes_delete(p_kereskedes_id number) is
  begin
    delete from kereskedes k where k.kereskedes_id = p_kereskedes_id;
  end kereskedes_delete;

  procedure kereskedes_insert(p_kereskedes_id number,
                              p_nev           varchar2,
                              p_orszag        varchar2,
                              p_varos         varchar2,
                              p_tulaj_nev     varchar2,
                              p_telefonszam   varchar2) is
  begin
    insert into kereskedes
      (kereskedes_id, nev, orszag, varos, tulaj_nev, telefonszam)
    values
      (p_kereskedes_id,
       p_nev,
       p_orszag,
       p_varos,
       p_tulaj_nev,
       p_telefonszam);
  
  end kereskedes_insert;

  procedure kereskedes_update(p_kereskedes_id number,
                              p_nev           varchar2,
                              p_orszag        varchar2,
                              p_varos         varchar2,
                              p_tulaj_nev     varchar2,
                              p_telefonszam   varchar2) is
    v_kereskedes kereskedes%rowtype;
  begin
    begin
      select *
        into v_kereskedes
        from kereskedes k
       where k.kereskedes_id = p_kereskedes_id;
    exception
      when no_data_found then
        raise_application_error(pkg_exception.gc_no_ker_found_exc_code,
                                'Nem talalhato ilyen id-ju kereskedes.');
    end;
  
    if p_nev is not null then
      v_kereskedes.nev := p_nev;
    end if;
  
    if p_orszag is not null then
      v_kereskedes.orszag := p_orszag;
    end if;
  
    if p_varos is not null then
      v_kereskedes.varos := p_varos;
    end if;
  
    if p_tulaj_nev is not null then
      v_kereskedes.tulaj_nev := p_tulaj_nev;
    end if;
  
    if p_telefonszam is not null then
      v_kereskedes.telefonszam := p_telefonszam;
    end if;
  
    update kereskedes k
       set k.nev         = v_kereskedes.nev,
           k.orszag      = v_kereskedes.orszag,
           k.varos       = v_kereskedes.varos,
           k.tulaj_nev   = v_kereskedes.tulaj_nev,
           k.telefonszam = v_kereskedes.telefonszam
     where k.kereskedes_id = p_kereskedes_id;
  end kereskedes_update;

end kereskedes_pkg;
/
