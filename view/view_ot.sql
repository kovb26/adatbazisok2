create or replace view view_ot as
select s.nev, sel.darab
  from sofor s
  join (select s.sofor_id, Count(*) as darab
          from sofor s
          join menetlevel m
            on m.sofor_id = s.sofor_id
         group by s.sofor_id) sel
    on sel.sofor_id = s.sofor_id
 order by sel.darab desc, s.nev;

select * from view_ot;
