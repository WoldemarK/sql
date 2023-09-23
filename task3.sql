-- Задание 3

-- SCHEMA:

-- Create table If Not Exists Employee (Id int, Name varchar(255), Salary int, ManagerId int);
-- Truncate table Employee;
-- insert into Employee (Id, Name, Salary, ManagerId) values ('1', 'Joe', '70000', '3');
-- insert into Employee (Id, Name, Salary, ManagerId) values ('2', 'Henry', '80000', '4');
-- insert into Employee (Id, Name, Salary, ManagerId) values ('3', 'Sam', '60000', null);
-- insert into Employee (Id, Name, Salary, ManagerId) values ('4', 'Max', '90000', null);
-- The Employee table holds all employees including their managers. Every employee has an Id, and there is also a column for the manager Id.
-- +----+-------+--------+-----------+
-- | Id | Name  | Salary | ManagerId |
-- +----+-------+--------+-----------+
-- | 1  | Joe   | 70000  | 3         |
-- | 2  | Henry | 80000  | 4         |
-- | 3  | Sam   | 60000  | NULL      |
-- | 4  | Max   | 90000  | NULL      |
-- +----+-------+--------+-----------+
-- Given the Employee table, write a SQL query that finds out employees who earn more than their managers. For the above table, Joe is the only employee who earns more than his manager.
-- +----------+
-- | Employee |
-- +----------+
-- | Joe      |
-- +----------+

create table if not exists employee
(
    Id        int,
    name      varchar(255),
    salary    int,
    managerId int
);

insert into employee (Id, name, salary, managerId)
values ('1', 'Joe', '70000', '3');

insert into employee (Id, name, salary, managerId)
values ('2', 'Henry', '80000', '4');

insert into employee (Id, name, salary, managerId)
values ('3', 'Sam', '60000', null);

insert into employee (Id, name, salary, managerId)
values ('4', 'Max', '90000', null);

-- Decision

select e1.name as Employee
FROM employee e1
         join employee e2 on e1.ManagerId = e2.Id
where e1.salary > e2.salary;