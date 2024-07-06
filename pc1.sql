--Table 1
create table Deposit(
   ActNo int,
   cname varchar(30),
   bname varchar(30),
   amount decimal(8,2),
   adate datetime
)

select *from Deposit

insert into Deposit(ActNo,cname,bname,amount,adate) values
(101,'ANIL','Vrce',1000.00,'1-3-1995')

insert into Deposit(ActNo,cname,bname,amount,adate) values
(102,'Sunil','Ajni',5000.00,'4-1-1996')

insert into Deposit(ActNo,cname,bname,amount,adate) values
(103,'Mehul','Karolbagh',3500.00,'17-nov-1995')

insert into Deposit(ActNo,cname,bname,amount,adate) values
(104,'Madhuri','Chandi',1200.00,'17-dec-1995')

insert into Deposit(ActNo,cname,bname,amount,adate) values
(105,'Pramod','M.G.Road',3000.00,'27-mar-1996')

insert into Deposit(ActNo,cname,bname,amount,adate) values
(106,'Sandip','Andheri',2000.00,'31-mar-1996')

insert into Deposit(ActNo,cname,bname,amount,adate) values
(107,'Shivani','Virar',1000.00,'05-3-1996')

insert into Deposit(ActNo,cname,bname,amount,adate) values
(108,'Kranti','NEHRU PLACE ',5000.00,'2-7-1995')

insert into Deposit(ActNo,cname,bname,amount,adate) values
(109,'Minu','Powai',7000.00,'10-8-1995')

delete from Deposit where ActNo=1

select * from Deposit order by ActNo

CREATE TABLE BRANCH
(
	BNAME VARCHAR(50),
	CITY VARCHAR(50)
);

CREATE TABLE CUSTOMERS
(
	CNAME VARCHAR(50),
	CITY VARCHAR(50)
);

CREATE TABLE BORROW
(
	LOANNO INT,
	CNAME VARCHAR(50),
	BNAME VARCHAR(50),
	AMOUNT DECIMAL(8,2)
);


INSERT INTO BRANCH (BNAME,CITY) VALUES
('VRCE','NAGPUR');

INSERT INTO BRANCH (BNAME,CITY) VALUES
('AJNI','NAGPUR');

INSERT INTO BRANCH (BNAME,CITY) VALUES
('KAROLBAGH','DELHI');

INSERT INTO BRANCH (BNAME,CITY) VALUES
('CHANDI','DELHI');

INSERT INTO BRANCH (BNAME,CITY) VALUES
('DHARAMPETH','NAGPUR');

INSERT INTO BRANCH (BNAME,CITY) VALUES
('M.G.ROAD','BANGLORE');

INSERT INTO BRANCH (BNAME,CITY) VALUES
('ANDHERI','BOMBAY');

INSERT INTO BRANCH (BNAME,CITY) VALUES
('VIRAR','BOMBAY');

INSERT INTO BRANCH (BNAME,CITY) VALUES
('NEHRU PLACE','DELHI');

INSERT INTO BRANCH (BNAME,CITY) VALUES
('POWAI','BOMBAI');

SELECT * FROM BRANCH;

INSERT INTO CUSTOMERS (CNAME,CITY) VALUES
('ANIL','CALCUTTA');

INSERT INTO CUSTOMERS (CNAME,CITY) VALUES
('SUNIL','DELHI');

INSERT INTO CUSTOMERS (CNAME,CITY) VALUES
('MEHUL','BARODA');

INSERT INTO CUSTOMERS (CNAME,CITY) VALUES
('MANDAR','PATNA');

INSERT INTO CUSTOMERS (CNAME,CITY) VALUES
('MADHURI','NAGPUR');

INSERT INTO CUSTOMERS (CNAME,CITY) VALUES
('PRAMOD','NAGPUR');

INSERT INTO CUSTOMERS (CNAME,CITY) VALUES
('SANDIP','SURAT');

INSERT INTO CUSTOMERS (CNAME,CITY) VALUES
('SHIVANI','BOMBAY');

INSERT INTO CUSTOMERS (CNAME,CITY) VALUES
('KRANTI','BOMBAY');

INSERT INTO CUSTOMERS (CNAME,CITY) VALUES
('NAREN','BOMBAY');

select * from customers


INSERT INTO BORROW (LOANNO,CNAME,BNAME,AMOUNT) VALUES
(201,'ANIL','VRCE',1000.00);

INSERT INTO BORROW (LOANNO,CNAME,BNAME,AMOUNT) VALUES
(206,'MEHUL','AJNI',5000.00);

INSERT INTO BORROW (LOANNO,CNAME,BNAME,AMOUNT) VALUES
(311,'SUNIL','DHARAMPETH',3000.00);

INSERT INTO BORROW (LOANNO,CNAME,BNAME,AMOUNT) VALUES
(321,'MADHURI','ANDHERI',2000.00);

INSERT INTO BORROW (LOANNO,CNAME,BNAME,AMOUNT) VALUES
(375,'PRMOD','VIRAR',8000.00);

INSERT INTO BORROW (LOANNO,CNAME,BNAME,AMOUNT) VALUES
(481,'KRANTI','NEHRU PLACE',3000.00);

SELECT * FROM BORROW;

drop table CUSTOMERS

--que-4
select ActNo,cname,amount from deposit

--que-5
select loanno,amount from borrow

--que-6
select * from customers where 'bname'='andheri'

--que-7
select actno,amount from Deposit where actno=106

--que-8
select cname from BORROW where amount>5000

--que-9
select cname,adate from Deposit where adate > '27-mar-1995'

--que-10
select cname from Deposit where actno<105

--part-B
--que-1
select * from CUSTOMERS where city='nagpur' or city='delhi'

--que-3
select * from BORROW where AMOUNT>=3000 and AMOUNT<=8000
select * from BORROW where AMOUNT between 3000 and 8000

--que-5
select actno,cname,amount from Deposit where bname in ('ajni','karolbagh','M.g.road') and ActNo<104

--que-6
select top 5* from customers

--que-9
select distinct city from customers

--que-11
select * from customers order by city

--que-12
select * from deposit order by amount desc

--part-c
--que-1
select * from DEPOSIT where amount >=3000 and amount <=5000;
update Deposit set amount=5000 where actno=102
update Deposit set amount=5000 where actno=103
update Deposit set amount=3000 where actno=108
update Deposit set amount=5000 where actno=105

--que-2
update BORROW set bname='C.G.Road' where cname='anil'

--que-3
update Deposit set actno=111,amount=5000 where cname='sandip'

--que-4
update borrow set amount=amount+amount*0.10

--que-5
update deposit set amount=5000 where actno between 103 and 107

--que-6
update borrow set amount=NULL where loanno=321

--que-7
select cname from BORROW where amount is NULL
select * from borrow




--lab-6
create table Student(
 stuid int,
 fname varchar(30),
 lname varchar(30),
 website varchar(50),
 city varchar(50)
);

select * from student

INSERT INTO Student (Stuid,fname,lname,Website,City)
VALUES (1011,'Keyur','Patel','techonthenet.com','Rajkot');

INSERT INTO Student (Stuid,fname,lname,Website,City)
VALUES (1022,'Hardik','Shah','digminecraft.com','Ahmedabad');

INSERT INTO Student (Stuid,fname,lname,Website,City)
VALUES (1033,'Kajal','Trivedi','bigactivities.com','Baroda');

INSERT INTO Student (Stuid,fname,lname,Website,City)
VALUES (1044,'Bhoomi','Gajera','checkyourmath.com','Ahmedabad');

INSERT INTO Student (Stuid,fname,lname,Website,City)
VALUES (1055,'Harmit','Mitel',NULL,'Rajkot');

INSERT INTO Student (Stuid,fname,lname,Website,City)
VALUES (1066,'Ashok','Jani',NULL,'Baroda');

--que-1
select fname from Student where fname like ('K%')

--que-2
select fname from Student where fname like ('_____')

--que-3
select fname,lname from Student where city like ('_____a')

--que-4
select fname,lname from Student where lname like ('%tel')

--que-5
select fname,lname from Student where fname like ('ha%t')

--que-6
select fname,lname from Student where fname like ('k_y%')


--part-c
--que-1
select fname from student where website is NULL and fname like ('_____%')

--que-2
select * from Student where lname like ('pat%')

--que-3
select * from Student where city not like ('b%')

--que-4
select * from Student where substring(fname,1,1) in ('a','h')

--que-5
select * from Student where substring(fname,1,2) like '_[a,e,i,o,u]%'

--Math Functions
--que-2
select abs(-25),abs(25),abs(-50),abs(50)

--que-3
select floor(25.2),floor(25.7),floor(-25.2)

--que-4
select ceiling(25.2),ceiling(25.7),ceiling(-25.2)

--que-5
select 5%3

--que-6
select power(3,2)

--que-7
select FLOOR(rand()*100)


--lab-13
create table Student1
(
rno int,
name varchar(30),
branch varchar(30)
)

create table Result
(
rno int,
spi decimal(8,2)
)

create table Employee_
(
employeeno varchar(30),
name varchar(30),
managerno varchar(30),
)


-- Insert data into Student Table.
insert into Student1
values
(101,'Raju','CE'),
(102,'Amit','CE'),
(103,'Sanjay','ME'),
(104,'Neha','EC'),
(105,'Meera','EE'),
(106,'Mahesh','ME')

-- Insert data into Result Table.
insert into Result
values
(101,8.8),
(102,9.2),
(103,7.6),
(104,8.2),
(105,7.0),
(106,8.9)

-- Insert data into Emplotyee Table.
insert into Employee_
values
('E01','Tarun',NULL),
('E02','Rohan','E02'),
('E03','Priya','E01'),
('E04','Milan','E03'),
('E05','Jay','E01'),
('E06','Anjana','E04')

--part-A
--que-1
select * from student1 cross join Result

--que-2
select s.rno,name,branch,spi from student1 s
inner join Result as r 
on s.rno=r.rno

--que-3
select s.rno,name,branch,spi from student1 s
inner join Result as r 
on s.rno=r.rno
where branch='ce'

--que-4
select s.rno,name,branch,spi from student1 s
inner join Result as r 
on s.rno=r.rno
where branch!='ec'

--que-5
select avg(r.spi) from student1 s
inner join Result as r 
on s.rno=r.rno
group by s.branch

--que-6
select avg(r.spi) from student1 s
inner join Result as r 
on s.rno=r.rno
group by s.branch
order by avg(r.spi)

--que-7
select avg(r.spi) from student1 s
inner join Result as r 
on s.rno=r.rno
group by s.branch
having s.branch in ('me','ce')

--que-8
select * from student1 s
left join result r
on s.rno=r.rno

--que-9
select * from student1 s
right join result r
on s.rno=r.rno

--que-10
select * from student1 s
full join result r
on s.rno=r.rno

--que-11
select e1.name,e2.name from employee_ e1
inner join employee_ e2 on e1.employeeno=e2.managerno

--part-B
create table person
(
personid int,
person_name varchar(30),
departmentid int,
salary int,
joiningdate datetime,
city varchar(30)
)
create table department
(
departmentid int,
department_name varchar(30),
departmentcode varchar(30),
location varchar(30)
)

insert into  Person
(PersonID,person_name,DepartmentID,Salary,JoiningDate,City)
values
(101, 'Rahul Tripathi' ,2 ,56000 ,'01-01-2000' ,'Rajkot');
-- 2
insert into  Person
(PersonID,person_name,DepartmentID,Salary,JoiningDate,City)
values
(102, 'Hardik Pandya' ,3, 18000 ,'25-SEP-2001' ,'Ahmedabad');
-- 3
insert into  Person
(PersonID,person_name,DepartmentID,Salary,JoiningDate,City)
values
(103, 'Bhavin Kaanni' ,4, 25000 ,'14-may-2000' ,'Baroda');
-- 4
insert into  Person
(PersonID,person_name,DepartmentID,Salary,JoiningDate,City)
values
(104, 'Bhoomi Vaishnav', 1, 39000, '08-02-2005', 'Rajkot');
-- 5
insert into  Person
(PersonID,person_name,DepartmentID,Salary,JoiningDate,City)
values
(105, 'Rohit Topiya' ,2, 17000 ,'23-jul-2001' ,'Jamnagar');
-- 6
insert into  Person
(PersonID,person_name,DepartmentID,Salary,JoiningDate,City)
values
(106, 'Priya Menpara', NULL, 9000, '18-oct-2000', 'Ahmedabad');
-- 7
insert into  Person
(PersonID,person_name,DepartmentID,Salary,JoiningDate,City)
values
(107, 'Neha Sharma', 2, 34000, '25-dec-2002', 'Rajkot');
-- 8
insert into  Person
(PersonID,person_name,DepartmentID,Salary,JoiningDate,City)
values
(108, 'Nayan Goswami', 3, 25000, '01-07-2001', 'Rajkot');
-- 9
insert into  Person
(PersonID,person_name,DepartmentID,Salary,JoiningDate,City)
values
(109, 'Mehul Bhundiya', 4, 13500, '09-01-2005', 'Baroda');
-- 10
insert into  Person
(PersonID,person_name,DepartmentID,Salary,JoiningDate,City)
values
(110, 'Mohit Maru', 5, 14000, '25-may-2000', 'Jamnagar');

insert into Department
values
(1,'Admin','Adm','A-Block')

insert into Department
values
(2,'Computer','CE','C-Block')

insert into Department
values
(3,'Civil','CI','G-Block')

insert into Department
values
(4,'Electrical','EE','E-Block')

insert into Department
values
(5,'Mechanical','ME','B-Block')


select * from person
select * from department

--que-1
select p.person_name,d.department_name,d.departmentcode from  person p
inner join department d
on p.departmentid=d.departmentid


--que-2
select d.department_name as dept,max(p.salary) as max_Sal,min(p.salary) as min_sal from person p
inner join department d
on p.departmentid=d.departmentid
group by d.department_name

--que-3
select sum(p.salary),d.department_name from person p
inner join department d
on p.departmentid=d.departmentid
group by d.department_name
having sum(p.salary) > 100000

--que-5
select person_name from person
where departmentid is null

--que-6
select count(p.personid),d.department_name from person p
inner join department d
on p.departmentid=d.departmentid
group by d.department_name

--que-7
select avg(salary) from person
where city='Ahmedabad'

--que-9
select d.department_name from person p
inner join department d
on p.departmentid=d.departmentid
group by d.department_name
having count(p.personid) <=0

--que-10
select sum(p.salary) total ,avg(p.salary) max_Sal,max(p.salary) min_sal from person p
inner join department d
on p.departmentid=d.departmentid
group by d.department_name,p.city


--part-c
--que-3
select concat(substring(person_name,1,3),substring(city,len(city)-3,len(city))) from person

--que-5
select person_name from person 
where datediff(day,joiningdate,getdate())>365