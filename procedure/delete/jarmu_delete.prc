create or replace procedure jarmu_delete(p_jarmu_id number) is
begin
  delete from jarmu j where j.jarmu_id = p_jarmu_id;
end jarmu_delete;
/
