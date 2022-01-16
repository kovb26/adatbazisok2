create or replace type type_menetlevel as object
(
  menetlevel_id    number,
  szerelveny_id    number,
  sofor_id         number,
  start_kereskedes number,
  cel_kereskedes   number,
  start_nap        date,
  cel_nap          date,
  constructor function type_menetlevel return self as result
)
/
create or replace type body type_menetlevel is

  constructor function type_menetlevel return self as result is
  begin
    return;
  end;

end;
/
