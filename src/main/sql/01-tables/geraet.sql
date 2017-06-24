drop table if exists geraet cascade;
---
create table geraet (
  id            integer not null,
  station_id    integer
);
---
create unique index geraet_pk on geraet(id);
alter table geraet
  add primary key
  using index geraet_pk
;
---
drop sequence if exists seq_geraet;
---
create sequence seq_geraet
  minvalue 1
  maxvalue 2147483647
  no cycle
  owned by geraet.id
;
---
alter table geraet alter column id set default nextval('seq_geraet');
