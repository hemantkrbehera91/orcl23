--set operators
set operators are used to retrieve data from single or multiple tables.
these operators are also called as vertical joins.

   1>union-it returns unique values only and also automatically sorting.
   2>union all-it returns unique+duplicate values.(no automatic sorting)
   3>intersect-it returns common values
   4>minus-values are in first query those values are not in second query.
   
select * FRom employees where department_id=100;   
select employee_id,first_name,salary from employees where rownum between 1 and 10
union
select employee_id,firsT_name,salary From employees where rownum between 1 and 5;

select employee_id,first_name,salary from employees where rownum between 1 and 10
intersect
select employee_id,firsT_name,salary From employees where rownum between 1 and 5;

select employee_id,first_name,salary from employees where rownum between 1 and 10
minus
select employee_id,firsT_name,salary From employees where rownum between 1 and 5;



select employee_id,job_id from job_history where employee_id=176
minus
select employee_id,job_id from employees where employee_id=176;


*note*\
whenever we are using set operators,corresponding expressions must belong to same data type.

*note*
order by clause can be written always at the last of all select statements.

select employee_id,first_name,salary from employees where rownum between 1 and 10 
union
select employee_id,firsT_name,salary From employees where rownum between 1 and 5 order by salary;


*note*
in oracle,if corresponding expressions doesnot belongs to same datatype also then we are retrieving data from multiple
query's using set operators.
in this case we must use approprite type conversion functions.

select department_id,to_char(null) from employees
union
select to_number(null),department_name from departments;




select trunc(sysdate,'yy') From dual;
select trunc(sysdate,'mm') From dual;


q>this year last wednesday date

select next_Day(trunc(add_months(sysdate,12),'yy')-1,'wednesday') from dual;

q>this year 1st sunday date.


select next_Day(trunc(Sysdate,'yy')-1,'sunday') From dual;

q>this month 3rd sunday date

select next_Day(trunc(Sysdate,'yy')-1,'sunday')+(7*2) From dual;





















