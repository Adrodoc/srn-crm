drop table if exists projekt;
---
create table projekt (
  id                integer not null,
  kunde_id          integer not null,
  manager_id        integer not null,
  nummer            integer not null,
  name              varchar(128) not null,
  umfang            varchar(1024) not null,
  besonderheiten    varchar(1024) not null
);
---
create unique index projekt_pk on projekt(id);
alter table projekt
  add primary key
  using index projekt_pk
;
---
drop sequence if exists seq_projekt;
---
create sequence seq_projekt
  minvalue 1
  maxvalue 2147483647
  no cycle
  owned by projekt.id
;
---
alter table projekt alter column id set default nextval('seq_projekt');
