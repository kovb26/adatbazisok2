create or replace type type_szerelveny as object
(
  szerelveny_id number,
  cel_varos     varchar2(40),
  cel_nap       date,
  cel_k_nev     varchar2(40),
  cel_k_telefon varchar2(40),
  constructor function type_szerelveny return self as result
)
/
create or replace type body type_szerelveny is

  constructor function type_szerelveny return self as result is
  begin
    return;
  end;

end;
/
