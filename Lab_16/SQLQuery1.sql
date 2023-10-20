-- Create table Employee
create table Employee
(
	EID int primary key,
	EName varchar(100),
	Gender varchar(10),
	JoiningDate datetime,
	Salary decimal(8,2),
	City varchar(100)
)

-- Insert data into Employee Table
insert into Employee
values
(1,'Nick','Male','01-jan-13',4000.00,'London'),
(2,'Julian','Female','01-oct-14',3000.00,'New York'),
(3,'Roy','Male','01-jun-16',3500.00,'London'),
(4,'Tom','Male',NULL,4500.00,'London'),
(5,'Jerry','Male','01-feb-13',2800.00,'Sydney'),
(6,'Philip','Male','01-jan-15',7000.00,'New York'),
(7,'Sara','Female','01-aug-17',4800.00,'Sydney'),
(8,'Emily','Female','01-jan-15',5500.00,'New York'),
(9,'Michael','Male',NULL,6500,'London'),
(10,'John','Male','01-jan-15',8800.00,'London')