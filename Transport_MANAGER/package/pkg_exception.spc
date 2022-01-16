create or replace package pkg_exception is

  -- Author  : KOVB
  -- Created : 2022. 01. 13. 19:36:18
  -- Purpose : 

  sofor_not_found_exception EXCEPTION;
  gc_sofor_not_found_exc_code constant number := -20000;
  pragma exception_init(sofor_not_found_exception, -20000);

  no_sofor_found_exception exception;
  gc_no_sofor_found_exc_code constant number := -20100;
  pragma exception_init(no_sofor_found_exception, -20100);

  no_jarmu_found_exception exception;
  gc_no_jarmu_found_exc_code constant number := -20200;
  pragma exception_init(no_jarmu_found_exception, -20200);
  
  no_szerelveny_found_exception exception;
  gc_no_szerelv_found_exc_code constant number := -20300;
  pragma exception_init(no_szerelveny_found_exception, -20300);
  
  no_mlevel_found_exception exception;
  gc_no_mlevel_found_exc_code constant number := -20400;
  pragma exception_init(no_mlevel_found_exception, -20400);
  
  no_kereskedes_found_exception exception;
  gc_no_ker_found_exc_code constant number := -20500;
  pragma exception_init(no_kereskedes_found_exception, -20500);


end pkg_exception;
/
