create index station_nx101 on station(projekt_id);
---
alter table station
  add constraint station_fk001
  foreign key (projekt_id)
  references projekt (id)
;
---
create index station_nx102 on station(eigentuemer_id);
---
alter table station
  add constraint station_fk002
  foreign key (eigentuemer_id)
  references station_eigentuemer (id)
;
