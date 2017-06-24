drop table if exists modem;
---
create table modem (
  id            integer not null,
  station_id    integer
);
---
create unique index modem_pk on modem(id);
alter table modem
  add primary key
  using index modem_pk
;
---
drop sequence if exists seq_modem;
---
create sequence seq_modem
  minvalue 1
  maxvalue 2147483647
  no cycle
  owned by modem.id
;
---
alter table modem alter column id set default nextval('seq_modem');
