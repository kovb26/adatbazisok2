alter table menetlevel
add constraint start_kereskedes_fk foreign key (start_kereskedes) references kereskedes(kereskedes_id);
                                                
alter table menetlevel
add constraint cel_kereskedes_fk foreign key (cel_kereskedes) references kereskedes(kereskedes_id);

alter table menetlevel
add constraint sofor_fk foreign key (sofor_id) references sofor(sofor_id);
