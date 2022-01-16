create table kereskedes_h
(
        kereskedes_id    number  
       ,nev              varchar2(40)       
       ,orszag           varchar2(40)       
       ,varos            varchar2(40)       
       ,tulaj_nev        varchar2(40)       
       ,telefonszam      varchar2(11)             
       ,last_mod         timestamp(6)
       ,created          timestamp(6)
       ,mod_user         varchar2(300)
       ,dml_flag         varchar2(1)
       ,version          number
);
