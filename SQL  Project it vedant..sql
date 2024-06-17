create database Admin_data;
use Admin_data;
create table HR_admin(admin_id varchar (23),admin_name varchar (12),Admin_location varchar (32),Admin_salary numeric (20),primary key (admin_id));
insert into HR_admin values ('HR1','Technical HR','delhi',89000),('HR2','General HR','mumbai',92000),('HR3','Salary HR','Banglore',94000),('HR4','medical HR','karnataka',92000);
create table account_admin(Sub_id varchar (12),name varchar (34),qualification varchar (23),Admin_id varchar (23),foreign key (Admin_id) references HR_admin(admin_id));
insert into account_admin values('SHR1','Shweta','MBA-F','HR1'),('SHR2','Nitin','MBA-D','HR2'),('SHR3','Ajit','MBA-C','HR3'),('SHR4','nitin','MBA-M','HR4');
create table library_admin(lib_id varchar (23),Book_name varchar (34),Price numeric (23),Admin_id VARCHAR (23),foreign key (Admin_id) references HR_admin(admin_id));
insert into library_admin values('LHR1','Bhagvat geeta',230,'HR1'),('LHR2','mahabharat',790,'HR2'),('LHR3','ramcharit manas',880,'HR3'),('LHR4','krushna',230,'HR4');

select * from HR_admin;
update HR_admin set Admin_location='maisur' where admin_id='hr4';
alter table account_admin add dob date;
select * from account_admin;
alter table account_admin drop column dob;
select max(Price)from library_admin;
select min(Admin_salary)from HR_admin;
select ROUND(Price,2)from library_admin;
select SUBSTRING(admin_name,2,3) from HR_admin;
select sign(Admin_salary) from HR_admin;
select floor(Admin_salary) from HR_admin;
select CEILING(Admin_salary) from HR_admin;
select * from HR_admin;
select count(Admin_salary) from HR_admin;

select * from HR_admin inner join account_admin on HR_admin.admin_id=account_admin.Admin_id;
select * from HR_admin right join library_admin on HR_admin.admin_id=library_admin.Admin_id;
select * from account_admin left join library_admin on account_admin.admin_id=library_admin.Admin_id;
select* from HR_admin cross join library_admin;

select Admin_salary from HR_admin where Admin_salary < 90000;
select Admin_salary from HR_admin where Admin_salary > 90000;

select * from account_admin;
select* from HR_admin ;
select* from library_admin;

select AA.name,HA.Admin_salary from HR_admin HA INNER JOIN account_admin AA ON HA.admin_id=AA.Admin_id;







