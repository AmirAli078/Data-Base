Create table book1(
book_id int primary key,
book_name varchar(20) not null,
book_pages bigint not null,
book_author varchar(20)
);
alter table Book1
add column price int not null;
desc book1;
alter table book1
 modify column price int;
 alter table book1
 drop column price;
 insert into book1(book_id, book_name,book_pages,book_author,price)
 values 
 (1,'eleven minutes',330,'palo',400);