drop table if exists station_eigentuemer cascade;
---
create table station_eigentuemer (
  id            integer         not null,
  vorname       varchar(128)    not null,
  nachname      varchar(128)    not null,
  land_code     char(3)         not null,
  ort           varchar(128)    not null,
  plz           char(5)         not null,
  strasse       varchar(128)    not null,
  hausnummer    varchar(8)      not null
);
---
comment on column station_eigentuemer.land_code is 'ISO 3166-1 ALPHA-3';
---
create unique index station_eigentuemer_pk on station_eigentuemer(id);
alter table station_eigentuemer
  add primary key
  using index station_eigentuemer_pk
;
---
drop sequence if exists seq_station_eigentuemer;
---
create sequence seq_station_eigentuemer
  minvalue 1
  maxvalue 2147483647
  no cycle
  owned by station_eigentuemer.id
;
---
alter table station_eigentuemer alter column id set default nextval('seq_station_eigentuemer');
