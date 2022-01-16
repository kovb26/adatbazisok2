create table menetlevel_h
(
        menetlevel_id             number   
       ,szerelveny_id             number    
       ,sofor_id                  number   
       ,start_kereskedes          number    
       ,cel_kereskedes            number    
       ,start_nap                 date     
       ,cel_nap                   date     
       ,last_mod                  timestamp(6)
       ,created                   timestamp(6)
       ,mod_user                  varchar2(300)
       ,dml_flag                  varchar2(1)
       ,version                    number
);
