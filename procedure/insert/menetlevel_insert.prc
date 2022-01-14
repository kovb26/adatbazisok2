create or replace procedure menetlevel_insert(p_menetlevel_id    number,
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
/
