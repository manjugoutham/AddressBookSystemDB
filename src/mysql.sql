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

........UC2.........

mysql> create table employee_payroll;
ERROR 4028 (HY000): A table must have at least one visible column.
mysql> create table employee_payroll
    -> (id int(10) primary key,
    -> name varchar(20) not null);
Query OK, 0 rows affected, 1 warning (2.36 sec)

mysql> show tables;
+---------------------------+
| Tables_in_payroll_service |
+---------------------------+
| employee_payroll          |
+---------------------------+
1 row in set (0.09 sec)

mysql> desc employee_payroll;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| id    | int         | NO   | PRI | NULL    |       |
| name  | varchar(20) | NO   |     | NULL    |       |
+-------+-------------+------+-----+---------+-------+
2 rows in set (0.56 sec)

................UC3............

mysql> insert into employee_payroll(id,name)values(1,'Goutham')
    -> ;
Query OK, 1 row affected (0.40 sec)

mysql> desc employee_payroll;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| id    | int         | NO   | PRI | NULL    |       |
| name  | varchar(20) | NO   |     | NULL    |       |
+-------+-------------+------+-----+---------+-------+
2 rows in set (0.25 sec)

mysql> select * from employee_payroll;
+----+---------+
| id | name    |
+----+---------+
|  1 | Goutham |
+----+---------+
1 row in set (0.01 sec)



mysql> alter table employee_payroll add address varchar(100);
Query OK, 0 rows affected (2.36 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc employee_payroll;
+---------+--------------+------+-----+---------+-------+
| Field   | Type         | Null | Key | Default | Extra |
+---------+--------------+------+-----+---------+-------+
| id      | int          | NO   | PRI | NULL    |       |
| name    | varchar(20)  | NO   |     | NULL    |       |
| address | varchar(100) | YES  |     | NULL    |       |
+---------+--------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> update employee_payroll set address = 'banglore' where id = 1;
Query OK, 1 row affected (0.17 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from employee_payroll;
+----+---------+----------+
| id | name    | address  |
+----+---------+----------+
|  1 | Goutham | banglore |
+----+---------+----------+
1 row in set (0.00 sec)

mysql> update employee_payroll set name= 'Manju' where id = 1;
Query OK, 1 row affected (0.13 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from employee_payroll;
+----+-------+----------+
| id | name  | address  |
+----+-------+----------+
|  1 | Manju | banglore |
+----+-------+----------+
1 row in set (0.10 sec)

mysql> update employee_payroll set name= 'Gowtham' where id = 1;
Query OK, 1 row affected (0.17 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from employee_payroll;
+----+---------+----------+
| id | name    | address  |
+----+---------+----------+
|  1 | Gowtham | banglore |
+----+---------+----------+
1 row in set (0.00 sec)

mysql> select * from employee_payroll;
+----+---------+----------+
| id | name    | address  |
+----+---------+----------+
|  1 | Gowtham | banglore |
+----+---------+----------+
1 row in set (0.00 sec)

mysql> alter table employee_payroll add start_date DATE;
Query OK, 0 rows affected (4.28 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> select * from employee_payroll;
+----+---------+----------+------------+
| id | name    | address  | start_date |
+----+---------+----------+------------+
|  1 | Gowtham | banglore | NULL       |
+----+---------+----------+------------+
1 row in set (0.08 sec)

mysql> alter table employee_payroll add salary int;
Query OK, 0 rows affected (6.25 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc employee_payroll;
+------------+--------------+------+-----+---------+-------+
| Field      | Type         | Null | Key | Default | Extra |
+------------+--------------+------+-----+---------+-------+
| id         | int          | NO   | PRI | NULL    |       |
| name       | varchar(20)  | NO   |     | NULL    |       |
| address    | varchar(100) | YES  |     | NULL    |       |
| start_date | date         | YES  |     | NULL    |       |
| salary     | int          | YES  |     | NULL    |       |
+------------+--------------+------+-----+---------+-------+



//..............UC3...................



mysql> insert into employee_payroll(id,name,address,start_date,salary)values(1,'Gowtham','Bnaglore','2022-01-12',20000);
ERROR 1062 (23000): Duplicate entry '1' for key 'employee_payroll.PRIMARY'
mysql> select * from employee_payroll;
+----+---------+----------+------------+--------+
| id | name    | address  | start_date | salary |
+----+---------+----------+------------+--------+
|  1 | Gowtham | banglore | NULL       |   NULL |
+----+---------+----------+------------+--------+
1 row in set (0.00 sec)

mysql> insert into employee_payroll(id,name,address,start_date,salary)values(2,'Gowtham','Bnaglore','2022-01-12',20000);
Query OK, 1 row affected (0.24 sec)

mysql> select * from employee_payroll;
+----+---------+----------+------------+--------+
| id | name    | address  | start_date | salary |
+----+---------+----------+------------+--------+
|  1 | Gowtham | banglore | NULL       |   NULL |
|  2 | Gowtham | Bnaglore | 2022-01-12 |  20000 |
+----+---------+----------+------------+--------+
2 rows in set (0.00 sec)

mysql> insert into employee_payroll(id,name,address,start_date,salary)values(3,'Manju','Bnaglore','2022-01-10',22000);
Query OK, 1 row affected (0.16 sec)

mysql> insert into employee_payroll(id,name,address,start_date,salary)values(4,'smith','kolar','2022-01-11',22300);
Query OK, 1 row affected (0.33 sec)


mysql> insert into employee_payroll(id,name,address,start_date,salary)values(1,'Gowthamraj','Bnaglore','2022-01-12',25000);
Query OK, 1 row affected (0.12 sec)

mysql> select * from employee_payroll;
+----+------------+----------+------------+--------+
| id | name       | address  | start_date | salary |
+----+------------+----------+------------+--------+
|  1 | Gowthamraj | Bnaglore | 2022-01-12 |  25000 |
|  2 | Gowtham    | Bnaglore | 2022-01-12 |  20000 |
|  3 | Manju      | Bnaglore | 2022-01-10 |  22000 |
|  4 | smith      | kolar    | 2022-01-11 |  22300 |
+----+------------+----------+------------+--------+
4 rows in set (0.00 sec)



//..............UC4.....................



mysql> select * from employee_payroll;
+----+------------+----------+------------+--------+
| id | name       | address  | start_date | salary |
+----+------------+----------+------------+--------+
|  1 | Gowthamraj | Bnaglore | 2022-01-12 |  25000 |
|  2 | Gowtham    | Bnaglore | 2022-01-12 |  20000 |
|  3 | Manju      | Bnaglore | 2022-01-10 |  22000 |
|  4 | smith      | kolar    | 2022-01-11 |  22300 |
+----+------------+----------+------------+--------+



//.............UC5....................



mysql> select salary from employee_payroll where name = 'smith';
+--------+
| salary |
+--------+
|  22300 |
+--------+
1 row in set (0.07 sec)

mysql> SELECT * FROM employee_payroll WHERE start_date
    -> BETWEEN 'STARTING_DATE_TIME' AND 'ENDING_DATE_TIME';
Empty set, 8 warnings (0.05 sec)

mysql> SELECT * FROM employee_payroll WHERE start between CAST('2022-01-10' as DATE) and DATE(NOW());
ERROR 1054 (42S22): Unknown column 'start' in 'where clause'
mysql> SELECT * FROM employee_payroll WHERE start_date between CAST('2022-01-10' as DATE) and DATE(NOW());
+----+------------+----------+------------+--------+
| id | name       | address  | start_date | salary |
+----+------------+----------+------------+--------+
|  1 | Gowthamraj | Bnaglore | 2022-01-12 |  25000 |
|  2 | Gowtham    | Bnaglore | 2022-01-12 |  20000 |
|  3 | Manju      | Bnaglore | 2022-01-10 |  22000 |
|  4 | smith      | kolar    | 2022-01-11 |  22300 |
+----+------------+----------+------------+--------+
4 rows in set (0.04 sec)




//.....................UC6...........................



mysql> alter table employee_payroll add gender char(1)not null after name;
Query OK, 0 rows affected (4.55 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc employee_payroll;
+------------+--------------+------+-----+---------+-------+
| Field      | Type         | Null | Key | Default | Extra |
+------------+--------------+------+-----+---------+-------+
| id         | int          | NO   | PRI | NULL    |       |
| name       | varchar(20)  | NO   |     | NULL    |       |
| gender     | char(1)      | NO   |     | NULL    |       |
| address    | varchar(100) | YES  |     | NULL    |       |
| start_date | date         | YES  |     | NULL    |       |
| salary     | int          | YES  |     | NULL    |       |
+------------+--------------+------+-----+---------+-------+
6 rows in set (0.06 sec)

mysql> alter table employee_payroll add gender char(1) after name;
ERROR 1060 (42S21): Duplicate column name 'gender'
mysql> update employee_payroll set gender='M' where name ='Gowtham' or name = 'manju;'
    -> ;
Query OK, 1 row affected (0.22 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> update employee_payroll set gender='M' where name ='Gowtham' or name = 'manju';
Query OK, 1 row affected (0.15 sec)
Rows matched: 2  Changed: 1  Warnings: 0

mysql> SELECT * FROM employee_payroll;
+----+------------+--------+----------+------------+--------+
| id | name       | gender | address  | start_date | salary |
+----+------------+--------+----------+------------+--------+
|  1 | Gowthamraj |        | Bnaglore | 2022-01-12 |  25000 |
|  2 | Gowtham    | M      | Bnaglore | 2022-01-12 |  20000 |
|  3 | Manju      | M      | Bnaglore | 2022-01-10 |  22000 |
|  4 | smith      |        | kolar    | 2022-01-11 |  22300 |
+----+------------+--------+----------+------------+--------+
4 rows in set (0.00 sec)




//.............UC7.......................


mysql> select sum(salary) from employee_payroll where gender='M' group by gender;
+-------------+
| sum(salary) |
+-------------+
|       42000 |
+-------------+
1 row in set (0.03 sec)

mysql> select count(name) from employee_payroll;
+-------------+
| count(name) |
+-------------+
|           4 |
+-------------+
1 row in set (0.20 sec)

mysql> select avg(salary) from employee_payroll;
+-------------+
| avg(salary) |
+-------------+
|  22325.0000 |
+-------------+
1 row in set (0.00 sec)

mysql> select min(salary) from employee_payroll;
+-------------+
| min(salary) |
+-------------+
|       20000 |
+-------------+
1 row in set (0.04 sec)

mysql> select max(salary) from employee_payroll;
+-------------+
| max(salary) |
+-------------+
|       25000 |
+-------------+
1 row in set (0.00 sec)

mysql> select count(name) from employee_payroll where gender = 'F';
+-------------+
| count(name) |
+-------------+
|           1 |
+-------------+
1 row in set (0.00 sec)

mysql> select count(name) from employee_payroll where gender = 'F' group by gender;
+-------------+
| count(name) |
+-------------+
|           1 |
+-------------+
1 row in set (0.00 sec)

mysql> select count(id) from employee_payroll where gender = 'M' group by salary;
+-----------+
| count(id) |
+-----------+
|         1 |
|         1 |
+-----------+
2 rows in set (0.02 sec)

mysql> select count(name) from employee_payroll where gender = 'M' group by salary;
+-------------+
| count(name) |
+-------------+
|           1 |
|           1 |
+-------------+
2 rows in set (0.00 sec)

mysql> select avg(salary) from employee_payroll where gender = 'F' group by id;
+-------------+
| avg(salary) |
+-------------+
|  22300.0000 |
+-------------+
1 row in set (0.00 sec)

mysql> select avg(salary) from employee_payroll where gender = 'M' group by id;
+-------------+
| avg(salary) |
+-------------+
|  20000.0000 |
|  22000.0000 |
+-------------+
2 rows in set (0.00 sec)


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



................UC11.........................




mysql> desc employee;
+------------------+--------------+------+-----+---------+-------+
| Field            | Type         | Null | Key | Default | Extra |
+------------------+--------------+------+-----+---------+-------+
| employee_id      | int          | NO   | PRI | NULL    |       |
| employeeName     | varchar(200) | NO   |     | NULL    |       |
| employee_address | varchar(30)  | NO   |     | NULL    |       |
+------------------+--------------+------+-----+---------+-------+
3 rows in set (0.17 sec)

mysql> insert into employee values(1,'Goutham','Banglore'),(2,'Allen','Manglore'),(3,'ashwin','KGF');
Query OK, 3 rows affected (1.02 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> select * from employee;
+-------------+--------------+------------------+
| employee_id | employeeName | employee_address |
+-------------+--------------+------------------+
|           1 | Goutham      | Banglore         |
|           2 | Allen        | Manglore         |
|           3 | ashwin       | KGF              |
+-------------+--------------+------------------+
3 rows in set (0.00 sec)

mysql> create table employee_Contacts (employee_id int(10), mobilenumber varchar(100) NOT NULL,foreign key (Employee_ID) references employee (employee_id));
Query OK, 0 rows affected, 1 warning (2.80 sec)

mysql> desc employee_Contacts;
+--------------+--------------+------+-----+---------+-------+
| Field        | Type         | Null | Key | Default | Extra |
+--------------+--------------+------+-----+---------+-------+
| employee_id  | int          | YES  | MUL | NULL    |       |
| mobilenumber | varchar(100) | NO   |     | NULL    |       |
+--------------+--------------+------+-----+---------+-------+
2 rows in set (0.06 sec)

mysql> create table employee_Department (employee_id int(10),Departmentname varchar(255),foreign key (employee_id) references employee(employee_id));
Query OK, 0 rows affected, 1 warning (1.68 sec)

mysql> desc employee_Department;
+----------------+--------------+------+-----+---------+-------+
| Field          | Type         | Null | Key | Default | Extra |
+----------------+--------------+------+-----+---------+-------+
| employee_id    | int          | YES  | MUL | NULL    |       |
| Departmentname | varchar(255) | YES  |     | NULL    |       |
+----------------+--------------+------+-----+---------+-------+
2 rows in set (0.29 sec)

mysql> alter table employee_Contacts add City varchar(20) not null after mobilenumber;
Query OK, 0 rows affected (1.91 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc employee_Contacts;
+--------------+--------------+------+-----+---------+-------+
| Field        | Type         | Null | Key | Default | Extra |
+--------------+--------------+------+-----+---------+-------+
| employee_id  | int          | YES  | MUL | NULL    |       |
| mobilenumber | varchar(100) | NO   |     | NULL    |       |
| City         | varchar(20)  | NO   |     | NULL    |       |
+--------------+--------------+------+-----+---------+-------+
3 rows in set (0.06 sec)

mysql> insert into employee_contacts VALUES (1,'8105457612','kolar'),(1,'8105457612','mulbagal');
Query OK, 2 rows affected (0.46 sec)
Records: 2  Duplicates: 0  Warnings: 0

mysql> select * from employee_contacts;
+-------------+--------------+----------+
| employee_id | mobilenumber | City     |
+-------------+--------------+----------+
|           1 | 8105457612   | kolar    |
|           1 | 8105457612   | mulbagal |
+-------------+--------------+----------+
2 rows in set (0.01 sec)

mysql> insert into employee_contacts VALUES (2,'8105457222','bangarapet');
Query OK, 1 row affected (0.09 sec)

mysql> select * from employee_contacts;
+-------------+--------------+------------+
| employee_id | mobilenumber | City       |
+-------------+--------------+------------+
|           1 | 8105457612   | kolar      |
|           1 | 8105457612   | mulbagal   |
|           2 | 8105457222   | bangarapet |
+-------------+--------------+------------+
3 rows in set (0.00 sec)

mysql> insert into employee_Department values (1,'Marketting'),(2,'Sales'),(3,'Sales');
Query OK, 3 rows affected (0.18 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> select * from employee_Department;
+-------------+----------------+
| employee_id | Departmentname |
+-------------+----------------+
|           1 | Marketting     |
|           2 | Sales          |
|           3 | Sales          |
+-------------+----------------+
3 rows in set (0.00 sec)

mysql> alter table employee_Department add Department_id varchar(5) not null primary key after employee_id;

mysql> create table emp_salary(Salary_id int,employee_id int(10) not null,BasicPay float not null,Deducation float not null,TaxablePay float not null,Tax float not null,NetPay float not null, Salary int not null,PRIMARY KEY(Salary_ID),foreign key (employee_id) references employee (employee_id),foreign key (employee_id) references employee_Department(employee_id));
Query OK, 0 rows affected, 1 warning (2.98 sec)

mysql> desc employee_Department;
+----------------+--------------+------+-----+---------+-------+
| Field          | Type         | Null | Key | Default | Extra |
+----------------+--------------+------+-----+---------+-------+
| employee_id    | int          | YES  | MUL | NULL    |       |
| Departmentname | varchar(255) | YES  |     | NULL    |       |
+----------------+--------------+------+-----+---------+-------+
2 rows in set (0.04 sec)

mysql> desc emp_salary;
+-------------+-------+------+-----+---------+-------+
| Field       | Type  | Null | Key | Default | Extra |
+-------------+-------+------+-----+---------+-------+
| Salary_id   | int   | NO   | PRI | NULL    |       |
| employee_id | int   | NO   | MUL | NULL    |       |
| BasicPay    | float | NO   |     | NULL    |       |
| Deducation  | float | NO   |     | NULL    |       |
| TaxablePay  | float | NO   |     | NULL    |       |
| Tax         | float | NO   |     | NULL    |       |
| NetPay      | float | NO   |     | NULL    |       |
| Salary      | int   | NO   |     | NULL    |       |
+-------------+-------+------+-----+---------+-------+
8 rows in set (0.00 sec)

mysql> insert into emp_salary values(1,1,2000,600,2000,3000,2000,20000),(2,1,4000,2000,3500,800,4000,22000);
Query OK, 2 rows affected (0.23 sec)
Records: 2  Duplicates: 0  Warnings: 0

mysql> select * from emp_salary;
+-----------+-------------+----------+------------+------------+------+--------+--------+
| Salary_id | employee_id | BasicPay | Deducation | TaxablePay | Tax  | NetPay | Salary |
+-----------+-------------+----------+------------+------------+------+--------+--------+
|         1 |           1 |     2000 |        600 |       2000 | 3000 |   2000 |  20000 |
|         2 |           1 |     4000 |       2000 |       3500 |  800 |   4000 |  22000 |
+-----------+-------------+----------+------------+------------+------+--------+--------+
2 rows in set (0.00 sec)





................UC12................



mysql> select * from emp_salary;
+-----------+-------------+----------+------------+------------+------+--------+--------+
| Salary_id | employee_id | BasicPay | Deducation | TaxablePay | Tax  | NetPay | Salary |
+-----------+-------------+----------+------------+------------+------+--------+--------+
|         1 |           1 |     2000 |        600 |       2000 | 3000 |   2000 |  20000 |
|         2 |           1 |     4000 |       2000 |       3500 |  800 |   4000 |  22000 |
+-----------+-------------+----------+------------+------------+------+--------+--------+
2 rows in set (0.00 sec)

mysql> select salary from emp_salary where employee_id = 1;
+--------+
| salary |
+--------+
|  20000 |
|  22000 |
+--------+
2 rows in set (0.00 sec)

mysql> select count(Salary_id) from emp_salary where salary = 20000 group by salary;
+------------------+
| count(Salary_id) |
+------------------+
|                1 |
+------------------+
1 row in set (0.03 sec)

mysql> select avg(Tax) from emp_salary where Salary_id = 2 group by Tax;
+----------+
| avg(Tax) |
+----------+
|      800 |
+----------+
1 row in set (0.00 sec)

mysql> select max(salary) from emp_salary;
+-------------+
| max(salary) |
+-------------+
|       22000 |
+-------------+
1 row in set (0.02 sec)

mysql> select min(salary) from emp_salary;
+-------------+
| min(salary) |
+-------------+
|       20000 |
+-------------+
1 row in set (0.00 sec)

mysql> select sum(salary) from emp_salary;
+-------------+
| sum(salary) |
+-------------+
|       42000 |
+-------------+
1 row in set (0.04 sec)



