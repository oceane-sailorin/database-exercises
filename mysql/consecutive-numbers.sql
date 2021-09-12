#consecutive numbers
"""
SQL Schema

Table: Logs

+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| id          | int     |
| num         | varchar |
+-------------+---------+
id is the primary key for this table.

 

Write an SQL query to find all numbers that appear at least three times consecutively.

Return the result table in any order.
"""

select l.Num as ConsecutiveNums from Logs l where 
(select count(*) as nb from Logs l2
        WHERE l2.Id BETWEEN l.Id AND (l1.Id + 2) 
)= 3


select distinct l.Num as ConsecutiveNums from Logs l, Logs l2, Logs l3 where l2.Id=l.Id +1 and l3.Id=l.Id+2 and l2.Num = l.Num and l3.Num=l.Num
