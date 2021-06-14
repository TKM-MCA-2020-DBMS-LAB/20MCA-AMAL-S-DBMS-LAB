mysql> use dbms_lab
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
4 rows in set (0.10 sec)

mysql> select * from employee;
+--------+----------+------------+---------+------------+------------+---------+--------+
| emp_no | emp_name | DOB        | address | DOJ        | mob_no     | dept_no | salary |
+--------+----------+------------+---------+------------+------------+---------+--------+
|      1 | JITHU    | 1997-10-15 |  CLG_14 | 2021-01-18 | 8129764123 |      10 |  99000 |
|      2 | AKHIL    | 1996-12-01 |  CLG_12 | 2020-01-18 | 777745673  |      11 |  88000 |
|      3 | AKHIL    | 1996-02-11 |  CLG_13 | 2020-01-18 | 9999999999 |      12 |  88000 |
+--------+----------+------------+---------+------------+------------+---------+--------+
3 rows in set (0.00 sec)

mysql> delimiter //
mysql> create Trigger inserting before insert on details for each row
       -> begin
       -> if new.identification_number <0 then set new.identification_number=0;
       -> end if;
       -> end //
Query OK, 0 rows affected (0.02 sec)

mysql> insert into employee values(4,"ARUN",'1998-07-09',"CLG_09",'2020-09-18',9876543210,19,98765);
    -> select * from employee;
    -> //
Query OK, 1 row affected (0.65 sec)

+--------+----------+------------+---------+------------+------------+---------+--------+
| emp_no | emp_name | DOB        | address | DOJ        | mob_no     | dept_no | salary |
+--------+----------+------------+---------+------------+------------+---------+--------+
|      1 | JITHU    | 1997-10-15 |  CLG_14 | 2021-01-18 | 8129764123 |      10 |  99000 |
|      2 | AKHIL    | 1996-12-01 |  CLG_12 | 2020-01-18 | 777745673  |      11 |  88000 |
|      3 | AKHIL    | 1996-02-11 |  CLG_13 | 2020-01-18 | 9999999999 |      12 |  88000 |
|      4 | ARUN     | 1998-07-09 | CLG_09  | 2020-09-18 | 9876543210 |      19 |  98765 |
+--------+----------+------------+---------+------------+------------+---------+--------+
4 rows in set (0.68 sec)