Consider the database for an organisation. Write the queries for the following:


(i) Add 5 rows in the employee and dept table

 mysql> CREATE table department(dept_no VARCHAR(100),
    ->                                     dept_name VARCHAR(100),
    ->                                     location VARCHAR(100),
    ->                                     PRIMARY KEY(dept_no)
    ->                                     );
Query OK, 0 rows affected (1.03 sec)

mysql> insert into department values(10,"Bsc maths","4th floor");
Query OK, 1 row affected (0.14 sec)

mysql>  insert into department values(11," Bsc physics","1st floor");
Query OK, 1 row affected (0.19 sec)

mysql> insert into department values(12,"BCA","3rd floor");
Query OK, 1 row affected (0.18 sec)

mysql> insert into department values(13,"MCA","2nd floor");
Query OK, 1 row affected (0.24 sec)

mysql> insert into department values(14,"M tech","3rd floor");
Query OK, 1 row affected (0.52 sec)

mysql> select * from department;
+---------+--------------+-----------+
| dept_no | dept_name    | location  |
+---------+--------------+-----------+
| 10      | Bsc maths    | 4th floor |
| 11      |  Bsc physics | 1st floor |
| 12      | BCA          | 3rd floor |
| 13      | MCA          | 2nd floor |
| 14      | M tech       | 3rd floor |
+---------+--------------+-----------+
5 rows in set (0.00 sec)

mysql> create table employee(emp_no int(200) NOT NULL PRIMARY KEY,
    ->                                       emp_name varchar(200) NOT NULL,
    ->                                       DOB date NOT NULL,
    ->                                       address varchar(200) NOT NULL,
    ->                                       DOJ date NOT NULL,
    ->                                       mob_no varchar(200) NOT NULL,
    ->                                       dept_no int(200) DEFAULT NULL,
    ->                                       salary int(200) NOT NULL);
Query OK, 0 rows affected, 4 warnings (1.76 sec)

mysql>  insert into employee values(1,"AMAL",'1997-10-15'," CLG_14",'2021-01-18',6785541560,10,90000);
Query OK, 1 row affected (0.20 sec)

mysql>  insert into employee values(2,"AKHIL",'1996-12-01'," CLG_12",'2020-01-18',777745673,11,80000);
Query OK, 1 row affected (0.18 sec)

mysql> insert into employee values(3,"ATHUL",'1996-2-11'," CLG_13",'2020-01-18',9999999999,12,80000);
Query OK, 1 row affected (0.53 sec)

mysql> insert into employee values(4,"JITHU",'1993-02-16'," CLG_19",'2001-08-19',8888999999,13,100000);
Query OK, 1 row affected (0.19 sec)

mysql> insert into employee values(5,"SYAM",'1999-12-16'," CLG_29",'2021-03-11',8888999999,14,30000);
Query OK, 1 row affected (0.43 sec)

mysql> select * from employee;
+--------+----------+------------+---------+------------+------------+---------+--------+
| emp_no | emp_name | DOB        | address | DOJ        | mob_no     | dept_no | salary |
+--------+----------+------------+---------+------------+------------+---------+--------+
|      1 | AMAL     | 1997-10-15 |  CLG_14 | 2021-01-18 | 6785541560 |      10 |  90000 |
|      2 | AKHIL    | 1996-12-01 |  CLG_12 | 2020-01-18 | 777745673  |      11 |  80000 |
|      3 | ATHUL    | 1996-02-11 |  CLG_13 | 2020-01-18 | 9999999999 |      12 |  80000 |
|      4 | JITHU    | 1993-02-16 |  CLG_19 | 2001-08-19 | 8888999999 |      13 | 100000 |
|      5 | SYAM     | 1999-12-16 |  CLG_29 | 2021-03-11 | 8888999999 |      14 |  30000 |
+--------+----------+------------+---------+------------+------------+---------+--------+
5 rows in set (0.05 sec)

(ii)	Display all the records from the above tables.

mysql> select * from employee;
+--------+----------+------------+---------+------------+------------+---------+--------+
| emp_no | emp_name | DOB        | address | DOJ        | mob_no     | dept_no | salary |
+--------+----------+------------+---------+------------+------------+---------+--------+
|      1 | AMAL     | 1997-10-15 |  CLG_14 | 2021-01-18 | 6785541560 |      10 |  90000 |
|      2 | AKHIL    | 1996-12-01 |  CLG_12 | 2020-01-18 | 777745673  |      11 |  80000 |
|      3 | ATHUL    | 1996-02-11 |  CLG_13 | 2020-01-18 | 9999999999 |      12 |  80000 |
|      4 | JITHU    | 1993-02-16 |  CLG_19 | 2001-08-19 | 8888999999 |      13 | 100000 |
|      5 | SYAM     | 1999-12-16 |  CLG_29 | 2021-03-11 | 8888999999 |      14 |  30000 |
+--------+----------+------------+---------+------------+------------+---------+--------+
5 rows in set (0.05 sec)

mysql>  select * from department;
+---------+--------------+-----------+
| dept_no | dept_name    | location  |
+---------+--------------+-----------+
| 10      | Bsc maths    | 4th floor |
| 11      | Bsc physics  | 1st floor |
| 12      | BCA          | 3rd floor |
| 13      | MCA          | 2nd floor |
| 14      | M tech       | 3rd floor |
+---------+--------------+-----------+
5 rows in set (0.03 sec)

(iii)	Display the empno and name of all the employees from department no2.

mysql> select  emp_no, emp_name FROM employee WHERE dept_no=11;
+--------+----------+
| emp_no | emp_name |
+--------+----------+
|      2 | AKHIL    |
+--------+----------+
1 row in set (0.09 sec)

(iv) Display empno,name,designation,dept no and salary in the descending order of salary.

mysql> select emp_name,emp_no,dept_no,salary FROM employee ORDER BY salary DESC;
+----------+--------+---------+--------+
| emp_name | emp_no | dept_no | salary |
+----------+--------+---------+--------+
| JITHU    |      4 |      13 | 100000 |
| AMAL     |      1 |      10 |  90000 |
| AKHIL    |      2 |      11 |  80000 |
| ATHUL    |      3 |      12 |  80000 |
| SYAM     |      5 |      14 |  30000 |
+----------+--------+---------+--------+
5 rows in set (0.00 sec)

(v) Display the empno and name of all employees whose salary is between 2000 and 25000.

mysql> select * from employee WHERE salary BETWEEN 2000 AND 25000;
Empty set (0.10 sec)

(vi) Display all DOB without duplicate values.

mysql> select DISTINCT DOB FROM employee;
+------------+
| DOB        |
+------------+
| 1997-10-15 |
| 1996-12-01 |
| 1996-02-11 |
| 1993-02-16 |
| 1999-12-16 |
+------------+
5 rows in set (0.12 sec)

(vii) Display the dept no and total salary of employees .

mysql>  select SUM(salary)  FROM employee;
+-------------+
| SUM(salary) |
+-------------+
|      380000 |
+-------------+
1 row in set (0.11 sec)

viii) Change the salary of employee to 25000 whose  empno is 4.

mysql> select * from EMPLOYEE;
+--------+----------+------------+---------+------------+------------+---------+--------+
| emp_no | emp_name | DOB        | address | DOJ        | mob_no     | dept_no | salary |
+--------+----------+------------+---------+------------+------------+---------+--------+
|      1 | AMAL     | 1997-10-15 |  CLG_14 | 2021-01-18 | 6785541560 |      10 |  90000 |
|      2 | AKHIL    | 1996-12-01 |  CLG_12 | 2020-01-18 | 777745673  |      11 |  80000 |
|      3 | ATHUL    | 1996-02-11 |  CLG_13 | 2020-01-18 | 9999999999 |      12 |  80000 |
|      4 | JITHU    | 1993-02-16 |  CLG_19 | 2001-08-19 | 8888999999 |      13 | 100000 |
|      5 | SYAM     | 1999-12-16 |  CLG_29 | 2021-03-11 | 8888999999 |      14 |  30000 |
+--------+----------+------------+---------+------------+------------+---------+--------+
5 rows in set (0.00 sec)

mysql>  update employee SET salary= 25000 WHERE emp_no=4;
Query OK, 1 row affected (0.22 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from employee;
+--------+----------+------------+---------+------------+------------+---------+--------+
| emp_no | emp_name | DOB        | address | DOJ        | mob_no     | dept_no | salary |
+--------+----------+------------+---------+------------+------------+---------+--------+
|      1 | AMAL     | 1997-10-15 |  CLG_14 | 2021-01-18 | 6785541560 |      10 |  90000 |
|      2 | AKHIL    | 1996-12-01 |  CLG_12 | 2020-01-18 | 777745673  |      11 |  80000 |
|      3 | ATHUL    | 1996-02-11 |  CLG_13 | 2020-01-18 | 9999999999 |      12 |  80000 |
|      4 | JITHU    | 1993-02-16 |  CLG_19 | 2001-08-19 | 8888999999 |      13 |  25000 |
|      5 | SYAM     | 1999-12-16 |  CLG_29 | 2021-03-11 | 8888999999 |      14 |  30000 |
+--------+----------+------------+---------+------------+------------+---------+--------+
5 rows in set (0.02 sec)

(ix) Change the mobile no of employee named ‘JITHU’.
 
mysql> select * from employee;
+--------+----------+------------+---------+------------+------------+---------+--------+
| emp_no | emp_name | DOB        | address | DOJ        | mob_no     | dept_no | salary |
+--------+----------+------------+---------+------------+------------+---------+--------+
|      1 | AMAL     | 1997-10-15 |  CLG_14 | 2021-01-18 | 6785541560 |      10 |  90000 |
|      2 | AKHIL    | 1996-12-01 |  CLG_12 | 2020-01-18 | 777745673  |      11 |  80000 |
|      3 | ATHUL    | 1996-02-11 |  CLG_13 | 2020-01-18 | 9999999999 |      12 |  80000 |
|      4 | JITHU    | 1993-02-16 |  CLG_19 | 2001-08-19 | 8888999999 |      13 |  25000 |
|      5 | SYAM     | 1999-12-16 |  CLG_29 | 2021-03-11 | 8888999999 |      14 |  30000 |
+--------+----------+------------+---------+------------+------------+---------+--------+
5 rows in set (0.02 sec)

mysql> update employee SET mob_no=REPLACE(mob_no,'6785541560','8129764123') WHERE mob_no LIKE '%6785541560%';
Query OK, 1 row affected (0.26 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from employee;
+--------+----------+------------+---------+------------+------------+---------+--------+
| emp_no | emp_name | DOB        | address | DOJ        | mob_no     | dept_no | salary |
+--------+----------+------------+---------+------------+------------+---------+--------+
|      1 | AMAL     | 1997-10-15 |  CLG_14 | 2021-01-18 | 8129764123 |      10 |  90000 |
|      2 | AKHIL    | 1996-12-01 |  CLG_12 | 2020-01-18 | 777745673  |      11 |  80000 |
|      3 | ATHUL    | 1996-02-11 |  CLG_13 | 2020-01-18 | 9999999999 |      12 |  80000 |
|      4 | JITHU    | 1993-02-16 |  CLG_19 | 2001-08-19 | 8888999999 |      13 |  25000 |
|      5 | SYAM     | 1999-12-16 |  CLG_29 | 2021-03-11 | 8888999999 |      14 |  30000 |
+--------+----------+------------+---------+------------+------------+---------+--------+
5 rows in set (0.01 sec)

(x)  Delete all employees whose salaries are equal to Rs.30000.

mysql>  DELETE FROM employee WHERE salary<=30000;
Query OK, 2 rows affected (0.31 sec)

mysql> select * from employee;
+--------+----------+------------+---------+------------+------------+---------+--------+
| emp_no | emp_name | DOB        | address | DOJ        | mob_no     | dept_no | salary |
+--------+----------+------------+---------+------------+------------+---------+--------+
|      1 | AMAL     | 1997-10-15 |  CLG_14 | 2021-01-18 | 8129764123 |      10 |  90000 |
|      2 | AKHIL    | 1996-12-01 |  CLG_12 | 2020-01-18 | 777745673  |      11 |  80000 |
|      3 | ATHUL    | 1996-02-11 |  CLG_13 | 2020-01-18 | 9999999999 |      12 |  80000 |
+--------+----------+------------+---------+------------+------------+---------+--------+
3 rows in set (0.10 sec)


(xi)	Select the deptno that has total salary paid for its employees more than 25000.

mysql> select dept_no, emp_name FROM employee GROUP BY salary HAVING salary>25000;
+---------+----------+
| dept_no | emp_name |
+---------+----------+
|      10 | AMAL    |
|      11 | AKHIL    |
+---------+----------+
2 rows in set (0.11 sec)
