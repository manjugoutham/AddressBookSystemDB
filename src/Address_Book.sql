...................UC12...................


mysql> desc contacts;
+--------------+-------------+------+-----+---------+-------+
| Field        | Type        | Null | Key | Default | Extra |
+--------------+-------------+------+-----+---------+-------+
| firstName    | varchar(50) | NO   | PRI | NULL    |       |
| lastName     | varchar(50) | NO   |     | NULL    |       |
| mobilenumber | varchar(20) | NO   |     | NULL    |       |
| email        | varchar(50) | NO   |     | NULL    |       |
+--------------+-------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

mysql> create table Address (
    ->    city varchar(30) not null,
    ->     state varchar(30)not null,
    ->     zip varchar(6) not null,
    ->    primary key(zip));
Query OK, 0 rows affected (1.04 sec)

mysql> desc Address;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| city  | varchar(30) | NO   |     | NULL    |       |
| state | varchar(30) | NO   |     | NULL    |       |
| zip   | varchar(6)  | NO   | PRI | NULL    |       |
+-------+-------------+------+-----+---------+-------+
3 rows in set (0.12 sec)

mysql> insert into contacts values('Allu','arjun','7783838398','aa@gmail.com');
Query OK, 1 row affected (0.58 sec)

mysql> insert into contacts values('Lokesh','S','7788654322','loki@gmail.com');
Query OK, 1 row affected (0.19 sec)

mysql> insert into contacts values('Puneeth','rajkumar','7722778832','puneeth@gmail.com');
Query OK, 1 row affected (0.08 sec)

mysql> select * from contacts;
+-----------+----------+--------------+-------------------+
| firstName | lastName | mobilenumber | email             |
+-----------+----------+--------------+-------------------+
| Allu      | arjun    | 7783838398   | aa@gmail.com      |
| Lokesh    | S        | 7788654322   | loki@gmail.com    |
| Puneeth   | rajkumar | 7722778832   | puneeth@gmail.com |
+-----------+----------+--------------+-------------------+
3 rows in set (0.00 sec)

mysql> insert into Address values ('Bangalore','Karnataka','500500');
Query OK, 1 row affected (0.12 sec)

mysql> insert into Address values ('Telgana','AP','565600');
Query OK, 1 row affected (0.17 sec)

mysql> insert into Address values ('Manglore','Karnataka','560056');
Query OK, 1 row affected (0.11 sec)

mysql> select * from Address;
+-----------+-----------+--------+
| city      | state     | zip    |
+-----------+-----------+--------+
| Bangalore | Karnataka | 500500 |
| Manglore  | Karnataka | 560056 |
| Telgana   | AP        | 565600 |
+-----------+-----------+--------+
3 rows in set (0.00 sec)

mysql> create table contacts_address(
    ->    firstname varchar(50) not null,
    ->    zip varchar(6) not null,
    ->    foreign key (firstname) references contacts(firstname),
    ->    foreign key (zip) references address(zip));
Query OK, 0 rows affected (4.78 sec)

mysql> desc contacts_address;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| firstname | varchar(50) | NO   | MUL | NULL    |       |
| zip       | varchar(6)  | NO   | MUL | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
2 rows in set (0.00 sec)

mysql> drop table contacts_address;
Query OK, 0 rows affected (1.83 sec)

mysql> show tables;
+---------------------------------+
| Tables_in_address_book_database |
+---------------------------------+
| address                         |
| address_book                    |
| contacts                        |
+---------------------------------+
3 rows in set (0.10 sec)

mysql> create table contacts_address(
    ->    firstname varchar(50) not null,
    ->    zip varchar(6) not null,
    ->    foreign key (firstname) references contacts(firstName),
    ->    foreign key (zip) references address(zip));
Query OK, 0 rows affected (1.44 sec)

mysql>
mysql> desc contacts_address;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| firstname | varchar(50) | NO   | MUL | NULL    |       |
| zip       | varchar(6)  | NO   | MUL | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
2 rows in set (0.15 sec)

mysql> drop table contacts_address;
Query OK, 0 rows affected (1.07 sec)

mysql> create table contacts_address(
    ->    firstName varchar(50) not null,
    ->    zip varchar(6) not null,
    ->    foreign key (firstName) references contacts(firstName),
    ->    foreign key (zip) references address(zip));
Query OK, 0 rows affected (2.23 sec)

mysql> insert into contacts_address values ('Lokesh','500500');
Query OK, 1 row affected (0.07 sec)

mysql> insert into contacts_address values ('Allu','560056');
Query OK, 1 row affected (0.25 sec)

mysql> select * from contacts_address;
+-----------+--------+
| firstName | zip    |
+-----------+--------+
| Lokesh    | 500500 |
| Allu      | 560056 |
+-----------+--------+


mysql> alter table contacts_address add Department_Type varchar(250) not null after zip;
Query OK, 0 rows affected (2.86 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc contacts_address;
+-----------------+--------------+------+-----+---------+-------+
| Field           | Type         | Null | Key | Default | Extra |
+-----------------+--------------+------+-----+---------+-------+
| firstName       | varchar(50)  | NO   | MUL | NULL    |       |
| zip             | varchar(6)   | NO   | MUL | NULL    |       |
| Department_Type | varchar(250) | NO   |     | NULL    |       |
+-----------------+--------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> UPDATE contacts_address SET Department_Type = 'sales' WHERE firstName = 'Lokesh';
Query OK, 1 row affected (0.20 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> UPDATE contacts_address SET Department_Type = 'Marketing' WHERE firstName = 'Allu';
Query OK, 1 row affected (1.86 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from contacts_address;
+-----------+--------+-----------------+
| firstName | zip    | Department_Type |
+-----------+--------+-----------------+
| Lokesh    | 500500 | sales           |
| Allu      | 560056 | Marketing       |
+-----------+--------+-----------------+
2 rows in set (0.01 sec)

mysql> select * from address;
+-----------+-----------+--------+
| city      | state     | zip    |
+-----------+-----------+--------+
| Bangalore | Karnataka | 500500 |
| Manglore  | Karnataka | 560056 |
| Telgana   | AP        | 565600 |
+-----------+-----------+--------+
3 rows in set (0.01 sec)

mysql> alter table address add address varchar(250) not null first;
Query OK, 0 rows affected (4.80 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> select
    -> * from address;
+---------+-----------+-----------+--------+
| address | city      | state     | zip    |
+---------+-----------+-----------+--------+
|         | Bangalore | Karnataka | 500500 |
|         | Manglore  | Karnataka | 560056 |
|         | Telgana   | AP        | 565600 |
+---------+-----------+-----------+--------+
3 rows in set (0.00 sec)

mysql> UPDATE address SET address = 'KR puram' WHERE city = 'banglore';
Query OK, 0 rows affected (0.00 sec)
Rows matched: 0  Changed: 0  Warnings: 0

mysql> UPDATE address SET address = 'Muredeshwara' WHERE city = 'Manglore';
Query OK, 1 row affected (0.12 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> UPDATE address SET address = 'Tirupathi' WHERE city = 'Telgana';
Query OK, 1 row affected (0.58 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from address;
+--------------+-----------+-----------+--------+
| address      | city      | state     | zip    |
+--------------+-----------+-----------+--------+
|              | Bangalore | Karnataka | 500500 |
| Muredeshwara | Manglore  | Karnataka | 560056 |
| Tirupathi    | Telgana   | AP        | 565600 |
+--------------+-----------+-----------+--------+
3 rows in set (0.00 sec)

mysql> UPDATE address SET address = 'KR puram' WHERE city = 'Banglore';
Query OK, 0 rows affected (0.00 sec)
Rows matched: 0  Changed: 0  Warnings: 0

mysql> select * from address;
+--------------+-----------+-----------+--------+
| address      | city      | state     | zip    |
+--------------+-----------+-----------+--------+
|              | Bangalore | Karnataka | 500500 |
| Muredeshwara | Manglore  | Karnataka | 560056 |
| Tirupathi    | Telgana   | AP        | 565600 |
+--------------+-----------+-----------+--------+
3 rows in set (0.00 sec)

mysql> UPDATE address SET address = 'KR puram' WHERE zip = '500500';
Query OK, 1 row affected (0.15 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from address;
+--------------+-----------+-----------+--------+
| address      | city      | state     | zip    |
+--------------+-----------+-----------+--------+
| KR puram     | Bangalore | Karnataka | 500500 |
| Muredeshwara | Manglore  | Karnataka | 560056 |
| Tirupathi    | Telgana   | AP        | 565600 |
+--------------+-----------+-----------+--------+
3 rows in set (0.00 sec)