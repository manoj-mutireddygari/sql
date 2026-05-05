use Employee;
/*
comparison operator
1. =
2. >
3. <
4. >=
5. <=
6. != (or) < >
*/
select * from employeedetails where salary<400000;
select * from employeedetails where salary!=400000;
select * from employeedetails where salary>400000;
select * from employeedetails where salary<=400000;
select * from employeedetails where salary>=400000;
select * from employeedetails where salary=400000;
select * from employeedetails where salary<>400000;

/*
logical operator
1. and
2. or
3. not
*/

select * from employeedetails where salary<500000 and dept='HR';
select name,salary from employeedetails where salary<=300000 or dept='DEV';
select * from employeedetails where not dept='HR';
select * from employeedetails where salary between 200000 and 500000; 
select * from employeedetails where id < 6 and (dept='HR'or dept='DEV');
select * from employeedetails where id in(1,2,3);
select * from employeedetails where dept in('HR','DEV');

select * from employeedetails where salary not in(300000,400000,500000);

/*
wild card character
1. percentage(%) -> contains 0,1 or multiple characters
2. underscore(_) -> contains only one character

LIKE operator
* filters the data that matches the given search pattern in a column.
* saves time while filering the record from the table.

Eg:
LIKE 'j%'   -> record starts with letter j.
LIKE '%a'   -> record ends with letter a.
LIKE '%er%' -> record with has er in between word.
LIKE '_r%'  -> record which has a in second position.
LIKE 'b%g'  -> record which has starting letter b and ending letter is g.
*/
select * from employeedetails where name LIKE 'm%';
select * from employeedetails where name LIKE '%i';
select * from employeedetails where name LIKE '%ai%';
select * from employeedetails where name LIKE '_a%';
select * from employeedetails where name LIKE 'm%j';

-- questions:
-- display all the deatils of employess who's name contains a in their name?
select * from employeedetails where name LIKE '%a%';

-- display all the names  of employees who's name contains a in their second position of name?
select name from employeedetails where name LIKE '_a%';

-- display all the names of employess whos name donot contains a in their second postion of name?
select name from employeedetails where name not LIKE '_a%';


/*
ESCAPE character
* while using like keyword is i have % or _ in my data we need to use escape character to aboid those elements in the data 
  and continue searching elements.
* used to escape pattern matching characters (whildcard character),if'%' and'_'both form as part of a data.
* default value of escape character-'/' (to use escape character we need to use symbol of back slach).
*/

-- question:
-- display all the details where mail id have '_' symbol.
select * from marks where mail like '%\_%';
-- display all the details where progress have '%' symbol at last of progress.
select * from marks where progress like '%\%';
-- display all the details where mails id do not have '_' symbol.
select * from marks where mail not like '%\_%';

-- if we use our own symbol as ESCAPE character we need to specify the character
select * from marks where progress like '%!%' ESCAPE'!';


