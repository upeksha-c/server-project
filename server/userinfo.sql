drop table if exists userinfo;

create table userinfo (
    id serial primary key,
    firstname varchar(50) not null,
    lastname varchar(50) not null,
    phone Numeric not null,
    email varchar(100) unique not null,
    password varchar(255) not null
)



insert into userinfo (firstname, lastname, phone, email, password) values ('Ben', 'din', '1234567890','admin@info.com', 'admin11');  