 ---1. Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами.
select employeers.id, employeers.employee_name, salary_first.monthly_salary 
from  employeers join employee_salary
on employeers.id = employee_salary.employee_id
join salary_first
on salary_first.id = employee_salary.salary_first_id
;


----2  Вывести всех работников у которых ЗП меньше 2000.
select employeers.id, employeers.employee_name, salary_first.monthly_salary 
from  employeers join employee_salary
on employeers.id = employee_salary.employee_id
join salary_first
on salary_first.id = employee_salary.salary_first_id
where monthly_salary <2000;

 --- 3. Вывести все зарплатные позиции, но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
---- подсказка мне (что бы проверить правильнось вывода ЗП в select  можно добавить employee_salary.employee_id, employee_salary.employee_id, )

select employeers.employee_name, salary_first.monthly_salary
from  employeers right join employee_salary
on employeers.id = employee_salary.employee_id
join salary_first
on salary_first.id = employee_salary.salary_first_id
where employeers.id is null
;
--4. Вывести все зарплатные позиции  меньше 2000 но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
select employee_salary.employee_id, employeers.employee_name, salary_first.monthly_salary
from  employeers right join employee_salary
on employeers.id = employee_salary.employee_id
join salary_first
on salary_first.id = employee_salary.salary_first_id
where monthly_salary<2000 and employeers.employee_name is null;

--5. Найти всех работников кому не начислена ЗП.
select  employeers.id, employeers.employee_name
from employeers left join employee_salary
on employeers.id = employee_salary.employee_id
where employee_salary.salary_first_id is null;



--6. Вывести всех работников с названиями их должности.(для проверки вывести employeers.id,roles_employee.id,)
select  employeers.employee_name,  roles.role_name
from employeers join roles_employee
on  employeers.id = roles_employee.id
join roles 
on roles.id = role_id;

--7. Вывести имена и должность только Java разработчиков.(для проверки вывести employeers.id,roles_employee.id,)
select  employeers.employee_name, roles.role_name
from employeers join roles_employee
on  employeers.id = roles_employee.id
join roles 
on roles.id = role_id
where role_name like '%Java developer%';

--8. Вывести имена и должность только Python разработчиков.(для проверки вывести employeers.id,roles_employee.id,)
select employeers.employee_name, roles.role_name
from employeers join roles_employee
on  employeers.id = roles_employee.id
join roles 
on roles.id = role_id
where role_name like '%Python developer%';

--9. Вывести имена и должность всех QA инженеров.(для проверки вывести employeers.id,roles_employee.id,)
select employeers.employee_name, roles.role_name
from employeers join roles_employee
on  employeers.id = roles_employee.id
join roles 
on roles.id = role_id
where role_name like '%QA_engineer%';

--10. Вывести имена и должность ручных QA инженеров.(для проверки вывести employeers.id,roles_employee.id,)
select  employeers.employee_name, roles.role_name
from employeers join roles_employee
on  employeers.id = roles_employee.id
join roles 
on roles.id = role_id
where role_name like '%Manual_QA%';

--11. Вывести имена и должность автоматизаторов QA (для проверки вывести employeers.id,roles_employee.id,)
select  employeers.employee_name, roles.role_name
from employeers join roles_employee
on  employeers.id = roles_employee.id
join roles 
on roles.id = role_id
where role_name like '%Automation_QA%';

--12. Вывести имена и зарплаты Junior специалистов (для проверки вывести employeers.id,roles_employee.id, roles.role_name)
select employeers.employee_name, salary_first.monthly_salary
from employeers join roles_employee
on  employeers.id = roles_employee.id
join roles 
on roles.id = role_id
join employee_salary
on employee_salary.id = employeers.id 
join salary_first
on salary_first.id = employee_salary.salary_first_id 
where role_name like '%Junior%';

--13. Вывести имена и зарплаты Middle специалистов (для проверки вывести employeers.id,roles_employee.id, roles.role_name)
select employeers.employee_name, salary_first.monthly_salary
from employeers join roles_employee
on  employeers.id = roles_employee.id
join roles 
on roles.id = role_id
join employee_salary
on employee_salary.id = employeers.id 
join salary_first
on salary_first.id = employee_salary.salary_first_id 
where role_name like '%Middle%';

--14. Вывести имена и зарплаты Senior специалистов (для проверки вывести employeers.id,roles_employee.id, roles.role_name)
select employeers.employee_name, salary_first.monthly_salary
from employeers join roles_employee
on  employeers.id = roles_employee.id
join roles 
on roles.id = role_id
join employee_salary
on employee_salary.id = employeers.id 
join salary_first
on salary_first.id = employee_salary.salary_first_id 
where role_name like '%Senior%';

--15. Вывести зарплаты Java разработчиков (для проверки вывести employeers.id,roles_employee.id, roles.role_name)
select employeers.employee_name, salary_first.monthly_salary
from employeers join roles_employee
on  employeers.id = roles_employee.id
join roles 
on roles.id = role_id
join employee_salary
on employee_salary.id = employeers.id 
join salary_first
on salary_first.id = employee_salary.salary_first_id 
where role_name like '%Java_developer%';

--16. Вывести зарплаты Python разработчиков (для проверки вывести employeers.id,roles_employee.id, roles.role_name)
select employeers.employee_name, salary_first.monthly_salary
from employeers join roles_employee
on  employeers.id = roles_employee.id
join roles 
on roles.id = role_id
join employee_salary
on employee_salary.id = employeers.id 
join salary_first
on salary_first.id = employee_salary.salary_first_id 
where role_name like '%Python_developer%';

--17. Вывести имена и зарплаты Junior Python разработчиков (для проверки вывести employeers.id,roles_employee.id, roles.role_name)
select employeers.employee_name, salary_first.monthly_salary
from employeers join roles_employee
on  employeers.id = roles_employee.id
join roles 
on roles.id = role_id
join employee_salary
on employee_salary.id = employeers.id 
join salary_first
on salary_first.id = employee_salary.salary_first_id 
where role_name like '%Junior_Python_developer%';

--18. Вывести имена и зарплаты Middle JS разработчиков(для проверки вывести employeers.id,roles_employee.id, roles.role_name)
select employeers.employee_name, salary_first.monthly_salary
from employeers join roles_employee
on  employeers.id = roles_employee.id
join roles 
on roles.id = role_id
join employee_salary
on employee_salary.id = employeers.id 
join salary_first
on salary_first.id = employee_salary.salary_first_id 
where role_name like '%Middle_JavaScript_developer%';

--19. Вывести имена и зарплаты Senior Java разработчиков
select employeers.employee_name, salary_first.monthly_salary
from employeers join roles_employee
on  employeers.id = roles_employee.id
join roles 
on roles.id = role_id
join employee_salary
on employee_salary.id = employeers.id 
join salary_first
on salary_first.id = employee_salary.salary_first_id 
where role_name like '%Senior_Java_developer%';

--20. Вывести зарплаты Junior QA инженеров (roles.role_name)
select salary_first.monthly_salary, roles.role_name
from employeers join roles_employee
on  employeers.id = roles_employee.id
join roles 
on roles.id = role_id
join employee_salary
on employee_salary.id = employeers.id 
join salary_first
on salary_first.id = employee_salary.salary_first_id 
where role_name like '%Junior%QA_engineer%';

--21. Вывести среднюю зарплату всех Junior специалистов
select avg (salary_first.monthly_salary)
from employeers join roles_employee
on  employeers.id = roles_employee.id
join roles 
on roles.id = role_id
join employee_salary
on employee_salary.id = employeers.id 
join salary_first
on salary_first.id = employee_salary.salary_first_id 
group by roles.role_name like '%Junior%';

--22. Вывести сумму зарплат JS разработчиков????????????????как проверить и почему 2 ячейки

select  SUM(salary_first.monthly_salary)
from employeers join roles_employee
on  employeers.id = roles_employee.id
join roles 
on roles.id = role_id
join employee_salary
on employee_salary.id = employeers.id 
join salary_first
on salary_first.id = employee_salary.salary_first_id 
where roles.role_name like '%JavaScript_developer%';


--23. Вывести минимальную ЗП QA инженеров????????????????как проверить и почему 2 ячейки
select min (salary_first.monthly_salary)
from employeers join roles_employee
on  employeers.id = roles_employee.id
join roles 
on roles.id = role_id
join employee_salary
on employee_salary.id = employeers.id 
join salary_first
on salary_first.id = employee_salary.salary_first_id 
where roles.role_name like '%QA_engineer%';

--24. Вывести максимальную ЗП QA инженеров ????????????????как проверить и почему 2 ячейки
select max (salary_first.monthly_salary)
from employeers join roles_employee
on  employeers.id = roles_employee.id
join roles 
on roles.id = role_id
join employee_salary
on employee_salary.id = employeers.id 
join salary_first
on salary_first.id = employee_salary.salary_first_id 
where roles.role_name like '%QA_engineer%';

--25. Вывести количество QA инженеров

select Count(roles.role_name)
from employeers join roles_employee
on  employeers.id = roles_employee.id
join roles 
on roles.id = role_id
join employee_salary
on employee_salary.id = employeers.id 
join salary_first
on salary_first.id = employee_salary.salary_first_id 
where roles.role_name like '%QA_engineer%';

--26. Вывести количество Middle специалистов.
select Count(roles.role_name)
from employeers join roles_employee
on  employeers.id = roles_employee.id
join roles 
on roles.id = role_id
join employee_salary
on employee_salary.id = employeers.id 
join salary_first
on salary_first.id = employee_salary.salary_first_id 
where roles.role_name like '%Middle%';

--27. Вывести количество разработчиков
select Count(roles.role_name)
from employeers join roles_employee
on  employeers.id = roles_employee.id
join roles 
on roles.id = role_id
join employee_salary
on employee_salary.id = employeers.id 
join salary_first
on salary_first.id = employee_salary.salary_first_id 
where roles.role_name like '%developer%';




---28. Вывести фонд (сумму) зарплаты разработчиков.
select sum(monthly_salary)
from employeers join roles_employee
on  employeers.id = roles_employee.id
join roles 
on roles.id = role_id
join employee_salary
on employee_salary.id = employeers.id 
join salary_first
on salary_first.id = employee_salary.salary_first_id 
where roles.role_name like '%developer%'  ;



