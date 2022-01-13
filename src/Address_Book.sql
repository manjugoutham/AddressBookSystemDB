mysql> INSERT INTO Address_Book values("Goutham","Y","RT nagar","Bengaluru","Karnataka",565656,987654321,"gouthu@gmail.com");
Query OK, 1 row affected (0.08 sec)

mysql> select * from Address_Book;
+-----------+----------+----------+-----------+-----------+--------+-------------+------------------+
| firstName | lastName | address  | city      | state     | zip    | phoneNumber | email            |
+-----------+----------+----------+-----------+-----------+--------+-------------+------------------+
| Goutham   | Y        | RT nagar | Bengaluru | Karnataka | 565656 |   987654321 | gouthu@gmail.com |
+-----------+----------+----------+-----------+-----------+--------+-------------+------------------+
1 row in set (0.00 sec)

mysql> INSERT INTO Address_Book values("Afzer","L","bihar","banglore","Karnataka",565656,810545761,"allen@gmail.com");
Query OK, 1 row affected (0.12 sec)

mysql> INSERT INTO Address_Book values("Harish","L","andra","Delhi","Bihar",565006,810545761,"smith@gmail.com");
Query OK, 1 row affected (0.09 sec)

mysql> select * from Address_Book;
+-----------+----------+----------+-----------+-----------+--------+-------------+------------------+
| firstName | lastName | address  | city      | state     | zip    | phoneNumber | email            |
+-----------+----------+----------+-----------+-----------+--------+-------------+------------------+
| Goutham   | Y        | RT nagar | Bengaluru | Karnataka | 565656 |   987654321 | gouthu@gmail.com |
| Afzer     | L        | bihar    | banglore  | Karnataka | 565656 |   810545761 | allen@gmail.com  |
| Harish    | L        | andra    | Delhi     | Bihar     | 565006 |   810545761 | smith@gmail.com  |
+-----------+----------+----------+-----------+-----------+--------+-------------+------------------+
3 rows in set (0.00 sec)