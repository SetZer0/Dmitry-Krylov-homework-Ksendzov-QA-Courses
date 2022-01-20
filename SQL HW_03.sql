--1.Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами.
select employee_name as "Employee name", 
	   monthly_salary as "Employee salary" 
from employee_salary
join employees
	on employees.id = employee_salary.employee_id
join salary
	on salary.id = employee_salary.salary_id;

--2.Вывести всех работников у которых ЗП меньше 2000.
select employee_name as "Employee name",
	   monthly_salary as "Employee salary"
from employee_salary
join employees
	on employees.id = employee_salary.employee_id 
join salary
	on salary.id = employee_salary.salary_id
		where salary.monthly_salary < 2000;
		
--3.Вывести все зарплатные позиции, но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
select monthly_salary as "Unassigned Salary"
from salary
left join employee_salary
	on salary.id = employee_salary.salary_id 
left join employees
	on  employees.id = employee_salary.employee_id 
    	where employee_id is null;
    
--4.Вывести все зарплатные позиции  меньше 2000 но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
select monthly_salary as "Unassigned Salary"
from salary
left join employee_salary
	on salary.id = employee_salary.salary_id 
left join employees
	on  employees.id = employee_salary.employee_id 
    	where employee_id is null
			and monthly_salary <= 2000;
	
--5.Найти всех работников кому не начислена ЗП.
select employee_name as "Employee name",
	   monthly_salary as "Missing Salary"
from salary
join employee_salary
	on salary.id = employee_salary.salary_id
right join employees
	on employees.id = employee_salary.employee_id
		where monthly_salary is null;
		
--6.Вывести всех работников с названиями их должности.
select employee_name as "Employee name",
	   role_name as "Position"
from roles
left join roles_employee
	on roles_employee.role_id = roles.id
join employees
	on employees.id = roles_employee.employee_id;
	
--7.Вывести имена и должность только Java разработчиков.
select employee_name as "Java Developers",
	   role_name as "Position"
from roles
left join roles_employee 
	on roles_employee.role_id = roles.id 
join employees 
	on employees.id = roles_employee.employee_id 
		where role_name like '%Java %';
	
--8.Вывести имена и должность только Python разработчиков.
select employee_name as "Python Developers",
	   role_name as "Position"
from roles
left join roles_employee 
	on roles_employee.role_id = roles.id 
join employees 
	on employees.id = roles_employee.employee_id 
		where role_name like '%Python %';
	
--9.Вывести имена и должность всех QA инженеров.
select employee_name as "QA Engineers",
	   role_name as "Position"
from roles
left join roles_employee 
	on roles_employee.role_id = roles.id 
join employees 
	on employees.id = roles_employee.employee_id 
		where role_name like '%QA%';
	
--10.Вывести имена и должность ручных QA инженеров.
select employee_name as "Manual QA Engineers",
	   role_name as "Position"
from roles
left join roles_employee 
	on roles_employee.role_id = roles.id 
join employees 
	on employees.id = roles_employee.employee_id 
		where role_name like '%Manual QA%';
	
--11.Вывести имена и должность автоматизаторов QA.
select employee_name as "Automation QA Engineers",
	   role_name as "Position"
from roles
left join roles_employee 
	on roles_employee.role_id = roles.id 
join employees 
	on employees.id = roles_employee.employee_id 
		where role_name like '%Automation QA%';
	
--12.Вывести имена и зарплаты Junior специалистов.
select employee_name as "Juniors Specialists",
	   role_name as "Position",
	   monthly_salary as "Juniors Salary"	   
from employees
left join employee_salary
	on employees.id = employee_salary.employee_id 
left join salary
	on employee_salary.salary_id = salary.id 
join roles_employee
	on employees.id = roles_employee.employee_id 
join roles
	on roles_employee.role_id = roles.id 
		where role_name like '%Junior%';
	
--13.Вывести имена и зарплаты Middle специалистов.
select employee_name as "Middle Specialists",
	   role_name as "Position",
	   monthly_salary as "Junior Salary"
from employees
left join employee_salary
	on  employees.id = employee_salary.employee_id 
left join salary
	on employee_salary.salary_id = salary.id 
join roles_employee
	on employees.id = roles_employee.employee_id 
join roles
	on roles_employee.role_id = roles.id 
		where role_name like '%Middle%';
	
--14.Вывести имена и зарплаты Senior специалистов.
select employee_name as "Senior Specialists",
	   role_name as "Position",
	   monthly_salary as "Senior Salary"
from employees 
left join employee_salary
	on employees.id = employee_salary.employee_id
left join salary 
	on employee_salary.salary_id = salary.id 
join roles_employee 
	on employees.id = roles_employee.employee_id 
join roles 
	on roles_employee.role_id = roles.id 
		where role_name like '%Senior%';
	
--15.Вывести зарплаты Java разработчиков.
select role_name as "Position",
	   monthly_salary as "Salary"
from employees
left join employee_salary 
	on employees.id = employee_salary.employee_id 
left join salary 
	on employee_salary.salary_id = salary.id
join roles_employee
	on employees.id = roles_employee.employee_id
join roles 
	on roles_employee.role_id = roles.id 
		where role_name like '%Java %';

--16.Вывести зарплаты Python разработчиков.
select role_name as "Position",
	   monthly_salary as "Salary"
from employees
left join employee_salary
	on employees.id = employee_salary.employee_id 
left join salary 
	on employee_salary.salary_id = salary.id 
join roles_employee
	on employees.id = roles_employee.employee_id 
join roles 
	on roles_employee.role_id = roles.id 
		where role_name like '%Python%';

--17.Вывести имена и зарплаты Junior Python разработчиков.
select employee_name as "Employee names",
	   role_name as "Position",
	   monthly_salary as "Salary"
from employees
left join employee_salary
	on employees.id = employee_salary.employee_id 
left join salary 
	on employee_salary.salary_id = salary.id 
join roles_employee 
	on employees.id = roles_employee.employee_id 
join roles 
	on roles_employee.role_id = roles.id 
		where role_name like '%Junior Python%';

--18.Вывести имена и зарплаты Middle JS разработчиков.
select employee_name as "Employee names",
	   role_name as "Position",
	   monthly_salary as "Salary"
from employees
left join employee_salary 
	on employees.id = employee_salary.employee_id
left join salary
	on employee_salary.salary_id = salary.id 
join roles_employee 
	on employees.id = roles_employee.employee_id 
join roles 
	on roles_employee.role_id = roles.id 
		where role_name like '%Middle JavaS%';
			
--19.Вывести имена и зарплаты Senior Java разработчиков.
select employee_name as "Employee names",
	   role_name as "Position",
	   monthly_salary as "Salary"
from employees
left join employee_salary 
	on employees.id = employee_salary.employee_id
left join salary
	on employee_salary.salary_id = salary.id 
join roles_employee 
	on employees.id = roles_employee.employee_id 
join roles 
	on roles_employee.role_id = roles.id 
		where role_name like '%Senior Java %';
	
--20.Вывести зарплаты Junior QA инженеров.
select role_name as "Position",
	   monthly_salary as "Salary"
from employees
left join employee_salary
	on employees.id = employee_salary.employee_id 
left join salary 
	on employee_salary.salary_id = salary.id 
join roles_employee
	on employees.id = roles_employee.employee_id 
join roles 
	on roles_employee.role_id = roles.id 
		where role_name like '%Junior% %QA%';
	
--21.Вывести среднюю зарплату всех Junior специалистов.
select role_name as "Position",
	   avg(monthly_salary) as "Average Salary"
from employees
left join employee_salary
	on employees.id = employee_salary.employee_id 
left join salary 
	on employee_salary.salary_id = salary.id 
join roles_employee
	on employees.id = roles_employee.employee_id 
join roles 
	on roles_employee.role_id = roles.id 
		where role_name like '%Junior%'
		group by role_name;
		
--22.Вывести сумму зарплат JS разработчиков.
select role_name as "Position",
	   sum(monthly_salary) as "Sum of Salary"
from employees
left join employee_salary
	on employees.id = employee_salary.employee_id 
left join salary 
	on employee_salary.salary_id = salary.id 
join roles_employee
	on employees.id = roles_employee.employee_id 
join roles 
	on roles_employee.role_id = roles.id 
		where role_name like '%JavaS%'
		group by role_name;

--23.Вывести минимальную ЗП QA инженеров.
select role_name as "Position",
	   min(monthly_salary) as "Min Salary"
from employees
left join employee_salary
	on employees.id = employee_salary.employee_id 
left join salary 
	on employee_salary.salary_id = salary.id 
join roles_employee
	on employees.id = roles_employee.employee_id 
join roles 
	on roles_employee.role_id = roles.id 
		where role_name like '%QA%'
		group by role_name;

--24.Вывести максимальную ЗП QA инженеров.
select role_name as "Position",
	   max(monthly_salary) as "Max Salary"
from employees
left join employee_salary
	on employees.id = employee_salary.employee_id 
left join salary 
	on employee_salary.salary_id = salary.id 
join roles_employee
	on employees.id = roles_employee.employee_id 
join roles 
	on roles_employee.role_id = roles.id 
		where role_name like '%QA%'
		group by role_name;
	
--25.Вывести количество QA инженеров.
select count(role_name) as "Amount of QA engineers"
from employees
left join employee_salary
	on employees.id = employee_salary.employee_id 
left join salary 
	on employee_salary.salary_id = salary.id 
join roles_employee
	on employees.id = roles_employee.employee_id 
join roles 
	on roles_employee.role_id = roles.id 
		where role_name like '%QA%';

--26.Вывести количество Middle специалистов.
select count(role_name) as "Amount of Middle Specialists"
from employees
left join employee_salary
	on employees.id = employee_salary.employee_id 
left join salary 
	on employee_salary.salary_id = salary.id 
join roles_employee
	on employees.id = roles_employee.employee_id 
join roles 
	on roles_employee.role_id = roles.id 
		where role_name like '%Middle%';
	
--27.Вывести количество разработчиков.
select count(role_name) as "Amount of Developers"
from employees
left join employee_salary
	on employees.id = employee_salary.employee_id 
left join salary 
	on employee_salary.salary_id = salary.id 
join roles_employee
	on employees.id = roles_employee.employee_id 
join roles 
	on roles_employee.role_id = roles.id 
		where role_name like '%developer%';

--28.Вывести фонд (сумму) зарплаты разработчиков.
select sum(monthly_salary) as "Devs Payroll"
from employees
left join employee_salary
	on employees.id = employee_salary.employee_id 
left join salary 
	on employee_salary.salary_id = salary.id 
join roles_employee
	on employees.id = roles_employee.employee_id 
join roles 
	on roles_employee.role_id = roles.id
		where roles.role_name like '%developer%';

--29.Вывести имена, должности и ЗП всех специалистов по возрастанию.
select employee_name as "Employee names",
	   role_name as "Position",
	   monthly_salary as "Salary"
from employees
left join employee_salary 
	on employees.id = employee_salary.employee_id
left join salary
	on employee_salary.salary_id = salary.id 
join roles_employee 
	on employees.id = roles_employee.employee_id 
join roles 
	on roles_employee.role_id = roles.id 
		order by monthly_salary asc;

--30.Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП от 1700 до 2300.
select employee_name as "Employee names",
	   role_name as "Position",
	   monthly_salary as "Salary"
from employees
left join employee_salary 
	on employees.id = employee_salary.employee_id
left join salary
	on employee_salary.salary_id = salary.id 
join roles_employee 
	on employees.id = roles_employee.employee_id 
join roles 
	on roles_employee.role_id = roles.id
		where monthly_salary between 1700 and 2300
		order by monthly_salary asc;
	
--31.Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП меньше 2300.
select employee_name as "Employee names",
	   role_name as "Position",
	   monthly_salary as "Salary"
from employees
left join employee_salary 
	on employees.id = employee_salary.employee_id
left join salary
	on employee_salary.salary_id = salary.id 
join roles_employee 
	on employees.id = roles_employee.employee_id 
join roles 
	on roles_employee.role_id = roles.id
		where monthly_salary < 2300
		order by monthly_salary asc;

--32.Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП равна 1100, 1500, 2000.
select employee_name as "Employee names",
	   role_name as "Position",
	   monthly_salary as "Salary"
from employees
left join employee_salary 
	on employees.id = employee_salary.employee_id
left join salary
	on employee_salary.salary_id = salary.id 
join roles_employee 
	on employees.id = roles_employee.employee_id 
join roles 
	on roles_employee.role_id = roles.id
		where monthly_salary in (1100, 1500 ,2000)
		order by monthly_salary asc;
		