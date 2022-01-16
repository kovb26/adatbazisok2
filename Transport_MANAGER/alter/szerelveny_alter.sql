alter table szerelveny
add constraint vontato_fk foreign key (vontato_id) references jarmu(jarmu_id);

alter table szerelveny
add constraint utanfuto_fk foreign key (utanfuto_id) references jarmu(jarmu_id);
