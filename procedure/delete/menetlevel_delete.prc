create or replace procedure menetlevel_delete(p_menetlevel_id number) is
begin
  delete from menetlevel m where m.menetlevel_id = p_menetlevel_id;
end menetlevel_delete;
/
