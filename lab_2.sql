USE Paresh;

CREATE TABLE DEPOSIT
(
	ACTNO INT,
	CNAME VARCHAR(50),
	BNAME VARCHAR(50),
	AMOUNT DECIMAL(8,2),
	ADATE DATETIME
);

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

--DEPOSIT

INSERT INTO DEPOSIT (ACTNO,CNAME,BNAME,AMOUNT,ADATE) VALUES
(101,'ANIL','VRCE',1000.00,'01-MAR-95');

INSERT INTO DEPOSIT (ACTNO,CNAME,BNAME,AMOUNT,ADATE) VALUES
(102,'SUNIL','AJNI',5000.00,'04-JAN-96');

INSERT INTO DEPOSIT (ACTNO,CNAME,BNAME,AMOUNT,ADATE) VALUES
(103,'MEHUL','KAROLBAGH',3500.00,'17-NOV-95');

INSERT INTO DEPOSIT (ACTNO,CNAME,BNAME,AMOUNT,ADATE) VALUES
(104,'MADHURI','CHANDI',1200.00,'17-DEC-95');

INSERT INTO DEPOSIT (ACTNO,CNAME,BNAME,AMOUNT,ADATE) VALUES
(105,'PRMOD','M.G.ROAD',3000.00,'27-MAR-96');

INSERT INTO DEPOSIT (ACTNO,CNAME,BNAME,AMOUNT,ADATE) VALUES
(106,'SANDIP','ANDHERI',2000.00,'31-MAR-96');

INSERT INTO DEPOSIT (ACTNO,CNAME,BNAME,AMOUNT,ADATE) VALUES
(107,'SHIVANI','VIRAR',1000.00,'5-SEP-95');

INSERT INTO DEPOSIT (ACTNO,CNAME,BNAME,AMOUNT,ADATE) VALUES
(108,'KRANTI','NEHRU PLACE',5000.00,'2-JUL-95');

INSERT INTO DEPOSIT (ACTNO,CNAME,BNAME,AMOUNT,ADATE) VALUES
(109,'MINU','POWAI',7000.00,'10-AUG-95');

SELECT * FROM DEPOSIT;

/*TRUNCATE TABLE DEPOSIT;*/

--BRANCH

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

--CUSTOMERS

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

SELECT * FROM CUSTOMERS;

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



--PART - A
--QUERY

SELECT * FROM DEPOSIT;
SELECT * FROM BORROW;
SELECT * FROM CUSTOMERS;
SELECT ACTNO,CNAME,AMOUNT FROM DEPOSIT;
SELECT LOANNO,AMOUNT FROM BORROW;


--query no :6
--SELECT * FROM BORROW where BNAME='ANDHERI'; 

--QUE:7
--SELECT * FROM DEPOSIT WHERE ACTNO=105;

--que:8
select CNAME from BORROW WHERE AMOUNT < 5000;

--que:9
select CNAME from DEPOSIT WHERE ADATE < '12-01-1996';

--que:10
select CNAME from DEPOSIT where ACTNO < 105;


--PART - B
--que-1
select * from CUSTOMERS where city='NAGPUR' or city='DELHI';

--que-2
select CNAME,BNAME from DEPOSIT where AMOUNT > 4000 and ACTNO < 105;

--que-3
select CNAME from BORROW where AMOUNT >=3000 and AMOUNT <=8000;
select CNAME from BORROW where AMOUNT BETWEEN 3000 and 8000;

--que-4
select * from DEPOSIT where BNAME!='ANDHERI';

--que-5
select ACTNO,CNAME,AMOUNT from DEPOSIT where bname in('AJNI','KAROLBAGH','M.G.ROAD') and ACTNO < 104;
select ACTNO,CNAME,AMOUNT from DEPOSIT where bname = 'AJNI'or bname = 'KAROLBAGH' or bname = 'M.G.ROAD' and ACTNO < 104;

--que-6
select top 5* from CUSTOMERS;

--que-7
select top 3* from DEPOSIT where amount>1000;

--que-8
select top 5 loanno,cname from BORROW where bname!='ANDHERI';

--que-9
select distinct city from CUSTOMERS;

--que-10
select distinct bname from BRANCH;

--que-11
select * from CUSTOMERS order by city;

--que-12
select * from DEPOSIT order by amount desc;



--PART - C
--que-1
select * from DEPOSIT where amount >=3000 and amount <=5000;
update DEPOSIT set amount=5500 where actno=102;
update DEPOSIT set amount=3600 where actno=103;
update DEPOSIT set amount=3000 where actno=105;
update DEPOSIT set amount=5600 where actno=108;

--que-2
update borrow set bname='C.G.ROAD' where cname='anil'

select * from BORROW
--que-3
update deposit set actno=111,amount=5000 where cname='SANDIP'

--que-4


--que-5
update deposit set amount=5000 where actno between 103 and 107

--que-6
update borrow set amount=NULL where loanno=321

--que-7
select cname from borrow where amount IS NULL;

--Group by
select count(amount),bname, cname from borrow
where amount >=5000
group by amount,bname,cname;
--having amount>=5000


--Like Operator
select * from borrow where bname like ('%a%');


--5 Part A
create table Student 
(
  Enrollment_no varchar(20),
  Name varchar(20),
  Cpi decimal(5,2),
  Birthdate datetime
)
--que-1
alter table Student add city varchar(20), backlog int

--que-2
alter table Student alter column name varchar(35)

--que-3
alter table Student alter column Cpi int

--que-4
  sp_rename 'Student.Enrollment_no','eno';

--que-5
alter table student
drop column city

--que-6
 sp_rename 'Student','Student_Master'

 --que-7
alter table student_master
drop table Student_Master



--PART-B
CREATE TABLE DEPOSIT
(
	ACTNO INT,
	CNAME VARCHAR(50),
	BNAME VARCHAR(50),
	AMOUNT DECIMAL(8,2),
	ADATE DATETIME
);

--que-1
alter table deposit add city varchar(20), pincode int; 

--que-2
alter table deposit alter column cname varchar(35);

--que-3
alter table deposit alter column amount int;

--que-4
sp_rename 'deposit.actno','ano';

--que-5
alter table deposit drop column city;


--PART-C
--que-1
alter table deposit drop column adate

--que-2
sp_rename 'deposit.cname','CustomerName'

--que-3
sp_rename 'deposit','DEPOSIT_DETAIL'



--6 PART-A
--que-1
create table Student
(
  Stuid int,
  Firstname varchar(25),
  lastname varchar(25),
  Website varchar(50),
  City varchar(25)
)

select * from student

INSERT INTO Student (Stuid,Firstname,Lastname,Website,City)
VALUES (1011,'Keyur','Patel','techonthenet.com','Rajkot');

INSERT INTO Student (Stuid,Firstname,Lastname,Website,City)
VALUES (1022,'Hardik','Shah','digminecraft.com','Ahmedabad');

INSERT INTO Student (Stuid,Firstname,Lastname,Website,City)
VALUES (1033,'Kajal','Trivedi','bigactivities.com','Baroda');

INSERT INTO Student (Stuid,Firstname,Lastname,Website,City)
VALUES (1044,'Bhoomi','Gajera','checkyourmath.com','Ahmedabad');

INSERT INTO Student (Stuid,Firstname,Lastname,Website,City)
VALUES (1055,'Harmit','Mitel',NULL,'Rajkot');

INSERT INTO Student (Stuid,Firstname,Lastname,Website,City)
VALUES (1066,'Ashok','Jani',NULL,'Baroda');

--que-1
select Firstname from student
where Firstname like ('K%')

--que-2
select firstname from student
where firstname like ('_____')

--que-3
select firstname,lastname,city from student
where city like ('_____a')

--que-4
select * from student
where lastname like ('%tel')

--que-5
select * from student
where Firstname like ('ha%t')

--que-6
select * from student
where Firstname like ('K_Y%')


--PART-B
--que-1
select Firstname from student
where Website IS NULL and firstname like ('_____')

--que-2
select * from student
where lastname like ('%jer%')

--que-3
select * from student
where city like ('r%') OR city like ('b%')

--que-4
select * from student
where Website IS NOT NULL

--que-5
select * from student
where firstname like '[A-H]%'

--que-6
select * from student
where firstname like ('_[a,e,i,o,u]%')


--PART-C
--que-1
select Firstname from student
where Website IS NULL and firstname like ('_____%')

--que-2
select * from student
where lastname like ('Pat%')

--que-3
select * from student
where city NOT LIKE ('B%')

--que-4
select * from student
where firstname like ('[A,H]%') 

--que-5
select * from student
where firstname like ('H[a,e,i,o,u]%') 

	
--12 PART-A
create table Employee
(
eid int,
ename varchar(40),
department varchar(30),
salary int,
joiningdate datetime,
city varchar(30)
)

insert into Employee values (101,'Rahul','Admin',56000,'1-jan-1990','Rajkot')
insert into Employee values (102,'Hardik','IT',18000,'25-sep-1990','Ahmedabad')
insert into Employee values (103,'Bhavin','HR',25000,'14-may-1991','Baroda')
insert into Employee values (104,'Bhoomi','Admin',39000,'8-feb-1991','Rajkot')
insert into Employee values (105,'Rohit','IT',17000,'23-jul-1990','Jamnagar')
insert into Employee values (106,'Priya','IT',9000,'18-oct-1990','Ahmedabad')
insert into Employee values (107,'Neha','HR',34000,'25-dec-1991','Rajkot')

select * from employee

--que-1
select max(salary) as Maximun from employee
select min(salary) as Minimun from employee 
select sum(salary) as Total_Sal from employee
select avg(salary) as Average_Sal from employee	 

--que-2
select count(eid) as Total_Emp from employee

--que-3
select max(salary) from employee where department = 'IT'

--que-4
select count(distinct city) as Total_City from Employee

--que-5
select city,count(employee) from employee 
group by city

--que-6
select distinct city from employee
group by city
having count(eid) > 1

--que-7
select department,sum(salary) from  employee
group by department

--que-8
select avg(salary) from employee
group by department

--que-9
select min(salary) from employee 
where city = 'AHmedabad'

--que-10
select sum(salary) as total_department from employee
where city = 'Rajkot' and salary > 50000  
group by department 


--PART-B
--que-1
select count(eid) from employee
where city = 'Rajkot' 

--que-2
select max(salary) as Highest ,min(salary) as lowest,
max(salary)-min(salary) as DIFFERENCE from employee

--que-3
select eid,ename from Employee
where joiningdate < '1-jan-1991'

--que-4
select department,sum(salary) as total_sal from employee
group by department 
having sum(salary) > 35000 
order by sum(salary) asc

--que-5
select  department from employee
group by department
having count(eid) > 2


--PART-C
--que-1
select count(eid) as Total_Emp from employee
where city='Rajkot' or city='Baroda'

--que-2
select max(salary) as Highest ,min(salary) as lowest,
max(salary)-min(salary) as DIFFERENCE from employee

--que-3
select ename from employee
where joiningdate < '1-jan-1991' and department='IT'

--que-4 
select department,sum(salary) as total_sal from employee
group by department 
having sum(salary) > 35000 
order by sum(salary) desc
 
--QUESTION--7
--que-1
select 5*30 as Multiplication

--que-2
select abs(-25),abs(25),abs(-50),abs(50) as Absolutevalue

--que-3
select ceiling(25.2),ceiling(25.7),ceiling(-25.2) as SmallestInt

--que-4
select floor(25.2),floor(25.7),floor(-25.2) as LargestInt

--que-5
select 5%2 as reminder,5%3 as reminder

--que-6
select power(3,2) as raise , power(4,3) as raise

--que-7
select sqrt(25) as squareroot , sqrt(30) as squareroot, sqrt(50) as squareroot

--que-8
select square(25) as square_ , square(30) as square_, sqrt(50) as square_

--que-9
select pi() as Value_of_Pi;

--que-10
select round(157.732,2),round(157.732,0),round(157.732,-2)

--que-11
select exp(2) as Exponential , exp(3) as Exponential

--que-12
select log(10) as Logarithm, log(2) as Logarithm

--que-13
select log(10) as Logarithm, log(5) as Logarithm, log(100) as Logarithm

--que-14
select sin(3.1415) as Sine , cos(3.1415) as Consine, tan(3.1415) as Tangent

--que-15
select sign(-25) as Sign_ , sign(0) as Sign_ , sign(25) as Sign_

--que-16
select rand();

--PART-B
create table Employee1
(
empno int,
empname varchar(30),
joiningdate datetime,
salary decimal(8,2),
commission int,
city varchar(20)
)
select * from employee1

Insert Into Employee1 
values 
(101,'Keyur','5-jan-02',12000.00,4500,'Rajkot'),
(102,'Hardik','15-feb-04',14000.00,2500,'Ahmedabad'),
(103,'Kajal','14-mar-06',15000.00,3000,'Baroda'),
(104,'Bhoomi','23-jun-05',12500.00,1000,'Ahmedabad'),
(102,'Harmit','15-feb-04',14000.00,2000,'Rajkot')


--que-1
select sum(salary)+sum(commission) as result from Employee1

--que-2
select ceiling(55.2)as SmallestInt,ceiling(35.7)as SmallestInt,ceiling(-55.2) as SmallestInt

--que-3
select floor(55.2) as LargestInt,floor(35.7)as LargestInt,floor(-55.2) as LargestInt

--que-4
select 55%2 as Reminder, 55%3 as Reminder

--que-5
select power(23,2) as Valueof , power(14,3) as Valueof

--PART-C
--que-1
select sqrt(36) as squareroot , sqrt(49) as squareroot, sqrt(81) as squareroot

--que-2
select square(3) as square_ , square(9) as square_, sqrt(12) as square_

--que-3
select round(280.8952,2),round(280.8952,0),round(280.8952,-2)

--que-4
select sin(4.2014) as Sine , cos(4.2014) as Consine, tan(4.2014) as Tangent

--que-5
select sign(-55) as Sign_ , sign(0) as Sign_ , sign(95) as Sign_


--QUESTION-8
--PART_A

--que-1
select len('NULL'),len(' hello  '),len('Blank')

--que-2
select lower('paresh')as lowercase ,upper('paresh') as uppercase

--que-3
select SUBSTRING('Paresh',1,3) as First3

--que-4
select SUBSTRING('Paresh_Mori',3,10)

--que-5
select REPLACE('abc123efg','123','XYZ') , REPLACE('abcabcabc’ ','c','5')

--que-6
select ascii('a'),ASCII('A'),ASCII('z'),ASCII('Z'),ASCII(0),ASCII(9)

--que-7
select char(97),char(65),char(122),char(90),char(48),char(57)

--que-8
select ltrim('  hello world       ')

--que-9
select rtrim('  hello world       ')

--que-10
select left('SQL server',4),right('SQL server',5)

--que-11
select CONVERT(int,'1234.56')

--que-12
select CONVERT(int,10.58)

--que-13
select space(10)+('paresh')

--que-14
select ('paresh')+('mori') , concat('Paresh', ' ' , 'Mori')



--QUESTION-9
--que-1
select GETDATE() as Today_date

--que-2
select GETDATE() + 365 as oneyearAfter_date

--que-3
select CONVERT(varchar,getdate(),107) as Today_date

--que-4
select CONVERT(varchar,getdate(),106) as Today_date

--que-5
select CONVERT(varchar,getdate(),07) as Today_date

--que-6
select DATEDIFF(month,'31-dec-08','31-mar-09') as diffmonth

--que-7
select DATEDIFF(year,'25-jan-12','14-sep-10') as diffyear

--que-8
select datediff(hour,'25-Jan-12 7:00','26-Jan-12 10:30') as hourdiff

--que-9
select DAY('12-May-16') as day_ ,MONTH('12-May-16')as month_,YEAR('12-May-16')as year_

--que-10
select DATEADD(YEAR,5,GETDATE()) as five_year_afterdate

--que-11
select DATEADD(MONTH,-2,GETDATE())

--que-12
select DATENAME(MONTH,GETDATE()) , DATEPART(MONTH,GETDATE())


--que-13
select EOMONTH(GETDATE())

--que-14
select DATEDIFF(MONTH,'31-aug-03','31-aug-23') as Myage_month , DATEDIFF(year,'31-aug-03','31-aug-23') as Myage_year


--PART-B
create table Emp_detail
(
empno int,
empname varchar(30),
joiningdate datetime,
salary decimal(8,2),
city varchar(20)
)

select * from Emp_detail

insert into Emp_detail values
(101,'keyur','15-jan-02',12000.00,'Rajkot'),
(102,'Hardik','15-feb-04',14000.00,'Ahmedabad'),
(103,'kajal','14-mar-02',15000.00,'Baroda'),
(104,'Bhoomi','23-may-05',12500.00,'Ahmedabad'),
(102,'Harmit','15-feb-04',14000.00,'Rajkot'),
(105,'Jay','12-mar-07',12000.00,'Surat')

--que-1
select DATEADD(YEAR,365,joiningdate) from emp_detail;

--que-2
select CONVERT(varchar,joiningdate) from emp_detail

--que-3
select CONVERT(varchar,joiningdate,106) from emp_detail

--que-4
select CONVERT(varchar,joiningdate,07) from emp_detail

--que-5
select DATEDIFF(MONTH,joiningdate,'31-MAR-09')as total_num_of_month from Emp_detail

--que-6
select DATEDIFF(year,joiningdate,'14-sep-10')as total_num_of_year from Emp_detail

--PART-c
--que-1
select DAY(joiningdate)as Total_days_ ,MONTH(joiningdate)as Total_months_,YEAR(joiningdate)as Total_year from Emp_detail

--que-2
select DATEADD(YEAR,5,joiningdate)as fiveyearafter_date from Emp_detail

--que-3
select DATEADD(MONTH,-2,joiningdate)as Substract2_months from Emp_detail

--que-4
select DATENAME(MONTH,joiningdate)as MonthName_ , DATEPART(MONTH,joiningdate)as MonthNum_ from Emp_detail

--que-5
select DATEDIFF(MONTH,'31-aug-03','31-aug-23') as Myage_month , DATEDIFF(year,'31-aug-03','31-aug-23') as Myage_year


--QUESTION-10
create table Computer
(
rollno int,
Name_ varchar(30)
)

create table Electrical
(
rollno int,
Name_ varchar(30)
)

insert into Computer values
(101,'Ajay'),
(109,'Haresh'),
(115,'Manish')

insert into Electrical values
(105,'Ajay'),
(107,'Mahesh'),
(115,'Manish')

--PART-A
--que-1
select Name_ from Computer
union
select Name_ from Electrical

--que-2
select Name_ from Computer
union all
select Name_ from Electrical

--que-3
select Name_ from Computer
intersect
select Name_ from Electrical

--que-4
select Name_ from Computer
except
select Name_ from Electrical

--que-5
select Name_ from Electrical
except
select Name_ from Computer

--que-6
select * from Computer
union
select * from Electrical

--que-7
select * from Computer
intersect
select * from Electrical

--PART-b
create table Employee
(
eid int,
Name_ varchar(30)
)

create table Customer_
(
cid int,
Name_ varchar(30)
)

insert into Employee values
(1,'Ajay'),
(9,'Haresh'),
(5,'Manish')

insert into Customer_ values
(5,'Ajay'),
(7,'Mahesh'),
(5,'Manish')

--que-1
select Name_ from Employee
union
select Name_ from Customer_

--que-2
select Name_ from Employee
union all
select Name_ from Customer_

--que-3
select Name_ from Employee
intersect
select Name_ from Customer_

--que-4
select Name_ from Employee
except
select Name_ from Customer_

--que-5
select Name_ from Customer_
except
select Name_ from Employee


--Extra Queries 1

create table t_employee
(
id int,
name_ varchar(30),
department varchar(30),
salary int,
year_of_experience int
)

create table t2_employee
(
id int,
name_ varchar(30),
department varchar(30),
salary int,
year_of_experience int
)

create table t1_student
(
id int,
name_ varchar(30),
hometown varchar(30),
percentage_ int,
favourite_subject varchar(30)
)

create table t2_student
(
id int,
name_ varchar(30),
hometown varchar(30),
percentage_ int,
favourite_subject varchar(30)
)

insert into t_employee values
(1,'Aakash singh','Development',72000,2),
(2,'Abhishek pawar','Production',45000,1),
(3,'pranav deshmukh','hr',59900,3),
(4,'Shubham Mahale','Accounts',57000,2)

insert into t2_employee values
(1,'Prashanth Wagh','R&D',49000,1),
(2,'Abhishek pawar','Production',45000,1),
(3,'Gautam Jain','Development',56000,4),
(4,'Shubham Mahale','Accounts',57000,2)

insert into t1_student values
(1,'Soniya jain','udaipur',89,'physics'),
(2,'Harshada Sharma','Kanpur',92,'Chemistry'),
(3,'Anuja Rajput','Jaipur',78,'History'),
(4,'Pranali Singh','Nashik',88,'Geography')

insert into t2_student values
(1,'Soniya jain','udaipur',89,'physics'),
(2,'Ishwari Dixit','Delhi',86,'Hindi'),
(3,'Anuja Rajput','Jaipur',78,'History'),
(4,'Pakhi Arora','Surat',70,'Sanskrit')

--que-1
select * from t_employee
union
select * from t2_employee

--que-2
select * from t1_student
union
select * from t2_student

--que-3
select * from t_employee
union all
select * from t2_employee

--que-4
select * from t1_student
union all
select * from t2_student

--que-5
select * from t_employee
intersect
select * from t2_employee

--que-6
select * from t1_student
intersect
select * from t2_student

--que-7
select * from t_employee
except
select * from t2_employee

--que-8
select * from t1_student
except
select * from t2_student

	
--Extra Queries 2
create table employees
(
employee_id int,
employee_name varchar(30),
department varchar(20)
)

create table contractors
(
contractor_id int,
contractor_name varchar(30),
department varchar(20)
)



--que-1
select employee_name from employees where department='it'
union
select contractor_name from contractors where department='it'

--que-2
select employee_name from employees where department='it'
union all
select contractor_name from contractors where department='it'

--que-3
select employee_name from employees where department='it'
intersect
select contractor_name from contractors where department='it'

--que-4
select * from employees where department = 'marketing'
except
select * from contractors where department = 'marketing'

--que-5
select employee_name from employees
union
select contractor_name from contractors

--que-6
select employee_name from employees
union all
select contractor_name from contractors

--que-7
select employee_name from employees where department = 'marketing'
intersect
select contractor_name from contractors where department = 'marketing'

--que-8
select * from contractors where department = 'finance'
except
select * from employees where department = 'finance'

--que-9
select * from employees
union
select * from contractors

--que-10
select * from employees
union all
select * from contractors

--que-11
select employee_name from employees where department='it' or department='sales'
union 
select contractor_name from contractors where department='it' or department='sales'

--que-12
select employee_name from employees where department='it' or department='sales'
union all
select contractor_name from contractors where department='it' or department='sales'

--que-13
select employee_name from employees where department='finance'  or department='marketing'
intersect
select contractor_name from contractors where department='finance'  or department='marketing'

--que-14
select * from employees where department = 'hr'
except
select * from contractors where department = 'hr'

--que-15
select * from employees
union
select * from contractors

--que-16
select * from employees
union all
select * from contractors

--que-17
select employee_name from employees where department='it'  or department='marketing'
intersect
select contractor_name from contractors where department='it'  or department='marketing'

--que-18
select * from contractors where department = 'sales'
except
select * from employees where department = 'sales'

--que-19
select employee_name from employees
union
select contractor_name from contractors

--que-20
select employee_name from employees
union all
select contractor_name from contractors
