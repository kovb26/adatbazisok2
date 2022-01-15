create or replace function fnc_jarmu(p_rendszam varchar2, p_suly number)
  return type_jarmu is
  res type_jarmu;

begin
  res := type_jarmu();

  select j.rendszam, j.marka, j.tipus, j.terhelhetoseg
    into res.rendszam, res.marka, res.tipus, res.terhelhetoseg
    from jarmu j
   where j.rendszam = p_rendszam AND j.terhelhetoseg>p_suly;
   
   return res;
end fnc_jarmu;
/
