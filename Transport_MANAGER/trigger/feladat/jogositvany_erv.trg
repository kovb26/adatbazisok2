create or replace trigger jogositvany_erv
  before insert or update on menetlevel
  for each row
declare
  v_jogositvany sofor.jogositvany_ervenyesseg%type;
begin
  select s.jogositvany_ervenyesseg
    into v_jogositvany
    from sofor s
   where s.sofor_id = :new.sofor_id;
  if :new.cel_nap > v_jogositvany then
    raise_application_error(pkg_exception.gc_nem_ervenyes_exc_code,
                            'Nem ervenyes jogositvany');
  end if;
end jogositvany_erv;
/
