Consider the database for an organisation.Write the queries for the following:

(i)  create the database.
    
    mysql> create database DBMS_LAB;
    Query OK, 1 row affected (1.03 sec)

    mysql> show databases;
 +--------------------+
| Database           |
+--------------------+
| company            |
| dbms_lab           |
| employee           |
| information_schema |
| mysql              |
| performance_schema |
| sakila             |
| sys                |
| world              |
+--------------------+
9 rows in set (0.92 sec)


(ii)  select the current database.

     mysql> use dbms_lab;
     Database changed

(iii) Create the following tables.
      
     a.	employee (emp_no,emp_name,DOB, address, doj, mobile_no, dept_no, salary).

       
         
      mysql>  create table employee(emp_no int(200) NOT NULL PRIMARY KEY,
                                      emp_name varchar(200) NOT NULL,
                                      DOB date NOT NULL,
                                      address varchar(200) NOT NULL,
                                      DOJ date NOT NULL,
                                      mob_no int(200) NOT NULL,
                                      dept_no int(200) DEFAULT NULL,
                                      salary int(200) NOT NULL);
Query OK, 0 rows affected, 4 warnings (1.94 sec)

mysql> DESC employee;
+----------+--------------+------+-----+---------+-------+
| Field    | Type         | Null | Key | Default | Extra |
+----------+--------------+------+-----+---------+-------+
| emp_no   | int          | NO   | PRI | NULL    |       |
| emp_name | varchar(200) | NO   |     | NULL    |       |
| DOB      | date         | NO   |     | NULL    |       |
| address  | varchar(200) | NO   |     | NULL    |       |
| DOJ      | date         | NO   |     | NULL    |       |
| mob_no   | int          | NO   |     | NULL    |       |
| dept_no  | int          | YES  |     | NULL    |       |
| salary   | int          | NO   |     | NULL    |       |
+----------+--------------+------+-----+---------+-------+
8 rows in set (0.24 sec)

    b.	department(dept_no, dept_name, location).
       
     mysql> CREATE table department(dept_no VARCHAR(100),
                                    dept_name VARCHAR(100),
                                    location VARCHAR(100),
                                    PRIMARY KEY(dept_no)
                                    );
Query OK, 0 rows affected (2.41 sec)
    
    mysql> DESC department;
+-----------+--------------+------+-----+---------+-------+
| Field     | Type         | Null | Key | Default | Extra |
+-----------+--------------+------+-----+---------+-------+
| dept_no   | varchar(100) | NO   | PRI | NULL    |       |
| dept_name | varchar(100) | YES  |     | NULL    |       |
| location  | varchar(100) | YES  |     | NULL    |       |
+-----------+--------------+------+-----+---------+-------+
3 rows in set (0.12 sec)

(iv)  Include necessary constraints.

(v)   List all the tables in the current database.

    mysql> show tables;
+--------------------+
| Tables_in_dbms_lab |
+--------------------+
| department         |
| employee           |
+--------------------+
2 rows in set (0.00 sec)


(vi)	Display the structure of the employee table.

mysql> DESC employee;
+----------+--------------+------+-----+---------+-------+
| Field    | Type         | Null | Key | Default | Extra |
+----------+--------------+------+-----+---------+-------+
| emp_no   | int          | NO   | PRI | NULL    |       |
| emp_name | varchar(200) | NO   |     | NULL    |       |
| DOB      | date         | NO   |     | NULL    |       |
| address  | varchar(200) | NO   |     | NULL    |       |
| DOJ      | date         | NO   |     | NULL    |       |
| mob_no   | int          | NO   |     | NULL    |       |
| dept_no  | int          | YES  |     | NULL    |       |
| salary   | int          | NO   |     | NULL    |       |
+----------+--------------+------+-----+---------+-------+
8 rows in set (0.21 sec)


(vii)	Add a new column Designation to the employee table.

     mysql> alter table employee add designation varchar(100);
Query OK, 0 rows affected (2.21 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> DESC employee;
+-------------+--------------+------+-----+---------+-------+
| Field       | Type         | Null | Key | Default | Extra |
+-------------+--------------+------+-----+---------+-------+
| emp_no      | int          | NO   | PRI | NULL    |       |
| emp_name    | varchar(200) | NO   |     | NULL    |       |
| DOB         | date         | NO   |     | NULL    |       |
| address     | varchar(200) | NO   |     | NULL    |       |
| DOJ         | date         | NO   |     | NULL    |       |
| mob_no      | int          | NO   |     | NULL    |       |
| dept_no     | int          | YES  |     | NULL    |       |
| salary      | int          | NO   |     | NULL    |       |
| designation | varchar(100) | YES  |     | NULL    |       |
+-------------+--------------+------+-----+---------+-------+
9 rows in set (0.08 sec)


(viii) Drop the column location from Dept table.

      mysql> alter table department drop column location;
Query OK, 0 rows affected (3.30 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc department;
+-----------+--------------+------+-----+---------+-------+
| Field     | Type         | Null | Key | Default | Extra |
+-----------+--------------+------+-----+---------+-------+
| dept_no   | varchar(100) | NO   | PRI | NULL    |       |
| dept_name | varchar(100) | YES  |     | NULL    |       |
+-----------+--------------+------+-----+---------+-------+
2 rows in set (0.12 sec)


(ix) Drop the tables.

mysql> drop table department;
Query OK, 0 rows affected (0.60 sec)

mysql> drop table employee;
Query OK, 0 rows affected (0.93 sec)


(x)  Delete the database.

mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| company            |
| dbms_lab           |
| information_schema |
| mysql              |
| performance_schema |
| sakila             |
| sys                |
| world              |
+--------------------+
8 rows in set (0.12 sec)

ysql> drop database dbms_lab;
Query OK, 0 rows affected (0.27 sec)

mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| company            |
| information_schema |
| mysql              |
| performance_schema |
| sakila             |
| sys                |
| world              |
+--------------------+
7 rows in set (0.00 sec)



    
