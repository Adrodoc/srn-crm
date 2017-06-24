drop table if exists ap_telefon;
---
create table ap_telefon (
  id                integer not null,
  anspr_partner_id  integer not null,
  vorwahl           varchar(8) not null,
  nummer            varchar(16) not null
);
---
create unique index ap_telefon_pk on ap_telefon(id);
alter table ap_telefon
  add primary key
  using index ap_telefon_pk
;
---
drop sequence if exists seq_ap_telefon;
---
create sequence seq_ap_telefon
  minvalue 1
  maxvalue 2147483647
  no cycle
  owned by ap_telefon.id
;
---
alter table ap_telefon alter column id set default nextval('seq_ap_telefon');
