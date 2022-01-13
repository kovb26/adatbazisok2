create or replace package pkg_exception1 is

  -- Author  : KOVB
  -- Created : 2022. 01. 13. 19:36:18
  -- Purpose : 

  sofor_not_found_exception EXCEPTION;
  gc_sofor_not_found_exc_code constant number := -20000;
  pragma exception_init(sofor_not_found_exception, -20000);

end pkg_exception1;
/
