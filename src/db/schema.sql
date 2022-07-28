create table posts (
  id serial primary key,
  name varchar(2000),
  description text,
  created timestamp without time zone not null default now()
);

insert into posts (name) values ('О чем этот форум?');
insert into posts (name) values ('Правила форума.');

create table authorities (
    id serial primary key,
    authority varchar(50) not null unique
);

create table users (
    id serial primary key,
    username varchar(50) not null unique,
    password varchar(100) not null,
    enabled boolean default true,
    authority_id int not null references authorities(id)
);

insert into authorities (authority) values ('ROLE_USER');
insert into authorities (authority) values ('ROLE_ADMIN');
