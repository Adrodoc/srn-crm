create index ap_telefon_nx101 on ap_telefon(anspr_partner_id);
alter table ap_telefon
  add constraint ap_telefon_fk001
  foreign key (anspr_partner_id)
  references anspr_partner (id)
;
