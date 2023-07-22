create database students;
use students;
create table student(
st_id int primary key auto_increment,
st_name varchar(20) not null,
st_age int(5) not null
);
create table department(
d_id int primary key auto_increment,
d_name varchar(20) not null,
st_id int not null,
foreign key (st_id) references student(st_id)
);
create table course(
c_id int primary key auto_increment,
c_name varchar(20) not null,
c_name2 varchar(20) not null,
c_name3 varchar(20) not null,
c_name4 varchar(20) not null,
st_id int not null,
foreign key (st_id) references student(st_id)
);
create table marks(
id int primary key auto_increment,
mark int not null,
mark1 int not null,
mark2 int not null,
mark3 int not null,
mark4 int not null,
st_id int not null,
foreign key (st_id) references student(st_id)
);
insert into student(st_id,st_name,st_age)
values(1,'Touqeer',22),
(2,'Amir',23),
(3,'Ubaid',20),
(4,'Inam',21),
(5,'Saqib',22);
insert into department(d_id,d_name,st_id)
values(1,'CS',1),
(2,'SW',2),
(3,'IT',3),
(4,'TE',4),
(5,'ES',5);
insert into course(c_id,c_name,c_name2,c_name3,c_name4,st_id)
values(1,'java','DE','WE','PE',1),
(2,'DLD','CSE','LAAG','OOP',2),
(3,'FE','C++','CG','MAPAD',3),
(4,'C#','ICT','BES','CS',4),
(5,'Python','IS','PS','PS',5);
insert into marks(id,mark,mark1,mark2,mark3,mark4,st_id)
values(1,68,45,77,88,56),
(2,78,67,89,56,90,2),
(3,89,77,87,54,93,3),
(4,98,79,69,88,93,4),
(5,67,47,79,66,80,5);
-- sql query to return all students with their department name
 select *, d.d_id,d.d_name from student s inner join department d on s.st_id=d.st_id;
 
 -- sql query to return all students with their Course name
 select *, c.c_name from student s inner join course c on s.st_id=c.st_id; 
 
 -- sql query to return all students with course and marks in each course 
 select *, c.c_name, m.mark from student s inner join course c on s.st_id=c.st_id 
 inner join marks m on m.st_id=s.st_id;
 
 -- sql query to count coureses of each student
 select count(c.c_id) as 'total courses', s.* from course c inner join student s on c.st_id=s.st_id;
 
 -- write  sql query to sum of all courses 
 select sum(mark) as 'all marks', s.* from marks m inner join student s on m.st_id=s.st_id;
 
 -- write sql query to avg the marks of students  
 select avg(mark) as 'avg marks', s.* from marks m inner join student s on m.st_id=s.st_id;