..............UC10............



mysql> select * from employee_payrolls where name ='Terissa';
ERROR 1054 (42S22): Unknown column 'name' in 'where clause'
mysql> select * from employee_payrolls where EmployeeName ='Terissa';
+------------+--------------+-------------+------------------+--------+----------+------------+------------+------+--------+------------------------+------------+----------+---------+--------+
| EmployeeID | EmployeeName | Phonenumber | Department       | gender | BasicPay | Deductions | TaxablePay | Tax  | NetPay | address                | start_date | City     | Country | salary |
+------------+--------------+-------------+------------------+--------+----------+------------+------------+------+--------+------------------------+------------+----------+---------+--------+
|          2 | Terissa      | 8105456712  | sales department | M      |    25000 |       5000 |       2000 | 3000 |   5000 | Near_RT nagar banglore | 2021-10-25 | banglore | India   |  30000 |
|          3 | Terissa      | 8105456712  | marketing        | M      |    25000 |       5000 |       2000 | 3000 |   5000 | Near_RT nagar banglore | 2021-10-25 | banglore | India   |  30000 |
+------------+--------------+-------------+------------------+--------+----------+------------+------------+------+--------+------------------------+------------+----------+---------+--------+
2 rows in set (0.08 sec)

mysql> drop table employee_payroll;
Query OK, 0 rows affected (2.67 sec)