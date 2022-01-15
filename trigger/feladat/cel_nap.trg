create or replace trigger cel_nap
  before update on menetlevel
  for each row
declare
  -- local variables here
begin
  :new.cel_nap := :old.cel_nap + (:new.start_nap - :old.start_nap);
end cel_nap;
/
