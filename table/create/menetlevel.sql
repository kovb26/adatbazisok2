create table menetlevel
(
        menetlevel_id             number    not null  primary key
       ,szerelveny_id             number    not null
       ,sofor_id                  number    not null
       ,start_kereskedes          number    not null
       ,cel_kereskedes            number    not null
       ,start_nap                 date      not null
       ,cel_nap                   date      not null
       ,last_mod                  timestamp(6)
       ,created                   timestamp(6)
       ,mod_user                  varchar2(300)
       ,dml_flag	                varchar2(1)
       ,version	                  number
)
TABLESPACE users;
