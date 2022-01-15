................UC11.........................




mysql> desc employee;
+------------------+--------------+------+-----+---------+-------+
| Field            | Type         | Null | Key | Default | Extra |
+------------------+--------------+------+-----+---------+-------+
| employee_id      | int          | NO   | PRI | NULL    |       |
| employeeName     | varchar(200) | NO   |     | NULL    |       |
| employee_address | varchar(30)  | NO   |     | NULL    |       |
+------------------+--------------+------+-----+---------+-------+
3 rows in set (0.17 sec)

mysql> insert into employee values(1,'Goutham','Banglore'),(2,'Allen','Manglore'),(3,'ashwin','KGF');
Query OK, 3 rows affected (1.02 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> select * from employee;
+-------------+--------------+------------------+
| employee_id | employeeName | employee_address |
+-------------+--------------+------------------+
|           1 | Goutham      | Banglore         |
|           2 | Allen        | Manglore         |
|           3 | ashwin       | KGF              |
+-------------+--------------+------------------+
3 rows in set (0.00 sec)

mysql> create table employee_Contacts (employee_id int(10), mobilenumber varchar(100) NOT NULL,foreign key (Employee_ID) references employee (employee_id));
Query OK, 0 rows affected, 1 warning (2.80 sec)

mysql> desc employee_Contacts;
+--------------+--------------+------+-----+---------+-------+
| Field        | Type         | Null | Key | Default | Extra |
+--------------+--------------+------+-----+---------+-------+
| employee_id  | int          | YES  | MUL | NULL    |       |
| mobilenumber | varchar(100) | NO   |     | NULL    |       |
+--------------+--------------+------+-----+---------+-------+
2 rows in set (0.06 sec)

mysql> create table employee_Department (employee_id int(10),Departmentname varchar(255),foreign key (employee_id) references employee(employee_id));
Query OK, 0 rows affected, 1 warning (1.68 sec)

mysql> desc employee_Department;
+----------------+--------------+------+-----+---------+-------+
| Field          | Type         | Null | Key | Default | Extra |
+----------------+--------------+------+-----+---------+-------+
| employee_id    | int          | YES  | MUL | NULL    |       |
| Departmentname | varchar(255) | YES  |     | NULL    |       |
+----------------+--------------+------+-----+---------+-------+
2 rows in set (0.29 sec)

mysql> alter table employee_Contacts add City varchar(20) not null after mobilenumber;
Query OK, 0 rows affected (1.91 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc employee_Contacts;
+--------------+--------------+------+-----+---------+-------+
| Field        | Type         | Null | Key | Default | Extra |
+--------------+--------------+------+-----+---------+-------+
| employee_id  | int          | YES  | MUL | NULL    |       |
| mobilenumber | varchar(100) | NO   |     | NULL    |       |
| City         | varchar(20)  | NO   |     | NULL    |       |
+--------------+--------------+------+-----+---------+-------+
3 rows in set (0.06 sec)

mysql> insert into employee_contacts VALUES (1,'8105457612','kolar'),(1,'8105457612','mulbagal');
Query OK, 2 rows affected (0.46 sec)
Records: 2  Duplicates: 0  Warnings: 0

mysql> select * from employee_contacts;
+-------------+--------------+----------+
| employee_id | mobilenumber | City     |
+-------------+--------------+----------+
|           1 | 8105457612   | kolar    |
|           1 | 8105457612   | mulbagal |
+-------------+--------------+----------+
2 rows in set (0.01 sec)

mysql> insert into employee_contacts VALUES (2,'8105457222','bangarapet');
Query OK, 1 row affected (0.09 sec)

mysql> select * from employee_contacts;
+-------------+--------------+------------+
| employee_id | mobilenumber | City       |
+-------------+--------------+------------+
|           1 | 8105457612   | kolar      |
|           1 | 8105457612   | mulbagal   |
|           2 | 8105457222   | bangarapet |
+-------------+--------------+------------+
3 rows in set (0.00 sec)

mysql> insert into employee_Department values (1,'Marketting'),(2,'Sales'),(3,'Sales');
Query OK, 3 rows affected (0.18 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> select * from employee_Department;
+-------------+----------------+
| employee_id | Departmentname |
+-------------+----------------+
|           1 | Marketting     |
|           2 | Sales          |
|           3 | Sales          |
+-------------+----------------+
3 rows in set (0.00 sec)

mysql> alter table employee_Department add Department_id varchar(5) not null primary key after employee_id;

mysql> create table emp_salary(Salary_id int,employee_id int(10) not null,BasicPay float not null,Deducation float not null,TaxablePay float not null,Tax float not null,NetPay float not null, Salary int not null,PRIMARY KEY(Salary_ID),foreign key (employee_id) references employee (employee_id),foreign key (employee_id) references employee_Department(employee_id));
Query OK, 0 rows affected, 1 warning (2.98 sec)

mysql> desc employee_Department;
+----------------+--------------+------+-----+---------+-------+
| Field          | Type         | Null | Key | Default | Extra |
+----------------+--------------+------+-----+---------+-------+
| employee_id    | int          | YES  | MUL | NULL    |       |
| Departmentname | varchar(255) | YES  |     | NULL    |       |
+----------------+--------------+------+-----+---------+-------+
2 rows in set (0.04 sec)

mysql> desc emp_salary;
+-------------+-------+------+-----+---------+-------+
| Field       | Type  | Null | Key | Default | Extra |
+-------------+-------+------+-----+---------+-------+
| Salary_id   | int   | NO   | PRI | NULL    |       |
| employee_id | int   | NO   | MUL | NULL    |       |
| BasicPay    | float | NO   |     | NULL    |       |
| Deducation  | float | NO   |     | NULL    |       |
| TaxablePay  | float | NO   |     | NULL    |       |
| Tax         | float | NO   |     | NULL    |       |
| NetPay      | float | NO   |     | NULL    |       |
| Salary      | int   | NO   |     | NULL    |       |
+-------------+-------+------+-----+---------+-------+
8 rows in set (0.00 sec)

mysql> insert into emp_salary values(1,1,2000,600,2000,3000,2000,20000),(2,1,4000,2000,3500,800,4000,22000);
Query OK, 2 rows affected (0.23 sec)
Records: 2  Duplicates: 0  Warnings: 0

mysql> select * from emp_salary;
+-----------+-------------+----------+------------+------------+------+--------+--------+
| Salary_id | employee_id | BasicPay | Deducation | TaxablePay | Tax  | NetPay | Salary |
+-----------+-------------+----------+------------+------------+------+--------+--------+
|         1 |           1 |     2000 |        600 |       2000 | 3000 |   2000 |  20000 |
|         2 |           1 |     4000 |       2000 |       3500 |  800 |   4000 |  22000 |
+-----------+-------------+----------+------------+------------+------+--------+--------+
2 rows in set (0.00 sec)