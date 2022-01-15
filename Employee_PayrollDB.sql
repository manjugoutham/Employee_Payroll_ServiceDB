.............UC1..............

mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| mysampledb         |
| mysql              |
| performance_schema |
| sakila             |
| sys                |
| world              |
+--------------------+
7 rows in set (0.10 sec)

mysql> create database payroll_Service;
Query OK, 1 row affected (0.17 sec)

mysql> use payroll_Service;
Database changed
mysql> show tables;
Empty set (0.24 sec)