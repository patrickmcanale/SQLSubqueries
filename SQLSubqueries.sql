
Select *
from EmployeeSalary

--Subquery in select


Select EmployeeId, Salary, (Select AVG(Salary) from EmployeeSalary) as AllAvgSalary
from EmployeeSalary


--Done with Parition by

Select EmployeeId, Salary, (Select AVG(Salary) over () as AllAvgSalary
from EmployeeSalary


--group by does not work


Select EmployeeId, Salary, (Select AVG(Salary) as AllAvgSalary
from EmployeeSalary
group by employeeId, Salary
order by 1,2


--subquery in from


select * 
From (Select EmployeeId, Salary, (Select AVG(Salary) over () as AllAvgSalary
		from EmployeeSalary)

--subquery in where


select employeeID, JobTitle, Salary
From EmployeeSalary
where employeeID in (
		select employeeID
		from employeeDemographics
		where age > 30