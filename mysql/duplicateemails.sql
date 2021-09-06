#duplicate emails

SQL Schema

Write a SQL query to find all duplicate emails in a table named Person.

+----+---------+
| Id | Email   |
+----+---------+
| 1  | a@b.com |
| 2  | c@d.com |
| 3  | a@b.com |
+----+---------+

For example, your query should return the following for the above table:

+---------+
| Email   |
+---------+
| a@b.com |
+---------+


# Write your MySQL query statement below
#first example:
select Email from Person Group by Email having COUNT(Email) > 1

#second example:
select p.Email as Email from Person p, Person p2 where p.Email=p2.Email and p.Id != p2.Id group by p.Email

#third example
select distinct p.Email as Email from Person p, Person p2 where p.Email=p2.Email and p.Id != p2.Id 