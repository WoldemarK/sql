-- Задание 2

-- SCHEMA:

-- Create table If Not Exists Employee (Id int, Salary int);
-- Truncate table Employee;
-- insert into Employee (Id, Salary) values ('1', '100');
-- insert into Employee (Id, Salary) values ('2', '200');
-- insert into Employee (Id, Salary) values ('3', '300');
--
-- Write a SQL query to get the second highest salary from the Employee table.
-- Напишите SQL-запрос, чтобы получить вторую по величине зарплату из таблицы «Сотрудник».
-- +----+--------+
-- | Id | Salary |
-- +----+--------+
-- | 1  | 100    |
-- | 2  | 200    |
-- | 3  | 300    |
-- +----+--------+
--
-- For example, given the above Employee table, the query should return 200 as the second highest salary.
-- If there is no second highest salary, then the query should return null.
-- +---------------------+
-- | SecondHighestSalary |
-- +---------------------+
-- | 200                 |
-- +---------------------+

create table if not exists employee
(
    Id     int,
    Salary int
);

insert into employee (Id, Salary)
values ('1', '100');

insert into employee (Id, Salary)
values ('2', '200');

insert into employee (Id, Salary)
values ('3', '300');

-- Decision

select max(salary) as SecondHighestSalary
from employee
where salary not in (select max(salary) from employee);