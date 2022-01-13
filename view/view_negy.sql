CREATE OR REPLACE VIEW view_negy AS
select k.nev, sel.darab, k.tulaj_nev, k.varos
  from kereskedes k
  join (select k.kereskedes_id, Count(*) as darab
          from kereskedes k
          join menetlevel m
            on k.kereskedes_id = m.cel_kereskedes
         group by k.kereskedes_id) sel
    on sel.kereskedes_id = k.kereskedes_id
 order by sel.darab desc, k.nev;

select * from view_negy;
