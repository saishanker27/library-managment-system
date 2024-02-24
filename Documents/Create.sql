create schema librarymanagement;
use librarymanagement;

CREATE TABLE library_member(
member_id INT PRIMARY KEY,
first_name varchar(25),
last_name  varchar(25),
email_address varchar(35),
phone_number BIGINT,
membership_level varchar(10),
address_id INT,
FOREIGN KEY(address_id) REFERENCES address(address_id) );

drop table library_member;

CREATE TABLE checkout(
id INT,
isbn BIGINT,
member_id INT,
checkout_date datetime,
due_date datetime,
is_returned boolean,
FOREIGN KEY(id) REFERENCES library_member(member_id),
FOREIGN KEY(isbn) REFERENCES book_isbn(isbn) );

CREATE TABLE book_isbn(
isbn BIGINT PRIMARY KEY,
book_id INT,
FOREIGN KEY(book_id) REFERENCES book(book_id));


CREATE TABLE book(
book_id INT PRIMARY KEY,
title varchar(45),
author_name varchar(50),
year_published INT,
quantity INT);

CREATE TABLE address(
address_id INT PRIMARY KEY,
line1 varchar(30),
line2 varchar(30),
city varchar(20),
state char(2));


