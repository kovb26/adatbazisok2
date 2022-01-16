create table kereskedes
(
        kereskedes_id    number             not null  primary key
       ,nev              varchar2(40)       not null
       ,orszag           varchar2(40)       not null
       ,varos            varchar2(40)       not null
       ,tulaj_nev        varchar2(40)       not null
       ,telefonszam      varchar2(11)       not null
       ,last_mod         timestamp(6)
       ,created          timestamp(6)
       ,mod_user         varchar2(300)
       ,dml_flag	       varchar2(1)
       ,version	         number
)
TABLESPACE users;
