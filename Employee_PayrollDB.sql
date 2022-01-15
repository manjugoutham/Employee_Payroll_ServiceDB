................UC3............

mysql> insert into employee_payroll(id,name)values(1,'Goutham')
    -> ;
Query OK, 1 row affected (0.40 sec)

mysql> desc employee_payroll;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| id    | int         | NO   | PRI | NULL    |       |
| name  | varchar(20) | NO   |     | NULL    |       |
+-------+-------------+------+-----+---------+-------+
2 rows in set (0.25 sec)

mysql> select * from employee_payroll;
+----+---------+
| id | name    |
+----+---------+
|  1 | Goutham |
+----+---------+
1 row in set (0.01 sec)



mysql> alter table employee_payroll add address varchar(100);
Query OK, 0 rows affected (2.36 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc employee_payroll;
+---------+--------------+------+-----+---------+-------+
| Field   | Type         | Null | Key | Default | Extra |
+---------+--------------+------+-----+---------+-------+
| id      | int          | NO   | PRI | NULL    |       |
| name    | varchar(20)  | NO   |     | NULL    |       |
| address | varchar(100) | YES  |     | NULL    |       |
+---------+--------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> update employee_payroll set address = 'banglore' where id = 1;
Query OK, 1 row affected (0.17 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from employee_payroll;
+----+---------+----------+
| id | name    | address  |
+----+---------+----------+
|  1 | Goutham | banglore |
+----+---------+----------+
1 row in set (0.00 sec)

mysql> update employee_payroll set name= 'Manju' where id = 1;
Query OK, 1 row affected (0.13 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from employee_payroll;
+----+-------+----------+
| id | name  | address  |
+----+-------+----------+
|  1 | Manju | banglore |
+----+-------+----------+
1 row in set (0.10 sec)

mysql> update employee_payroll set name= 'Gowtham' where id = 1;
Query OK, 1 row affected (0.17 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from employee_payroll;
+----+---------+----------+
| id | name    | address  |
+----+---------+----------+
|  1 | Gowtham | banglore |
+----+---------+----------+
1 row in set (0.00 sec)

mysql> select * from employee_payroll;
+----+---------+----------+
| id | name    | address  |
+----+---------+----------+
|  1 | Gowtham | banglore |
+----+---------+----------+
1 row in set (0.00 sec)

mysql> alter table employee_payroll add start_date DATE;
Query OK, 0 rows affected (4.28 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> select * from employee_payroll;
+----+---------+----------+------------+
| id | name    | address  | start_date |
+----+---------+----------+------------+
|  1 | Gowtham | banglore | NULL       |
+----+---------+----------+------------+
1 row in set (0.08 sec)

mysql> alter table employee_payroll add salary int;
Query OK, 0 rows affected (6.25 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc employee_payroll;
+------------+--------------+------+-----+---------+-------+
| Field      | Type         | Null | Key | Default | Extra |
+------------+--------------+------+-----+---------+-------+
| id         | int          | NO   | PRI | NULL    |       |
| name       | varchar(20)  | NO   |     | NULL    |       |
| address    | varchar(100) | YES  |     | NULL    |       |
| start_date | date         | YES  |     | NULL    |       |
| salary     | int          | YES  |     | NULL    |       |
+------------+--------------+------+-----+---------+-------+



//..............UC3...................



mysql> insert into employee_payroll(id,name,address,start_date,salary)values(1,'Gowtham','Bnaglore','2022-01-12',20000);
ERROR 1062 (23000): Duplicate entry '1' for key 'employee_payroll.PRIMARY'
mysql> select * from employee_payroll;
+----+---------+----------+------------+--------+
| id | name    | address  | start_date | salary |
+----+---------+----------+------------+--------+
|  1 | Gowtham | banglore | NULL       |   NULL |
+----+---------+----------+------------+--------+
1 row in set (0.00 sec)

mysql> insert into employee_payroll(id,name,address,start_date,salary)values(2,'Gowtham','Bnaglore','2022-01-12',20000);
Query OK, 1 row affected (0.24 sec)

mysql> select * from employee_payroll;
+----+---------+----------+------------+--------+
| id | name    | address  | start_date | salary |
+----+---------+----------+------------+--------+
|  1 | Gowtham | banglore | NULL       |   NULL |
|  2 | Gowtham | Bnaglore | 2022-01-12 |  20000 |
+----+---------+----------+------------+--------+
2 rows in set (0.00 sec)

mysql> insert into employee_payroll(id,name,address,start_date,salary)values(3,'Manju','Bnaglore','2022-01-10',22000);
Query OK, 1 row affected (0.16 sec)

mysql> insert into employee_payroll(id,name,address,start_date,salary)values(4,'smith','kolar','2022-01-11',22300);
Query OK, 1 row affected (0.33 sec)


mysql> insert into employee_payroll(id,name,address,start_date,salary)values(1,'Gowthamraj','Bnaglore','2022-01-12',25000);
Query OK, 1 row affected (0.12 sec)

mysql> select * from employee_payroll;
+----+------------+----------+------------+--------+
| id | name       | address  | start_date | salary |
+----+------------+----------+------------+--------+
|  1 | Gowthamraj | Bnaglore | 2022-01-12 |  25000 |
|  2 | Gowtham    | Bnaglore | 2022-01-12 |  20000 |
|  3 | Manju      | Bnaglore | 2022-01-10 |  22000 |
|  4 | smith      | kolar    | 2022-01-11 |  22300 |
+----+------------+----------+------------+--------+
4 rows in set (0.00 sec)