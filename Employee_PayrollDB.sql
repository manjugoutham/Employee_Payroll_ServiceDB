........UC2.........

mysql> create table employee_payroll;
ERROR 4028 (HY000): A table must have at least one visible column.
mysql> create table employee_payroll
    -> (id int(10) primary key,
    -> name varchar(20) not null);
Query OK, 0 rows affected, 1 warning (2.36 sec)

mysql> show tables;
+---------------------------+
| Tables_in_payroll_service |
+---------------------------+
| employee_payroll          |
+---------------------------+
1 row in set (0.09 sec)

mysql> desc employee_payroll;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| id    | int         | NO   | PRI | NULL    |       |
| name  | varchar(20) | NO   |     | NULL    |       |
+-------+-------------+------+-----+---------+-------+
2 rows in set (0.56 sec)