create or replace procedure szerelveny_delete(p_szerelveny_id number) is
begin
  delete from szerelveny sz where sz.szerelveny_id = p_szerelveny_id;
end szerelveny_delete;
/
