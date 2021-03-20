create database assignments
use assignments
create table student(
ID int not null,
Name varchar(30) not null,
Contact int not null,
Degree varchar(30) not null,

);
delete student where ID=104;
insert into student values(101,'Aman',1288556633,'BSC');
insert into student values(102,'Afzal',235554552,'B.Tech');
insert into student values(103,'Manish',46778877,'MSC');
insert into student values(104,'Abhishek',2135468600,'M.Tech');
insert into student values(105,'Zafar',1234567980,'Diploma');

/* *************WHERE,AND,OR,NOT****************** */

select * from student
where Name = 'Aman' and Degree ='BSC'


select * from student
where Degree = 'M.Tech' and ID = '104'



select * from student
where ID = 103 and Name = 'Manish'


select * from student
where Contact = 1234567980 and ID = 105


select * from student
where ID = 101 and Degree = 'B.tech'


select * from student
where Name = 'Zafar' and ( not ID = 101 or ID =105)


select * from student
where ID=101 and ( not Name ='Aman' or Name = 'Diksha')


select * from student
where Name = 'Afzal' and ( not ID = 103 or ID =102)


select * from student
where Contact=46778877 and ( not Degree = 'B.tech' or  Degree = 'MSC')



select * from student
where  Degree = 'Diploma' and (not name = 'Arun' or name = 'Zafar')

select * from student 
order by Name ASC;
/* *************ORDER BY****************** */
select * from student 
order by Name ASC;

select * from student 
order by Name DESC;

select * from student 
order by Degree DESC;

select * from student 
order by Name ASC,Degree DESC;

/* *************LIKE****************** */
select * from student
where ID LIKE '%1';

select * from student
where ID LIKE '1%';

select * from student
where Name LIKE '__z__%';

SELECT * FROM student
WHERE Name LIKE '_a%';

--END