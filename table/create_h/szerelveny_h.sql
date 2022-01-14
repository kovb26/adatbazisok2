create table szerelveny_h
(
        szerelveny_id           number          
       ,vontato_id              number     
       ,utanfuto_id             number 
       ,szallitott_autok        number           
       ,last_mod                timestamp(6)
       ,created                 timestamp(6)
       ,mod_user                varchar2(300)
       ,dml_flag                varchar2(1)
       ,version                  number
);
