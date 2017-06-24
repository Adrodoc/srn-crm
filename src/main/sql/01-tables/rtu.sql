drop table if exists rtu cascade;
---
create table rtu (
  id            integer not null,
  station_id    integer
);
---
create unique index rtu_pk on rtu(id);
alter table rtu
  add primary key
  using index rtu_pk
;
---
drop sequence if exists seq_rtu;
---
create sequence seq_rtu
  minvalue 1
  maxvalue 2147483647
  no cycle
  owned by rtu.id
;
---
alter table rtu alter column id set default nextval('seq_rtu');
