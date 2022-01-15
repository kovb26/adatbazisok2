create or replace type type_jarmu as object
(
  rendszam      varchar2(6),
  marka         varchar2(40),
  tipus         varchar2(40),
  terhelhetoseg number,
  constructor function type_jarmu return self as result
)
/
create or replace type body type_jarmu is

  -- Member procedures and functions
  constructor function type_jarmu return self as result is
  begin
    return;
  end;

end;
/
