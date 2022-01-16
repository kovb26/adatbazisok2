create or replace function tabla_count(p_kod number) return number is
  v_count number;
begin
  case p_kod
    when 1 then
      select count(*) as darab into v_count from jarmu;
    when 2 then
      select count(*) as darab into v_count from szerelveny;
    when 3 then
      select count(*) as darab into v_count from sofor;
    when 4 then
      select count(*) as darab into v_count from menetlevel;
    when 5 then
      select count(*) as darab into v_count from kereskedes;
    else
      v_count := -1;
    
  end case;

  return v_count;
end tabla_count;
/
