................UC9........

INSERT INTO employee_payrolls(EmployeeID,EmployeeName,PhoneNumber,D' at line 1
mysql> INSERT INTO employee_payrolls(EmployeeID,EmployeeName,PhoneNumber,Department,gender,BasicPay,Deductions,TaxablePay,Tax,NetPay,address,start_date,City,Country,salary)VALUES(1,'Gouthum','8105456712','Devloper Team','M',25000,5000,2000,3000,5000,'Near_RT nagar banglore','2021-10-25','Bnaglore','India',30000);
Query OK, 1 row affected (0.09 sec)

mysql> INSERT INTO employee_payrolls(EmployeeID,EmployeeName,PhoneNumber,Department,gender,BasicPay,Deductions,TaxablePay,Tax,NetPay,address,start_date,City,Country,salary)VALUES(2,'Terissa','8105456712','sales department','M',25000,5000,2000,3000,5000,'Near_RT nagar banglore','2021-10-25','banglore','India',30000);
Query OK, 1 row affected (0.56 sec)

mysql> INSERT INTO employee_payrolls(EmployeeID,EmployeeName,PhoneNumber,Department,gender,BasicPay,Deductions,TaxablePay,Tax,NetPay,address,start_date,City,Country,salary)VALUES(3,'Terissa','8105456712','marketing','M',25000,5000,2000,3000,5000,'Near_RT nagar banglore','2021-10-25','banglore','India',30000);
Query OK, 1 row affected (0.06 sec)


mysql> select * from employee_payrolls;
+------------+--------------+-------------+------------------+--------+----------+------------+------------+------+--------+------------------------+------------+----------+---------+--------+
| EmployeeID | EmployeeName | Phonenumber | Department       | gender | BasicPay | Deductions | TaxablePay | Tax  | NetPay | address                | start_date | City     | Country | salary |
+------------+--------------+-------------+------------------+--------+----------+------------+------------+------+--------+------------------------+------------+----------+---------+--------+
|          1 | Gouthum      | 8105456712  | Devloper Team    | M      |    25000 |       5000 |       2000 | 3000 |   5000 | Near_RT nagar banglore | 2021-10-25 | Bnaglore | India   |  30000 |
|          2 | Terissa      | 8105456712  | sales department | M      |    25000 |       5000 |       2000 | 3000 |   5000 | Near_RT nagar banglore | 2021-10-25 | banglore | India   |  30000 |
|          3 | Terissa      | 8105456712  | marketing        | M      |    25000 |       5000 |       2000 | 3000 |   5000 | Near_RT nagar banglore | 2021-10-25 | banglore | India   |  30000 |
+------------+--------------+-------------+------------------+--------+----------+------------+------------+------+--------+------------------------+------------+----------+---------+--------+
