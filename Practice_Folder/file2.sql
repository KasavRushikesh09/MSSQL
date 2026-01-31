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


