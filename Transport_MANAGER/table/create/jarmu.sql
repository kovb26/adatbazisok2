create table jarmu
(
        jarmu_id                  number            not null  primary key
       ,marka                     varchar2(20)      not null
       ,tipus                     varchar2(20)      not null
       ,rendszam                  varchar2(10)      not null
       ,terhelhetoseg             number            not null
       ,evjarat                   number            not null
       ,muszaki_erv               date              not null
       ,last_mod                  timestamp(6)
       ,created                   timestamp(6)
       ,mod_user                  varchar2(300)
       ,dml_flag	                varchar2(1)
       ,version	                  number
)
Tablespace users;
