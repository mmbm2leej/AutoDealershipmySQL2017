select ProjectID,ProjectName,Department from PROJECT;

select * from PROJECT;

select * from PROJECT where Department = 'finance';

select * from PROJECT where StartDate =  '2017-07-05';

/* The IN statement is like choose command in gml */
select * from EMPLOYEE where Supervisor in (1,4,6);

select distinct Supervisor from EMPLOYEE where Supervisor NOT in (1,4,6);

/*this queries everything from employee while also sorting everything by the Dept name */ 
select * from EMPLOYEE order by DEPARTMENT;

select * from EMPLOYEE order by DEPARTMENT asc;

/* in descending order */
select * from EMPLOYEE order by DEPARTMENT desc;

/* prioritizes sorting lastname first, then the first name after */
select * from EMPLOYEE order by LastName, FirstName;

/* same thing but descending order for lastname, and ascending for firstname */
select * from EMPLOYEE order by LastName desc, FirstName asc;

/* different clauses */
select * from EMPLOYEE where Department = 'finance' or Position = 'OPS3';

/* wildcards only work with like operators and not = */
select * from EMPLOYEE where FirstName like 'M%';

/*combining 2 tables */
Select * from EMPLOYEE,PROJECT where PROJECT.Department = 'Production' and EMPLOYEE.Department = 'Production';
  
select count(*) AS NumberOfProjects from PROJECT;

select *,(MaxHours * 15) as MaxCost from PROJECT;

/* pulls up each department and a headcount */
select Count(*) AS EmployeeCount, Department from EMPLOYEE group by Department;

Select Department, avg(MaxHours) as AverageMaxHours from PROJECT Group by Department;

select * from DEPARTMENT, EMPLOYEE where DEPARTMENT.OfficeNumber like 'BLDG01%'
   and EMPLOYEE.Department = DEPARTMENT.DepartmentName
 order by DepartmentName, LastName, FirstName; 

select DepartmentName from DEPARTMENT where OfficeNumber like 'BLDG01%';

select * from EMPLOYEE where Department in (
  select DepartmentName from DEPARTMENT where OfficeNumber like 'BLDG01%');
