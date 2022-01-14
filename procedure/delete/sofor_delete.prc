create or replace procedure sofor_delete(p_sofor_id number) is
begin
  delete from sofor s where s.sofor_id = p_sofor_id;
end;
/
