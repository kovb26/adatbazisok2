create or replace type type_ossztomeg as object
(
  szerelveny_id     number,
  v_rendszam        varchar2(6),
  v_terhelhetoseg   number,
  u_terhelhetoseg   number,
  u_rendszam        varchar2(6),
  osszterhelhetoseg number,
  constructor function type_ossztomeg return self as result
)
/
create or replace type body type_ossztomeg is

  constructor function type_ossztomeg return self as result is
  begin
    return;
  end;
end;
/
