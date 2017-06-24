drop table if exists kunde cascade;
---
create table kunde (
  id            integer         not null,
  name          varchar(128)    not null,
  land_code     char(3)         not null,
  ort           varchar(128)    not null,
  plz           char(5)         not null,
  strasse       varchar(128)    not null,
  hausnummer    varchar(8)      not null
);
---
comment on column kunde.land_code is 'ISO 3166-1 ALPHA-3';
---
create unique index kunde_pk on kunde(id);
alter table kunde
  add primary key
  using index kunde_pk
;
---
drop sequence if exists seq_kunde;
---
create sequence seq_kunde
  minvalue 1
  maxvalue 2147483647
  no cycle
  owned by kunde.id
;
---
alter table kunde alter column id set default nextval('seq_kunde');
