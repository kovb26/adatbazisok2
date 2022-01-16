create or replace function exp_inp(p_orszag number) return menetlevel_list is
  res menetlevel_list;

begin

  case p_orszag
    when 1 then
      select *
        bulk collect
        into res
        from (select type_menetlevel(m.menetlevel_id,
                                     m.szerelveny_id,
                                     m.sofor_id,
                                     m.start_kereskedes,
                                     m.cel_kereskedes,
                                     m.start_nap,
                                     m.cel_nap)
              
                from menetlevel m
                join kereskedes sk
                  on m.start_kereskedes = sk.kereskedes_id
                join kereskedes ck
                  on m.cel_kereskedes = ck.kereskedes_id
               where sk.orszag = 'HU'
                 AND ck.orszag != 'HU');
    when 2 then
      select *
        bulk collect
        into res
        from (select type_menetlevel(m.menetlevel_id,
                                     m.szerelveny_id,
                                     m.sofor_id,
                                     m.start_kereskedes,
                                     m.cel_kereskedes,
                                     m.start_nap,
                                     m.cel_nap)
              
                from menetlevel m
              
                join kereskedes sk
                  on m.start_kereskedes = sk.kereskedes_id
                join kereskedes ck
                  on m.cel_kereskedes = ck.kereskedes_id
               where sk.orszag != 'HU'
                 AND ck.orszag = 'HU');
    
  end case;

  return res;

end exp_inp;
/
