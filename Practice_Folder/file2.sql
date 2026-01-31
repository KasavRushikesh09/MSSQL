--creating database,table as well as insert data

create table student(
    id  int primary key,
    name varchar(50),
    age int
);
insert into student values (1,'sam bahadur',22);
insert into student values (2,'rushi kasav',23);

select * from student;

--CRUD Operations
--create 
Insert into student values(3,'dhiraj',21);

--read
select name from student;
select * from student where age >22;

--update
update student set age = 26 where id = 2

--delete
delete from student where id = 1
select * from student

-- Normalization
--organized data to avoid duplicates

--Inner Joins
create table customers(
    id int primary key,
    name varchar(30),
)
insert into customers values(1,'ram');
insert into customers values(2,'sham');

select * from customers

create table orders(
id int primary key,
customer_id int,
product varchar(50),

CONSTRAINT fk_customer
foreign key (customer_id)
references customers(id)
);

INSERT INTO orders VALUES (1, 1, 'Phone');
INSERT INTO orders VALUES (2, 1, 'Laptop');
--Inner join
select c.name,o.product
from customers c
inner join orders o
ON c.id = o.customer_id;

--left join
select c.name,o.product
from customers c
left join orders o
on c.id = o.customer_id

--outer join
select c.name,o.product
from customers c
right join orders o
on c.id = o.customer_id

--Full outer join
select c.name,o.product
from customers c
full outer join orders o
on c.id = o.customer_id;

--cross join
--it is used for testing only
select c.name,o.product
from customers c
cross join orders o


