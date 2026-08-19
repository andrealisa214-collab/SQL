
use my_andrea;
create table students_tables(
Student_ID int,
Name varchar(90),
Course varchar(80),
Age int,
Marks int,
City varchar(100)
);
select*from students_table;
insert into students_table values(22,'andrea','bcom',18,88,'mangalore'),(22,'alriya','bca',14,70,'bangalore'),(23,'jenevia','BBA',25,50,'kochi'),(24,'sweedal','bba',24,85,'mangalore'),(25,'riya','Bca',18,30,'mangalore');
select*from students_table;
update students_table
set Course='BCom (DA)' 
where Student_ID=5;
update students_table
set Age=50
where Student_ID=2;
update students_table
set Age=25
where Student_ID=25;
update students_table
set Course='bcom(AI)'
where Student_ID=24;
update students_table
set Marks=63
where Age=50;
select*from students_table;
delete from students_table where course='bca';
delete from students_table where course='bba';
delete from students_table where marks=45;
delete from students_table where age=36;
delete from students_table where course='BCom';
select*from students_table;