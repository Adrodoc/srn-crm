create index geraet_nx101 on geraet(station_id);
---
alter table geraet
  add constraint geraet_fk001
  foreign key (station_id)
  references station (id)
;
