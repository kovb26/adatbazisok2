insert into sofor
  (sofor_id, nev, szuletesi_ido, jogositvany_ervenyesseg, telefonszam)
values
  (1,
   'Kovacs Gabor',
   to_date('02-11-2000', 'dd-mm-yyyy'),
   to_date('07-03-2025', 'dd-mm-yyyy'),
   '06202453787');

insert into sofor
  (sofor_id, nev, szuletesi_ido, jogositvany_ervenyesseg, telefonszam)
values
  (2,
   'Ujvarosi Bence',
   to_date('02-10-1992', 'dd-mm-yyyy'),
   to_date('07-11-2026', 'dd-mm-yyyy'),
   '06201346893');

insert into sofor
  (sofor_id, nev, szuletesi_ido, jogositvany_ervenyesseg, telefonszam)
values
  (3,
   'Sebok Mate',
   to_date('16-11-1983', 'dd-mm-yyyy'),
   to_date('14-03-2024', 'dd-mm-yyyy'),
   '06202997884');

insert into sofor
  (sofor_id, nev, szuletesi_ido, jogositvany_ervenyesseg, telefonszam)
values
  (4,
   'Marthy Huba',
   to_date('25-01-2000', 'dd-mm-yyyy'),
   to_date('11-03-2022', 'dd-mm-yyyy'),
   '06201188754');

insert into sofor
  (sofor_id, nev, szuletesi_ido, jogositvany_ervenyesseg, telefonszam)
values
  (5,
   'Sashegyi Hanna',
   to_date('11-07-1978', 'dd-mm-yyyy'),
   to_date('27-04-2024', 'dd-mm-yyyy'),
   '06208878967');

insert into sofor
  (sofor_id, nev, szuletesi_ido, jogositvany_ervenyesseg, telefonszam)
values
  (6,
   'Czibere Balazs',
   to_date('14-02-1995', 'dd-mm-yyyy'),
   to_date('15-12-2023', 'dd-mm-yyyy'),
   '06206657859');

select * from sofor;
