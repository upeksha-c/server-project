drop table if exists userinfo;

create table userinfo (
    id serial primary key,
    email varchar(100) unique not null,
    password varchar(255) not null
  );

insert into userinfo (email, password) values ('admin@info.com', 'admin11');  