create database tinder_app;
use tinder_app;
create table user(
user_id int(10) primary key auto_increment not null , 
first_name char(20) not null,
last_name char(10),
birth_date date,
gender char(10) not null,
bio varchar(100)
); 
create table people(
people_id int(10) primary key auto_increment not null,
min_age int(5),
max_age int(5),
gender char(10),
user_id int,
foreign key (user_id) references user (user_id)
);
create table picture(
pic_id int(10) primary key auto_increment not null,
pic_path varchar(20) not null,
upload_date date,
user_id int,
foreign key (user_id) references user(user_id)
);
create table Comments(
comment_id int primary key auto_increment not null,
commenter_id int ,
user_id int,
foreign key (user_id) references user(user_id)
);