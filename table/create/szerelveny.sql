create table szerelveny
(
        szerelveny_id           number          not null primary key
       ,vontato_id              number          not null 
       ,utanfuto_id             number          not null 
       ,szallitott_autok        number          not null 
       ,last_mod                timestamp(6)
       ,created                 timestamp(6)
       ,mod_user                varchar2(300)
       ,dml_flag	              varchar2(1)
       ,version	                number
)
TABLESPACE users;
