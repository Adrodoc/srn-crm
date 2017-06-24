drop table if exists mitarbeiter;
---
create table mitarbeiter (
  id        integer not null,
  vorname   varchar(128) not null,
  nachname  varchar(128) not null
);
---
create unique index mitarbeiter_pk on mitarbeiter(id);
alter table mitarbeiter
  add primary key
  using index mitarbeiter_pk
;
---
drop sequence if exists seq_mitarbeiter;
---
create sequence seq_mitarbeiter
  minvalue 1
  maxvalue 2147483647
  no cycle
  owned by mitarbeiter.id
;
---
alter table mitarbeiter alter column id set default nextval('seq_mitarbeiter');
