-- Задание 4

-- SCHEMA:

-- Create table If Not Exists Person (Id int, Email varchar(255));
-- Truncate table Person;
-- insert into Person (Id, Email) values ('1', 'a@b.com');
-- insert into Person (Id, Email) values ('2', 'c@d.com');
-- insert into Person (Id, Email) values ('3', 'a@b.com');
--
-- Write a SQL query to find all duplicate emails in a table named Person.
-- +----+---------+
-- | Id | Email   |
-- +----+---------+
-- | 1  | a@b.com |
-- | 2  | c@d.com |
-- | 3  | a@b.com |
-- +----+---------+
--
-- For example, your query should return the following for the above table:
--                                                                   +---------+
-- | Email   |
-- +---------+
-- | a@b.com |
-- +---------+
--
-- Note: All emails are in lowercase.

create table if not exists person
(
    Id    int,
    email varchar(255)

);

insert into Person (Id, Email)
values ('1', 'a@b.com');

insert into Person (Id, Email)
values ('2', 'c@d.com');

insert into Person (Id, Email)
values ('3', 'a@b.com');

-- Decision
-- V1
select p.email as email
from person p
group by email
having count(email) > 1;

-- V2
select distinct p.email as email
from person p
         join person p2 on p.Email = p2.Email
where p.Id != p2.Id;