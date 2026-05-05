show databases;
drop database Employee;
create database Employee;

/*creating the table*/
use Employee;
create table if not exists employeedetails(
	id int(10) primary key AUTO_INCREMENT,
    name varchar(25) default 'NEW USER',
    salary int(10) not null,
    dept varchar(25) not null check(dept!='TL')
);
desc employeedetails;

/*inserting the data into table using different ways*/ 
insert into employeedetails(id,name,salary,dept)values(1,'manoj',200000,'DEV');
insert into employeedetails(id,name,salary,dept)values(2,'sai',400000,'DEV');
insert into employeedetails(name,salary,dept)values('chai',600000,'TES');
insert into employeedetails(name,salary,dept)values('monish',300000,'HR'),('athi',500000,'MAN');
insert into employeedetails(name,salary,dept)values('anwesh',700000,'TES'),('unnu',800000,'DEV');

select * from employeedetails;
select name from employeedetails;
select * from employeedetails where dept='DEV';


/*ESCAPE character
for checking this escape character we gona create a new table with new data wich have % ans underscore in the data.
*/

use Employee;
create table marks(
id int primary Key AUTO_INCREMENT,
progress varchar(5) not null,
mail varchar(50) not null
);
desc marks;
select *from marks;
insert into marks values(1,'75%','abc_123@gmail.com');
insert into marks values(2,'93%','mn13_g@gmail.com'),(3,'77%','takshashila@gmail.com'),
(4,'85%','students_26@gmail.com'),(5,'72%','qwerty_12@gmail.com');

