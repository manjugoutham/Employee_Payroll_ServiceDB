//.............UC7.......................


mysql> select sum(salary) from employee_payroll where gender='M' group by gender;
+-------------+
| sum(salary) |
+-------------+
|       42000 |
+-------------+
1 row in set (0.03 sec)

mysql> select count(name) from employee_payroll;
+-------------+
| count(name) |
+-------------+
|           4 |
+-------------+
1 row in set (0.20 sec)

mysql> select avg(salary) from employee_payroll;
+-------------+
| avg(salary) |
+-------------+
|  22325.0000 |
+-------------+
1 row in set (0.00 sec)

mysql> select min(salary) from employee_payroll;
+-------------+
| min(salary) |
+-------------+
|       20000 |
+-------------+
1 row in set (0.04 sec)

mysql> select max(salary) from employee_payroll;
+-------------+
| max(salary) |
+-------------+
|       25000 |
+-------------+
1 row in set (0.00 sec)

mysql> select count(name) from employee_payroll where gender = 'F';
+-------------+
| count(name) |
+-------------+
|           1 |
+-------------+
1 row in set (0.00 sec)

mysql> select count(name) from employee_payroll where gender = 'F' group by gender;
+-------------+
| count(name) |
+-------------+
|           1 |
+-------------+
1 row in set (0.00 sec)

mysql> select count(id) from employee_payroll where gender = 'M' group by salary;
+-----------+
| count(id) |
+-----------+
|         1 |
|         1 |
+-----------+
2 rows in set (0.02 sec)

mysql> select count(name) from employee_payroll where gender = 'M' group by salary;
+-------------+
| count(name) |
+-------------+
|           1 |
|           1 |
+-------------+
2 rows in set (0.00 sec)

mysql> select avg(salary) from employee_payroll where gender = 'F' group by id;
+-------------+
| avg(salary) |
+-------------+
|  22300.0000 |
+-------------+
1 row in set (0.00 sec)

mysql> select avg(salary) from employee_payroll where gender = 'M' group by id;
+-------------+
| avg(salary) |
+-------------+
|  20000.0000 |
|  22000.0000 |
+-------------+
2 rows in set (0.00 sec)