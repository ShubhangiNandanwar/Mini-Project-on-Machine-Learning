create database salespeople;
show create database salespeople;
use salespeople;

create table salesman(
salesman_id int primary key not null,
Name varchar(100) not null,
city varchar(100) not null,
commission float not null);
describe salesman;

insert into salesman(salesman_id, Name, city, commission)
values(5001,'James Hoog' ,'New York', 0.15),
(5002,'Nail Knite', 'Paris', 0.13),
(5005,'Pit Alex','London',0.11),
(5006,'MC Lyon','Paris',0.14),
(5007,'Paul Adam','Rome',0.13),
(5003,'Lauson Hen','San Jose',0.12);

select * from salesman;

select Name , commission from salesman;

create table orders(
ord_no int primary key not null,
purch_amt float not null,
ord_date date,
customer_id int not null,
salesman_id int not null);

describe orders;
insert into orders(ord_no, purch_amt, ord_date, customer_id, salesman_id)
values (70001,150.5,'2012-10-05',3005,5002),
(70009,270.65,'2012-09-10',3001,5005),
(70002,65.26,'2012-10-05',3002,5001),
(70004,110.5,'2012-08-17',3009,5003),
(70007,948.5,'2012-09-10',3005,5002),
(70005,2400.6,'2012-07-27',3007,5001),
(70008,5760,'2012-09-10',3002,5001);

select * from orders;

select ord_no,purch_amt,ord_date,salesman_id from orders;

select name,city from salesman where city ='Paris'; 

create table customer(
customer_id int primary key not null,
cust_name varchar(100) not null,
city varchar(100),
grade int,
salesman_id int not null);

insert into customer(customer_id,cust_name,city,grade,salesman_id)
values(3002,'Nick Rimando','New York',100,5001),
(3007,'Brad Davis','New York',200,5001),
(3005,'Graham Zusi','California',200,5002),
(3008,'Julian Green','London',300,5002),
(3004,'Fabian Johnson','Paris',300,5006),
(3009,'Geoff Cameron','Berlin',100,5003),
(3003,'Jozy Altidor','Moscow',200,5007);

select * from customer;
select * from customer where grade = '200';
