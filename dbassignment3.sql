create database DBAssignment3;
use DBAssignment3;

create table Department (
dept_id integer not null primary key,
dept_name varchar(50));

insert into Department values (1,"Finance");
insert into Department values (2,"Training");
insert into Department values (3,"Marketing");

create table Employee(
empid integer not null primary key,
emp_name varchar(20),
salary	integer(7),
dept_id integer(4),
CONSTRAINT dept_id_fk FOREIGN KEY (dept_id) REFERENCES Department(dept_id));

insert into Employee values(1,"Arun",8000,1);
insert into Employee values(2,"Kiran",7000,1);
insert into Employee values(3,"Scott",3000,1);
insert into Employee values(4,"Max",9000,2);
insert into Employee values(5,"Jack",80000,2);
insert into Employee values(6,"King",6000,3);

select empid,emp_name,dept_id,sum(salary)sum_of_salary from Employee group by dept_id;
select * from employee where salary>17000 group by dept_id;
select dept_id,sum(salary) FROM Employee GROUP BY dept_id HAVING sum(salary) > 18000 ;
select dept_id,sum(salary) FROM Employee GROUP BY dept_id HAVING sum(salary) < 20000 ;

select * FROM Employee ORDER BY emp_name DESC;
select * FROM Employee ORDER BY emp_name ASC;
select * FROM Employee ORDER BY salary DESC;
select * FROM Employee ORDER BY salary ASC;
