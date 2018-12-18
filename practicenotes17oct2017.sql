SQL Exercises 3
Prepare sql statements for the following questions using the WP  database created before. Files are on Blackboard under Week 04_05
PART I
1 - Show number of employees for each department.
select count(Department), Department
  from EMPLOYEE e group by Department;

2 - Show number of employees for departments that have at least 3 employees.
select count(Department) as NumberofEmployees, Department
  from EMPLOYEE e
    group by Department
  having NumberofEmployees >= 3;

3 - Show the average assignment hours worked
select avg(HoursWorked)
  from ASSIGNMENT a;

4- Show average hours worked per department
select avg(HoursWorked), DepartmentName
  from ASSIGNMENT a, DEPARTMENT d, EMPLOYEE e
  where a.EmployeeNumber = e.EmployeeNumber and e.Department = d.DepartmentName
group by DepartmentName;

5 - Show the assignments where assignee's last name starts with "J".
select ProjectID, e.EmployeeNumber, FirstName, LastName
  from ASSIGNMENT a, EMPLOYEE e
  where e.LastName like "J%"
order by LastName;

6 - Show the projects for which an employee from the ‘Accounting’  department is assigned
select *
  from ASSIGNMENT a, EMPLOYEE e
 where Department = "Accounting" 
;
  

7 - Employee names that work for the departments that has  ___-___-84__ in their phone number
select *
  from EMPLOYEE e, DEPARTMENT d
  where e.Department = d.DepartmentName
 and DepartmentPhone like "________84__";


8 - Show all employee information with their assignments. ( 1 - If an employee has multiple assignments, each assignment will be a row. 2 - Your table should also show employees if they don't have an assignment)
select *
  from EMPLOYEE e
  left join ASSIGNMENT a
  on e.EmployeeNumber = a.EmployeeNumber;
 
PART II
9 – Recreate the results of  Question 5  and 6 using subqueries.
#Number5
select *
  from ASSIGNMENT a
  where a.EmployeeNumber in (
select EmployeeNumber
  from EMPLOYEE
  where LastName like "J%"
);

#Number6
select *
  from ASSIGNMENT a
  where a.EmployeeNumber
  in (
  select EmployeeNumber
  from EMPLOYEE e
    where e.Department = "Accounting"
    );








10 - Recreate the results of  Question 5, 6  and 7 using join statements.
 	5
select *
  from ASSIGNMENT a
   join EMPLOYEE e using (EmployeeNumber)
  where e.LastName like "J%";
  
	6
select *
  from ASSIGNMENT a
  join EMPLOYEE e using (EmployeeNumber)
  where e.Department = "Accounting";

	7


PART III
11 - Show average hours worked per department for ALL departments in the departments table
12 - Create a report that is showing the projects for which total Hours Worked so far (in the assignment table) acceeded the Max Hours
 

