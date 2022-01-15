................//UC8............





mysql> desc employee_payrolls;
+--------------+--------------+------+-----+---------+-------+
| Field        | Type         | Null | Key | Default | Extra |
+--------------+--------------+------+-----+---------+-------+
| EmployeeID   | int          | NO   | PRI | NULL    |       |
| EmployeeName | varchar(200) | YES  |     | NULL    |       |
| Phonenumber  | varchar(200) | YES  |     | NULL    |       |
| Department   | varchar(200) | YES  |     | NULL    |       |
| gender       | char(1)      | YES  |     | NULL    |       |
| BasicPay     | float        | YES  |     | NULL    |       |
| Deductions   | float        | YES  |     | NULL    |       |
| TaxablePay   | float        | YES  |     | NULL    |       |
| Tax          | float        | YES  |     | NULL    |       |
| NetPay       | float        | YES  |     | NULL    |       |
| address      | varchar(200) | YES  |     | NULL    |       |
| start_date   | date         | YES  |     | NULL    |       |
| City         | varchar(200) | YES  |     | NULL    |       |
| Country      | varchar(200) | YES  |     | NULL    |       |
| salary       | int          | YES  |     | NULL    |       |
+--------------+--------------+------+-----+---------+-------+