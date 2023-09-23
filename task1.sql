-- Задание 1
--
-- SCHEMA:
--
-- Create table Person (PersonId int, FirstName varchar(255), LastName varchar(255));
-- Create table Address (AddressId int, PersonId int, City varchar(255), State varchar(255));
-- Truncate table Person;
-- insert into Person (PersonId, LastName, FirstName) values ('1', 'Wang', 'Allen');
-- Truncate table Address;
-- insert into Address (AddressId, PersonId, City, State) values ('1', '2', 'New York City', 'New York');
--
--
-- Write a SQL query for a report that provides the following information for each person in the Person table,
--     regardless if there is an address for each of those people:
-- FirstName, LastName, City, State
-- Напишите запрос SQL для отчета, который предоставляет следующую информацию для каждого человека в таблице Person, независимо от того,
--     существует ли адрес для каждого из этих людей:
-- Имя, Фамилия, Город, Штат
--
-- 1) select p.FirstName as FirstName, p.LastName as LastName, a.City as City, a.State as State from Person p
create table person
(
    PersonId  int,
    FirstName varchar(255),
    LastName  varchar(255)
);

create table address
(
    AddressId int,
    PersonId  int,
    City      varchar(255),
    State     varchar(255)

);

insert into person (personId, LastName, FirstName)
values ('1', 'Wang', 'Allen');

insert into address (AddressId, PersonId, City, State)
values ('1', '2', 'New York City', 'New York');

-- Decision
select p.FirstName as FirstName, p.LastName as LastName, a.City as City, a.State as State
from Person p
         left join Address a on p.PersonId = a.PersonId;