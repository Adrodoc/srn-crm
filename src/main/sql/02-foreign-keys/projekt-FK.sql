create index projekt_nx101 on projekt(kunde_id);
alter table projekt
  add constraint projekt_fk001
  foreign key (kunde_id)
  references kunde (id)
;

create index projekt_nx102 on projekt(manager_id);
alter table projekt
  add constraint projekt_fk002
  foreign key (manager_id)
  references mitarbeiter (id)
;
