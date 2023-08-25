
Create table Order1
(
	ord_no		int, 
	purch_amt	Decimal(8,2), 
	ord_date    Date,
	customer_id int,
	salesman_id	int
)

INSERT INTO ORDER1 VALUES
(70001,       150.5,       '2012-10-05'    ,    3005 ,       5002),
(70009     ,  270.65 ,     '2012-09-10'      , 3001        , 5005),
(70002     ,  65.26   ,    '2012-10-05'       , 3002         ,5001),
(70004     ,  110.5    ,   '2012-08- 17'      , 3009         ,5003),
(70007     ,  948.5    ,   '2012-09-10'       , 3005         ,5002),
(70005     ,  2400.6   ,   '2012-07-27'     ,  3007         ,5001),
(70008      , 5760     ,   '2012-09-10'      ,  3002       ,  5001),
(70010     ,  1983.43  ,   '2012-10-10'    , 3004         ,5006),
(70003     ,  2480.4   ,   '2012-10-10'     , 3009        , 5003),
(70012     ,  250.45   ,   '2012-06-27'     , 3008        , 5002),
(70011     ,  75.29    ,   '2012-08-17'     ,  3003        , 5007),
(70013     ,  3045.6   ,   '2012-04-25'    ,  3002        , 5001);


Create table CUSTOMER
(
	 customer_id	int   ,
	 cust_name		varchar(50),        
	 city			varchar(20),
	 grade			int,
	 salesman_id	int
)

INSERT INTO CUSTOMER VALUES
		(3002, 'Nick Rimando'    ,  'New York'   ,   100 ,        5001),
        (3007 ,       'Brad Davis'           , 'New York'   ,   200 ,        5001),
        (3005  ,      'Graham Zusi'       , 'California'   ,   200 ,        5002),
        (3008   ,     'Julian Green'       , 'London'       ,   300 ,        5002),
        (3004    ,    'Fabian Johnson' , 'Paris'            ,   300 ,        5006),
        (3009     ,   'Geoff Cameron' , 'Berlin'          ,   100 ,        5003),
        (3003      ,  'Jozy Altidor'       , 'Moscow'      ,   200 ,        5007),
        (3001       , 'Brad Guzan'      , 'London'       ,   NULL        ,        5005);


Create table SALESMAN
(
	salesman_id		INT,
	Sname			VARCHAR(50),
	city            VARCHAR(50),
	commission		DECIMAL(8,2), 

)

INSERT INTO SALESMAN VALUES
(		5001      , 'James Hoog' , 'New York'    ,       0.15),
(        5002      , 'Nail Knite'     , 'Paris'            ,       0.13),
 (       5005     , 'Pit Alex'          , 'London'      ,       0.11),
  (      5006     , 'Mc Lyon'        , 'Paris'            ,       0.14),
   (     5007    , 'Paul Adam'    , 'Rome'          ,       0.13),
     (   5003   , 'Lauson Hen'   , 'San Jose'     ,       0.12);


Create table ITEM
(
	PRO_ID		INT,        
	PRO_NAME    VARCHAR(50),                   
	PRO_PRICE   DECIMAL(8,2), 
	PRO_COM		INT
)


INSERT INTO ITEM VALUES(101,'Mother Board',3200.00,15)

 INSERT INTO ITEM VALUES   (102 ,		'Key Board' ,                          	450.00      ,       	16),
    (103,         'ZIP drive',                             	250.00 ,             	14),
    (104,'Speaker'            ,                  	550.00        ,    	16),
    (105,'Monitor'             ,                	5000.00      ,   		11),
    (106,'DVD drive'            ,              	900.00         	,	12),
    (107,'CD drive'              ,                	800.00       ,  		12),
    (108,'Printer'                ,                2600.00      ,   		13),
    (109,'Refill cartridge'        ,          	350.00         ,		13),
    (110,'Mouse'                    ,           	250.00    ,     		12);


select * from Order1
select * from salesman
select * from CUSTOMER
select * from item

--que-1
select sum(purch_amt) as totalpurch_amt from order1

--que-2
select avg(purch_amt) as totalpurch_avg from order1

--que-3
select count(salesman_id) as total_num from SALESMAN

--que-4
select count(customer_id) from CUSTOMER

--que-5
select customer_id from customer 
where grade > 1

--que-6
select max(purch_amt) as max_amt from order1

--que-7
select min(purch_amt) as min_amt from order1

--que-8
select city,max(grade) from customer
group by city

--que-9
select customer_id,max(purch_amt) from order1
group by customer_id

--que-10
select customer_id,ord_date,max(purch_amt) from order1
group by customer_id,ord_date

--que-11
select salesman_id,max(purch_amt) as highest_amt from order1
group by salesman_id,ord_date
having ord_date = '2012-08-17'

--que-12
select customer_id,ord_date,max(purch_amt) as highest_amt from Order1
where purch_amt > 2000
group by customer_id,ord_date

--que-13
select customer_id,ord_date,max(purch_amt) as maximum_amt from Order1
group by customer_id,ord_date,purch_amt
having purch_amt between 2000 and 6000

--que-14
select customer_id,ord_date,max(purch_amt) as maximum_amt from Order1
where purch_amt in (2000,3000,6000,5760)
group by customer_id,ord_date

--que-15
select customer_id,max(purch_amt) as maximum_amt from Order1
group by customer_id
having customer_id between 3002 and 3007

--que-16
select customer_id,max(purch_amt) as maximum_amt from Order1
group by customer_id
having customer_id between 3002 and 3007 and max(purch_amt) > 1000

--que-17
select salesman_id,max(purch_amt) as maximum_amt from Order1
where salesman_id between 5003 and 5008
group by salesman_id

--que-18
select count(ord_no) from order1
where ord_date = '2012-08-17'

--que-19
select city,count(salesman_id)as total_salespeople from salesman
group by city

--que-20
select salesman_id,ord_date,count(ord_no) as count from order1
group by ord_date,salesman_id

--que-21
select AVG(PRO_PRICE) as avgpro_price from item

--que-22
select count(pro_id) as total_product from item
where PRO_PRICE >=350

--que-23
select AVG(PRO_PRICE),PRO_COM from item
group by PRO_COM
