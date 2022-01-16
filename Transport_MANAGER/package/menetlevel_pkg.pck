create or replace package menetlevel_pkg is

  procedure menetlevel_delete(p_menetlevel_id number);

  procedure menetlevel_insert(p_menetlevel_id    number,
                              p_szerelveny_id    number,
                              p_sofor_id         number,
                              p_start_kereskedes number,
                              p_cel_kereskedes   number,
                              p_start_nap        date,
                              p_cel_nap          date);

  procedure menetlevel_update(p_menetlevel_id    number,
                              p_szerelveny_id    number,
                              p_sofor_id         number,
                              p_start_kereskedes number,
                              p_cel_kereskedes   number,
                              p_start_nap        date,
                              p_cel_nap          date);

end menetlevel_pkg;
/
create or replace package body menetlevel_pkg is

  procedure menetlevel_delete(p_menetlevel_id number) is
  begin
    delete from menetlevel m where m.menetlevel_id = p_menetlevel_id;
  end menetlevel_delete;

  procedure menetlevel_insert(p_menetlevel_id    number,
                              p_szerelveny_id    number,
                              p_sofor_id         number,
                              p_start_kereskedes number,
                              p_cel_kereskedes   number,
                              p_start_nap        date,
                              p_cel_nap          date) is
  begin
    insert into menetlevel
      (menetlevel_id,
       szerelveny_id,
       sofor_id,
       start_kereskedes,
       cel_kereskedes,
       start_nap,
       cel_nap)
    values
      (p_menetlevel_id,
       p_szerelveny_id,
       p_sofor_id,
       p_start_kereskedes,
       p_cel_kereskedes,
       p_start_nap,
       p_cel_nap);
  end menetlevel_insert;

  procedure menetlevel_update(p_menetlevel_id    number,
                              p_szerelveny_id    number,
                              p_sofor_id         number,
                              p_start_kereskedes number,
                              p_cel_kereskedes   number,
                              p_start_nap        date,
                              p_cel_nap          date) is
    v_menetlevel menetlevel%rowtype;
  begin
    begin
      select *
        into v_menetlevel
        from menetlevel m
       where m.menetlevel_id = p_menetlevel_id;
    exception
      when no_data_found then
        raise_application_error(pkg_exception.gc_no_mlevel_found_exc_code,
                                'Nem talalhato ilyen id-ju menetlevel.');
    end;
  
    if p_szerelveny_id is not null then
      v_menetlevel.szerelveny_id := p_szerelveny_id;
    end if;
  
    if p_sofor_id is not null then
      v_menetlevel.sofor_id := p_sofor_id;
    end if;
  
    if p_start_kereskedes is not null then
      v_menetlevel.start_kereskedes := p_start_kereskedes;
    end if;
  
    if p_cel_kereskedes is not null then
      v_menetlevel.cel_kereskedes := p_cel_kereskedes;
    end if;
  
    if p_start_nap is not null then
      v_menetlevel.start_nap := p_start_nap;
    end if;
  
    if p_cel_nap is not null then
      v_menetlevel.cel_nap := p_cel_nap;
    end if;
  
    update menetlevel m
       set m.szerelveny_id    = v_menetlevel.szerelveny_id,
           m.sofor_id         = v_menetlevel.sofor_id,
           m.start_kereskedes = v_menetlevel.start_kereskedes,
           m.cel_kereskedes   = v_menetlevel.cel_kereskedes,
           m.start_nap        = v_menetlevel.start_nap,
           m.cel_nap          = v_menetlevel.cel_nap
     where m.menetlevel_id = p_menetlevel_id;
  end;

end menetlevel_pkg;
/
