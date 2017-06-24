drop table if exists station cascade;
---
create table station (
  id                    integer         not null,
  projekt_id            integer         not null,
  name                  varchar(128)    not null,
  latitude              decimal(8,6),
  longitude             decimal(9,6),
  land_code             char(3)         not null,
  ort                   varchar(128)    not null,
  plz                   char(5)         not null,
  strasse               varchar(128)    not null,
  hausnummer            varchar(8)      not null,
  anlagen_typ           varchar(128),
  technische_funktion   varchar(1024)
);
---
comment on column station.land_code is 'ISO 3166-1 ALPHA-3';
---
create unique index station_pk on station(id);
alter table station
  add primary key
  using index station_pk
;
---
drop sequence if exists seq_station;
---
create sequence seq_station
  minvalue 1
  maxvalue 2147483647
  no cycle
  owned by station.id
;
---
alter table station alter column id set default nextval('seq_station');
