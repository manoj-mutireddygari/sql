use Employee;

/*by copying all columns from another table*/
create table emp_duplicate as select * from employeedetails;
select * from emp_duplicate;

/*by copying selected colummns form another table*/
create table emp_info as select name,dept from employeedetails;
select * from emp_info;

/*by copying selected rows from another table*/
create table emp_personal as select * from employeedetails where id=4;
select * from emp_personal;