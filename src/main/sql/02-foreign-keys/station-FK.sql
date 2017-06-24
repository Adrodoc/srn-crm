create index station_nx101 on station(projekt_id);
---
alter table station
  add constraint station_fk001
  foreign key (projekt_id)
  references projekt (id)
;
