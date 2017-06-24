drop table if exists anspr_partner;
create table anspr_partner (
  id            integer not null,
  projekt_id    integer,
  station_id    integer,
  anrede        varchar(128) not null,
  titel         varchar(128),
  vorname       varchar(128) not null,
  nachname      varchar(128) not null,
  funktion      varchar(128)
);

create unique index anspr_partner_pk on anspr_partner(id);
alter table anspr_partner
  add primary key
  using index anspr_partner_pk
;

alter table anspr_partner
  add constraint anspr_partner_cc0001
  check ((projekt_id is null) <> (station_id is null))
;

drop sequence if exists seq_anspr_partner;
create sequence seq_anspr_partner 
  minvalue 1
  maxvalue 2147483647
  no cycle
  owned by anspr_partner.id
;
alter table anspr_partner alter column id set default nextval('seq_anspr_partner');
