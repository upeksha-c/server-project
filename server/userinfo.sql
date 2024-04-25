drop table if exists userinfo;

create table userinfo (
    id serial primary key,
    firstname varchar(50) not null,
    lastname varchar(50) not null,
    phone Numeric not null,
    email varchar(100) unique not null,
    image_name varchar(255),
    password varchar(255) not null
)



