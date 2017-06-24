drop table if exists ap_email cascade;
---
create table ap_email (
  id                integer not null,
  anspr_partner_id  integer not null,
  email             varchar(128) not null
);
---
create unique index ap_email_pk on ap_email(id);
alter table ap_email
  add primary key
  using index ap_email_pk
;
---
drop sequence if exists seq_ap_email;
---
create sequence seq_ap_email
  minvalue 1
  maxvalue 2147483647
  no cycle
  owned by ap_email.id
;
---
alter table ap_email alter column id set default nextval('seq_ap_email');
