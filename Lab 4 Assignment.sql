/*
create student table contains columns id int primary key,name varchar(10) not null,address varchar(10) not null,
age int not null. insert 5 records in student tables . and perform all aggregate function (sum,avg,min,max.count)
in age column.
*/

mysql> create database lab;
Query OK, 1 row affected (0.01 sec)

mysql> use lab;
Database changed

mysql> create table student(id int primary key not null, name varchar(20) not null, address varchar(20) not null, age int not null);
Query OK, 0 rows affected (0.08 sec)

mysql> show tables;
+---------------+
| Tables_in_lab |
+---------------+
| student       |
+---------------+
1 row in set (0.00 sec)

mysql> desc student;
+---------+-------------+------+-----+---------+-------+
| Field   | Type        | Null | Key | Default | Extra |
+---------+-------------+------+-----+---------+-------+
| id      | int         | NO   | PRI | NULL    |       |
| name    | varchar(20) | NO   |     | NULL    |       |
| address | varchar(20) | NO   |     | NULL    |       |
| age     | int         | NO   |     | NULL    |       |
+---------+-------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

mysql> insert into student(id,name,address,age) values (1,'pintoo','Ahmedabad',20),(2,'om','vadodara',21),(3,'parth','surat',19),(4,'jay','morbi',22),(5,'smith','valsad',23);
Query OK, 5 rows affected (0.03 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql>select *from student;
+----+--------+-----------+-----+
| id | name   | address   | age |
+----+--------+-----------+-----+
|  1 | pintoo | Ahmedabad |  20 |
|  2 | om     | vadodara  |  21 |
|  3 | parth  | surat     |  19 |
|  4 | jay    | morbi     |  22 |
|  5 | smith  | valsad    |  23 |
+----+--------+-----------+-----+
5 rows in set (0.00 sec)

mysql> select sum(age) as total_age, avg(age) as average_age, min(age) as minimum_age, max(age) as maximum_age, count(age) as count_age from student;
+-----------+-------------+-------------+-------------+-----------+
| total_age | average_age | minimum_age | maximum_age | count_age |
+-----------+-------------+-------------+-------------+-----------+
|       105 |     21.0000 |          19 |          23 |         5 |
+-----------+-------------+-------------+-------------+-----------+
1 row in set (0.01 sec)
