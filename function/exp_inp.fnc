create or replace function exp_inp(p_orszag number) return type_menetlevel is
  res type_menetlevel;

begin
  res := type_menetlevel();

  case p_orszag
    when 1 then
      select m.menetlevel_id,
             m.szerelveny_id,
             m.sofor_id,
             m.start_kereskedes,
             m.cel_kereskedes,
             m.start_nap,
             m.cel_nap
        into res.menetlevel_id,
             res.szerelveny_id,
             res.sofor_id,
             res.start_kereskedes,
             res.cel_kereskedes,
             res.start_nap,
             res.cel_nap
        from menetlevel m
        join kereskedes sk
          on m.start_kereskedes = sk.kereskedes_id
        join kereskedes ck
          on m.cel_kereskedes = ck.kereskedes_id
       where sk.orszag = 'HU'
         AND ck.orszag != 'HU';
    when 2 then
      select m.menetlevel_id,
             m.szerelveny_id,
             m.sofor_id,
             m.start_kereskedes,
             m.cel_kereskedes,
             m.start_nap,
             m.cel_nap
        into res.menetlevel_id,
             res.szerelveny_id,
             res.sofor_id,
             res.start_kereskedes,
             res.cel_kereskedes,
             res.start_nap,
             res.cel_nap
        from menetlevel m
        join kereskedes sk
          on m.start_kereskedes = sk.kereskedes_id
        join kereskedes ck
          on m.cel_kereskedes = ck.kereskedes_id
       where sk.orszag != 'HU'
         AND ck.orszag = 'HU';
    
  end case;

  return res;

end exp_inp;
/
