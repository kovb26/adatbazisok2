create or replace procedure kereskedes_insert(p_kereskedes_id number,
                                              p_nev           varchar2,
                                              p_orszag        varchar2,
                                              p_varos         varchar2,
                                              p_tulaj_nev     varchar2,
                                              p_telefonszam   varchar2) is
begin
  insert into kereskedes
    (kereskedes_id, nev, orszag, varos, tulaj_nev, telefonszam)
  values
    (p_kereskedes_id, p_nev, p_orszag, p_varos, p_tulaj_nev, p_telefonszam);

end kereskedes_insert;
/
