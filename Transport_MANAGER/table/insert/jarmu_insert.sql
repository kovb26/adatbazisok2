insert into jarmu
  (jarmu_id, marka, tipus, rendszam, terhelhetoseg, evjarat, muszaki_erv)
values
  (1,
   'Peugeot',
   'Automento',
   'kmk001',
   1500,
   2008,
   to_date('07-07-2022', 'dd-mm-yyyy'));

insert into jarmu
  (jarmu_id, marka, tipus, rendszam, terhelhetoseg, evjarat, muszaki_erv)
values
  (6,
   'Peugeot',
   'Automento',
   'kmk002',
   1450,
   2006,
   to_date('07-09-2022', 'dd-mm-yyyy'));

insert into jarmu
  (jarmu_id, marka, tipus, rendszam, terhelhetoseg, evjarat, muszaki_erv)
values
  (2,
   'Citroen',
   'Automento',
   'kmk003',
   1400,
   2018,
   to_date('07-11-2022', 'dd-mm-yyyy'));

insert into jarmu
  (jarmu_id, marka, tipus, rendszam, terhelhetoseg, evjarat, muszaki_erv)
values
  (3,
   'Toyota',
   'Automento',
   'kmk004',
   1500,
   2003,
   to_date('07-07-2023', 'dd-mm-yyyy'));

insert into jarmu
  (jarmu_id, marka, tipus, rendszam, terhelhetoseg, evjarat, muszaki_erv)
values
  (4,
   'Peugeot',
   'Automento',
   'kmk005',
   1350,
   2021,
   to_date('07-03-2025', 'dd-mm-yyyy'));

insert into jarmu
  (jarmu_id, marka, tipus, rendszam, terhelhetoseg, evjarat, muszaki_erv)
values
  (5,
   'Volkswagen',
   'Automento',
   'kmk006',
   1400,
   2015,
   to_date('07-11-2023', 'dd-mm-yyyy'));

insert into jarmu
  (jarmu_id, marka, tipus, rendszam, terhelhetoseg, evjarat, muszaki_erv)
values
  (7,
   'Brian_James',
   'Utanfuto',
   'uab001',
   2200,
   2018,
   to_date('07-07-2022', 'dd-mm-yyyy'));

insert into jarmu
  (jarmu_id, marka, tipus, rendszam, terhelhetoseg, evjarat, muszaki_erv)
values
  (8,
   'Pongratz',
   'Utanfuto',
   'uab002',
   2400,
   2016,
   to_date('07-12-2022', 'dd-mm-yyyy'));

insert into jarmu
  (jarmu_id, marka, tipus, rendszam, terhelhetoseg, evjarat, muszaki_erv)
values
  (9,
   'Boro',
   'Utanfuto',
   'uab003',
   2700,
   2019,
   to_date('07-05-2022', 'dd-mm-yyyy'));

insert into jarmu
  (jarmu_id, marka, tipus, rendszam, terhelhetoseg, evjarat, muszaki_erv)
values
  (10,
   'Fitzel',
   'Utanfuto',
   'uab004',
   2600,
   2010,
   to_date('23-11-2022', 'dd-mm-yyyy'));

insert into jarmu
  (jarmu_id, marka, tipus, rendszam, terhelhetoseg, evjarat, muszaki_erv)
values
  (11,
   'Pongratz',
   'Utanfuto',
   'uab005',
   1400,
   2009,
   to_date('07-01-2022', 'dd-mm-yyyy'));

insert into jarmu
  (jarmu_id, marka, tipus, rendszam, terhelhetoseg, evjarat, muszaki_erv)
values
  (12,
   'Brian_James',
   'Utanfuto',
   'uab006',
   2600,
   2021,
   to_date('07-07-2025', 'dd-mm-yyyy'));

select * from jarmu order by jarmu.jarmu_id;
