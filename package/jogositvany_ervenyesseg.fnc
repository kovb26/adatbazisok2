create or replace function jogositvany_ervenyesseg(p_sofor_id number)
  return varchar is

  v_sofor_nev varchar(40);
begin
  begin
    select s.nev
      into v_sofor_nev
      from sofor s
     where s.sofor_id = p_sofor_id;
  
  exception
    when then
      raise_application_error(pkg_exception1.gc_sofor_not_found_exc_code,
                              'Nem érvényes a jogosítványa!');
  end;

  return v_sofor_nev;
end;
/
