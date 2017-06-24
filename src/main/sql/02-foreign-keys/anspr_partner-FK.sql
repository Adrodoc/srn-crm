create index anspr_partner_nx101 on anspr_partner(projekt_id);
alter table anspr_partner
  add constraint anspr_partner_fk001
  foreign key (projekt_id)
  references projekt (id)
;

create index anspr_partner_nx102 on anspr_partner(station_id);
alter table anspr_partner
  add constraint anspr_partner_fk002
  foreign key (station_id)
  references station (id)
;
