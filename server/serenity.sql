create database Serenity; 
drop table records;
use Serenity;


create table users (
id int not null auto_increment primary key,
name varchar(50) not null,
email varchar(50) not null,
password varchar(50) not null,
_created datetime default current_timestamp);

create table records(
id int not null auto_increment primary key,
date int not null,
time int not null,
mood int not null,
usersid int not null,
_created datetime default current_timestamp);



insert into users (name, email, password)
values ('Roderick', 'rod@y.com', 'peace2'),
('Eunjin','jin@y.com','love3'),
('PJ','pj@y.com', 'fight4'),
('Will','wil@y.com', 'soar5'),
('Nick','nick@y.com', 'pathfinder1'),
('Hunter','hunt@y.com', 'lead6');

alter table records 
add constraint fk_users_id
foreign key (usersid)
references users(id);