drop table if exists ansprechpartner;
create table ansprechpartner (
  id            integer not null,
  projekt_id    integer,
  station_id    integer,
  anrede        varchar(128) not null,
  titel         varchar(128),
  vorname       varchar(128) not null,
  nachname      varchar(128) not null,
  funktion      varchar(128)
);

create unique index ansprechpartner_pk on ansprechpartner(id);
alter table ansprechpartner
  add primary key
  using index ansprechpartner_pk
;

alter table ansprechpartner
  add constraint ansprechpartner_cc0001
  check ((projekt_id is null) <> (station_id is null))
;

drop sequence if exists seq_ansprechpartner;
create sequence seq_ansprechpartner 
  minvalue 1
  maxvalue 2147483647
  no cycle
  owned by ansprechpartner.id
;
alter table ansprechpartner alter column id set default nextval('seq_ansprechpartner');
