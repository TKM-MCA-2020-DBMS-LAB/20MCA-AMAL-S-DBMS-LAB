mysql> use dbms_lab;
Database changed
mysql> show tables;
+--------------------+
| Tables_in_dbms_lab |
+--------------------+
| department         |
| deptsal            |
| employee           |
| manager            |
+--------------------+
4 rows in set (0.56 sec)

mysql> describe employee;
+----------+--------------+------+-----+---------+-------+
| Field    | Type         | Null | Key | Default | Extra |
+----------+--------------+------+-----+---------+-------+
| emp_no   | int          | NO   | PRI | NULL    |       |
| emp_name | varchar(200) | NO   |     | NULL    |       |
| DOB      | date         | NO   |     | NULL    |       |
| address  | varchar(200) | NO   |     | NULL    |       |
| DOJ      | date         | NO   |     | NULL    |       |
| mob_no   | varchar(200) | NO   |     | NULL    |       |
| dept_no  | int          | YES  |     | NULL    |       |
| salary   | int          | NO   |     | NULL    |       |
+----------+--------------+------+-----+---------+-------+
8 rows in set (0.19 sec)

mysql> select * from employee;
+--------+----------+------------+---------+------------+------------+---------+--------+
| emp_no | emp_name | DOB        | address | DOJ        | mob_no     | dept_no | salary |
+--------+----------+------------+---------+------------+------------+---------+--------+
|      1 | JITHU    | 1997-10-15 |  CLG_14 | 2021-01-18 | 8129764123 |      10 |  99000 |
|      2 | AKHIL    | 1996-12-01 |  CLG_12 | 2020-01-18 | 777745673  |      11 |  88000 |
|      3 | AKHIL    | 1996-02-11 |  CLG_13 | 2020-01-18 | 9999999999 |      12 |  88000 |
+--------+----------+------------+---------+------------+------------+---------+--------+
3 rows in set (0.25 sec)

mysql> DELIMITER //
mysql> CREATE FUNCTION Emp_count(emp_no int) RETURNS INTEGER
    -> READS SQL DATA
    ->     DETERMINISTIC
    -> BEGIN
    -> DECLARE emp_count INT;
    -> SELECT COUNT(*) INTO emp_count
    -> FROM employee
    -> WHERE employee.Emp_no = emp_no ;
    -> RETURN emp_count;
    -> END
    -> //
Query OK, 0 rows affected (0.45 sec)

mysql> DELIMITER ;
mysql> SELECT Emp_count(2);
+--------------+
| Emp_count(2) |
+--------------+
|            1 |
+--------------+
1 row in set (0.11 sec)











