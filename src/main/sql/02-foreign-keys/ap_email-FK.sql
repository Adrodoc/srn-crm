create index ap_email_nx101 on ap_email(anspr_partner_id);
---
alter table ap_email
  add constraint ap_email_fk001
  foreign key (anspr_partner_id)
  references anspr_partner (id)
;
