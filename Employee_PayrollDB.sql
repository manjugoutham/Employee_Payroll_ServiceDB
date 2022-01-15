................UC12................



mysql> select * from emp_salary;
+-----------+-------------+----------+------------+------------+------+--------+--------+
| Salary_id | employee_id | BasicPay | Deducation | TaxablePay | Tax  | NetPay | Salary |
+-----------+-------------+----------+------------+------------+------+--------+--------+
|         1 |           1 |     2000 |        600 |       2000 | 3000 |   2000 |  20000 |
|         2 |           1 |     4000 |       2000 |       3500 |  800 |   4000 |  22000 |
+-----------+-------------+----------+------------+------------+------+--------+--------+
2 rows in set (0.00 sec)

mysql> select salary from emp_salary where employee_id = 1;
+--------+
| salary |
+--------+
|  20000 |
|  22000 |
+--------+
2 rows in set (0.00 sec)

mysql> select count(Salary_id) from emp_salary where salary = 20000 group by salary;
+------------------+
| count(Salary_id) |
+------------------+
|                1 |
+------------------+
1 row in set (0.03 sec)

mysql> select avg(Tax) from emp_salary where Salary_id = 2 group by Tax;
+----------+
| avg(Tax) |
+----------+
|      800 |
+----------+
1 row in set (0.00 sec)

mysql> select max(salary) from emp_salary;
+-------------+
| max(salary) |
+-------------+
|       22000 |
+-------------+
1 row in set (0.02 sec)

mysql> select min(salary) from emp_salary;
+-------------+
| min(salary) |
+-------------+
|       20000 |
+-------------+
1 row in set (0.00 sec)

mysql> select sum(salary) from emp_salary;
+-------------+
| sum(salary) |
+-------------+
|       42000 |
+-------------+
1 row in set (0.04 sec)