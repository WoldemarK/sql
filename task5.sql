-- Задание 5
--
-- SCHEMA:
--
-- Create table If Not Exists Customers (Id int, Name varchar(255));
-- Create table If Not Exists Orders (Id int, CustomerId int);
-- Truncate table Customers;
-- insert into Customers (Id, Name) values ('1', 'Joe');
-- insert into Customers (Id, Name) values ('2', 'Henry');
-- insert into Customers (Id, Name) values ('3', 'Sam');
-- insert into Customers (Id, Name) values ('4', 'Max');
-- Truncate table Orders;
-- insert into Orders (Id, CustomerId) values ('1', '3');
-- insert into Orders (Id, CustomerId) values ('2', '1');
--
-- Suppose that a website contains two tables, the Customers table and the Orders table. Write a SQL query to find all customers who never order anything.
-- Table: Customers.
-- +----+-------+
-- | Id | Name  |
-- +----+-------+
-- | 1  | Joe   |
-- | 2  | Henry |
-- | 3  | Sam   |
-- | 4  | Max   |
-- +----+-------+
--
-- Table: Orders.
-- +----+------------+
-- | Id | CustomerId |
-- +----+------------+
-- | 1  | 3          |
-- | 2  | 1          |
-- +----+------------+
--
-- Using the above tables as example, return the following:
-- +-----------+
-- | Customers |
-- +-----------+
-- | Henry     |
-- | Max       |
-- +-----------+

create table if not exists customers
(
    Id   int,
    name varchar(255)
);

create table if not exists orders
(
    Id         int,
    CustomerId int
);

insert into customers (Id, name)
values ('1', 'Joe');

insert into customers (Id, name)
values ('2', 'Henry');

insert into customers (Id, name)
values ('3', 'Sam');

insert into customers (Id, name)
values ('4', 'Max');

insert into orders (Id, CustomerId)
values ('1', '3');

insert into orders (Id, CustomerId)
values ('2', '1');

-- Decision
-- V1
select c.name as Customers from customers c  where c.Id not in (select CustomerId from orders);
-- V2
select c.name as Customers from customers c left join  orders o on c.id = o.Id where o.CustomerId is null;