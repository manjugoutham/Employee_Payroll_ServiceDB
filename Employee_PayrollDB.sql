mysql> select salary from employee_payroll where name = 'smith';
+--------+
| salary |
+--------+
|  22300 |
+--------+
1 row in set (0.07 sec)

mysql> SELECT * FROM employee_payroll WHERE start_date
    -> BETWEEN 'STARTING_DATE_TIME' AND 'ENDING_DATE_TIME';
Empty set, 8 warnings (0.05 sec)

mysql> SELECT * FROM employee_payroll WHERE start between CAST('2022-01-10' as DATE) and DATE(NOW());
ERROR 1054 (42S22): Unknown column 'start' in 'where clause'
mysql> SELECT * FROM employee_payroll WHERE start_date between CAST('2022-01-10' as DATE) and DATE(NOW());
+----+------------+----------+------------+--------+
| id | name       | address  | start_date | salary |
+----+------------+----------+------------+--------+
|  1 | Gowthamraj | Bnaglore | 2022-01-12 |  25000 |
|  2 | Gowtham    | Bnaglore | 2022-01-12 |  20000 |
|  3 | Manju      | Bnaglore | 2022-01-10 |  22000 |
|  4 | smith      | kolar    | 2022-01-11 |  22300 |
+----+------------+----------+------------+--------+
4 rows in set (0.04 sec)