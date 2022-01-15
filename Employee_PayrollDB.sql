//.....................UC6...........................


mysql> alter table employee_payroll add gender char(1)not null after name;
Query OK, 0 rows affected (4.55 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc employee_payroll;
+------------+--------------+------+-----+---------+-------+
| Field      | Type         | Null | Key | Default | Extra |
+------------+--------------+------+-----+---------+-------+
| id         | int          | NO   | PRI | NULL    |       |
| name       | varchar(20)  | NO   |     | NULL    |       |
| gender     | char(1)      | NO   |     | NULL    |       |
| address    | varchar(100) | YES  |     | NULL    |       |
| start_date | date         | YES  |     | NULL    |       |
| salary     | int          | YES  |     | NULL    |       |
+------------+--------------+------+-----+---------+-------+
6 rows in set (0.06 sec)

mysql> alter table employee_payroll add gender char(1) after name;
ERROR 1060 (42S21): Duplicate column name 'gender'
mysql> update employee_payroll set gender='M' where name ='Gowtham' or name = 'manju;'
    -> ;
Query OK, 1 row affected (0.22 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> update employee_payroll set gender='M' where name ='Gowtham' or name = 'manju';
Query OK, 1 row affected (0.15 sec)
Rows matched: 2  Changed: 1  Warnings: 0

mysql> SELECT * FROM employee_payroll;
+----+------------+--------+----------+------------+--------+
| id | name       | gender | address  | start_date | salary |
+----+------------+--------+----------+------------+--------+
|  1 | Gowthamraj |        | Bnaglore | 2022-01-12 |  25000 |
|  2 | Gowtham    | M      | Bnaglore | 2022-01-12 |  20000 |
|  3 | Manju      | M      | Bnaglore | 2022-01-10 |  22000 |
|  4 | smith      |        | kolar    | 2022-01-11 |  22300 |
+----+------------+--------+----------+------------+--------+
4 rows in set (0.00 sec)
