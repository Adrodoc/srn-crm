create index modem_nx101 on modem(station_id);
---
alter table modem
  add constraint modem_fk001
  foreign key (station_id)
  references station (id)
;
