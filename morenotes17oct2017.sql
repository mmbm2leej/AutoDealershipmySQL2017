select Department from EMPLOYEE

select count(*) as Number_of_Employees, Department from EMPLOYEE group by Department order by Department;

select count(*) as Number_of_Employees, Department from EMPLOYEE group by Department having Number_of_Employees > 2;

select *
  from PROJECT p, ASSIGNMENT a
  where p.ProjectID=a.ProjectID
and p.Department = "Production" ;

select a.*
  from PROJECT p, ASSIGNMENT a
  where p.ProjectID=a.ProjectID
and p.Department = "Production" ;

#remember that commas separating command terms will cause an error.
select *
  from ASSIGNMENT
  where ProjectID in (1000,1400);

select ProjectID from PROJECT where Department = "Production";

#This is a subquery: these are usually much more efficient if you are dealing with a large amount of entries at once
select * from ASSIGNMENT where ProjectID in (select ProjectID from PROJECT where Department = "Production");

#joining as a command
select * from ASSIGNMENT
  join PROJECT on ASSIGNMENT.ProjectID = PROJECT.ProjectID;

#further filtering after using join
select * from ASSIGNMENT
  join PROJECT on ASSIGNMENT.ProjectID = PROJECT.ProjectID
 where PROJECT.Department = "Production" ;

#another way to join with the command USING
Select * from ASSIGNMENT
  join PROJECT using (ProjectID)
  where PROJECT.Department="Production";

select * from EMPLOYEE e
  join DEPARTMENT d 
  on e.Department = d.DepartmentName
 order by EmployeeNumber ;

select * from EMPLOYEE e
  left join ASSIGNMENT a
  on a.EmployeeNumber = e.EmployeeNumber;

/*join command with interconnected keys only show what entries have the match, however you can also have the query also show you ALL entries including those that dont have a match by using left join or right join

The difference between Left and Right join only depends on which tables the data is being called from first and compared to after */


