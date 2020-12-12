create database DBAssignment1;
use DBAssignment1;

create table Member(Member_Id int(5),
 Member_Name varchar(30),
 Member_Address varchar(50),
 Acc_Open_Date date,
 Membership_type varchar(20), 
 Penalty_Amount int(7));
 
 create table Books(Book_No int(6),
 Book_Name varchar(30), 
 Author_Name varchar(30),
 Cost int(7), 
 Category Char(10));
 
 create table Issue(Lib_Issue_Id int(10), 
 Book_No int(6), 
 Member_Id int(5),
 Issue_Date Date, 
 Return_Date Date);
 
  desc Member;
  desc  Books;
  desc Issue;
  
alter table Member drop column Penalty_Amount;

insert into Member values(1,'Richa Sharma','Pune','2005-12-10','Lifetime');
insert into Member values(2,'Garima Sen','Pune','2020-12-04','Annual');

insert into Member values(1,'Richa Sharma','Pune','2005-12-10','Lifetime');
insert into Member values(2,'Garima Sen','Pune','2020-12-04','Annual');
insert into Member values(3,'Shubham Badhe','Faizpur','2012-03-20','Half Yearly');
insert into Member values(4,'Sagar Patil','Jalgaon','2007-04-22','Lifetime');
insert into Member values(5,'Sanket Falak','Savada','2015-05-20','Quarterly');
select * from Member;


insert into Books values(101,'Let us C','Denis Ritchie', 450, 'System');
insert into Books values(102,'Oracle–Complete Ref','Loni', 550, 'Database');
insert into Books values(103,'Mastering SQL','Loni', 250, 'Database');
insert into Books values(104,'PL SQL-Ref','ScottUrman', 750, 'Database');
select * from Books;

select * from Member;
select * from Books;

update Books set Cost=300 where Book_No=103;

drop table Issue;
 
create table Issue(Lib_Issue_Id int(10), 
Book_No int(6), 
Member_Id int(5),
Issue_Date Date,
Return_Date Date);

insert into Issue(Lib_Issue_Id, Book_No, Member_Id, Issue_Date)values(7001,101,1,'2006-12-10');
insert into Issue(Lib_Issue_Id, Book_No, Member_Id, Issue_Date)values(7002,102,2,'2006-12-25');
insert into Issue(Lib_Issue_Id, Book_No, Member_Id, Issue_Date)values(7003,104,1,'2006-01-15');
insert into Issue(Lib_Issue_Id, Book_No, Member_Id, Issue_Date)values(7004,101,1,'2006-07-04');
insert into Issue(Lib_Issue_Id, Book_No, Member_Id, Issue_Date)values(7005,104,2,'2006-11-15');
insert into Issue(Lib_Issue_Id, Book_No, Member_Id, Issue_Date)values(7006,101,3,'2006-02-18');
select * from Issue;

  

