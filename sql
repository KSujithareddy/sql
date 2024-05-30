mysql> create database student;
Query OK, 1 row affected (0.82 sec)

mysql> use student;
Database changed
mysql> create table stu(name varchar(60),age int,rollno int);
Query OK, 0 rows affected (1.36 sec)

mysql> insert into stu(name,age,rollno) values ('anu',20,43),('ram',21,44),('sam',20,45),('sita',22,46),('liki',23,47),('samu',21,50),('amu',22,52),('avi',21,53);
Query OK, 8 rows affected (0.23 sec)
Records: 8  Duplicates: 0  Warnings: 0

mysql> select*from stu;
+------+------+--------+
| name | age  | rollno |
+------+------+--------+
| anu  |   20 |     43 |
| ram  |   21 |     44 |
| sam  |   20 |     45 |
| sita |   22 |     46 |
| liki |   23 |     47 |
| samu |   21 |     50 |
| amu  |   22 |     52 |
| avi  |   21 |     53 |
+------+------+--------+
8 rows in set (0.05 sec)

mysql> alter table stu rename column age to stu_age;
Query OK, 0 rows affected (0.96 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> update stu set stu_age=23 where rollno = 47;
Query OK, 0 rows affected (0.07 sec)
Rows matched: 1  Changed: 0  Warnings: 0

mysql> select count(*) as total_stu from stu;
+-----------+
| total_stu |
+-----------+
|         8 |
+-----------+
1 row in set (0.12 sec)
