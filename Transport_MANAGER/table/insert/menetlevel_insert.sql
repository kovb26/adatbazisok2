insert into menetlevel(menetlevel_id, szerelveny_id, sofor_id, start_kereskedes, start_nap, cel_kereskedes, cel_nap)
values(1, 4, 3, 1, to_date('11-10-2022', 'dd-mm-yyyy'), 2, to_date('12-10-2022', 'dd-mm-yyyy'));

insert into menetlevel(menetlevel_id, szerelveny_id, sofor_id, start_kereskedes, start_nap, cel_kereskedes, cel_nap)
values(2, 3, 1, 2, to_date('02-11-2022', 'dd-mm-yyyy'), 6, to_date('03-11-2022', 'dd-mm-yyyy'));

insert into menetlevel(menetlevel_id, szerelveny_id, sofor_id, start_kereskedes, start_nap, cel_kereskedes, cel_nap)
values(3, 5, 2, 3, to_date('03-12-2022', 'dd-mm-yyyy'), 5, to_date('04-12-2022', 'dd-mm-yyyy'));

insert into menetlevel(menetlevel_id, szerelveny_id, sofor_id, start_kereskedes, start_nap, cel_kereskedes, cel_nap)
values(4, 2, 4, 4, to_date('04-01-2022', 'dd-mm-yyyy'), 1, to_date('05-01-2022', 'dd-mm-yyyy'));

insert into menetlevel(menetlevel_id, szerelveny_id, sofor_id, start_kereskedes, start_nap, cel_kereskedes, cel_nap)
values(13, 6, 5, 5, to_date('12-02-2022', 'dd-mm-yyyy'), 3, to_date('13-02-2022', 'dd-mm-yyyy'));

insert into menetlevel(menetlevel_id, szerelveny_id, sofor_id, start_kereskedes, start_nap, cel_kereskedes, cel_nap)
values(5, 1, 6, 6, to_date('13-03-2022', 'dd-mm-yyyy'), 7, to_date('14-03-2022', 'dd-mm-yyyy'));

insert into menetlevel(menetlevel_id, szerelveny_id, sofor_id, start_kereskedes, start_nap, cel_kereskedes, cel_nap)
values(6, 3, 5, 8, to_date('04-04-2022', 'dd-mm-yyyy'), 2, to_date('05-04-2022', 'dd-mm-yyyy'));


insert into menetlevel(menetlevel_id, szerelveny_id, sofor_id, start_kereskedes, start_nap, cel_kereskedes, cel_nap)
values(7, 4, 3, 1, to_date('05-05-2022', 'dd-mm-yyyy'), 3, to_date('06-05-2022', 'dd-mm-yyyy'));

insert into menetlevel(menetlevel_id, szerelveny_id, sofor_id, start_kereskedes, start_nap, cel_kereskedes, cel_nap)
values(8, 2, 3, 2, to_date('06-06-2022', 'dd-mm-yyyy'), 4, to_date('07-06-2022', 'dd-mm-yyyy'));

insert into menetlevel(menetlevel_id, szerelveny_id, sofor_id, start_kereskedes, start_nap, cel_kereskedes, cel_nap)
values(9, 5, 2, 3, to_date('07-07-2022', 'dd-mm-yyyy'), 5, to_date('08-07-2022', 'dd-mm-yyyy'));

insert into menetlevel(menetlevel_id, szerelveny_id, sofor_id, start_kereskedes, start_nap, cel_kereskedes, cel_nap)
values(10, 1, 1, 7, to_date('08-08-2022', 'dd-mm-yyyy'), 6, to_date('09-08-2022', 'dd-mm-yyyy'));

insert into menetlevel(menetlevel_id, szerelveny_id, sofor_id, start_kereskedes, start_nap, cel_kereskedes, cel_nap)
values(11, 6, 2, 5, to_date('09-10-2022', 'dd-mm-yyyy'), 1, to_date('10-10-2022', 'dd-mm-yyyy'));

insert into menetlevel(menetlevel_id, szerelveny_id, sofor_id, start_kereskedes, start_nap, cel_kereskedes, cel_nap)
values(12, 4, 3, 6, to_date('10-09-2022', 'dd-mm-yyyy'), 2, to_date('11-09-2022', 'dd-mm-yyyy'));

select * from menetlevel order by menetlevel.menetlevel_id;
