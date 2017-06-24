create index rtu_nx101 on rtu(station_id);
---
alter table rtu
  add constraint rtu_fk001
  foreign key (station_id)
  references station (id)
;
