mysql> DELETE FROM Address_Book WHERE firstName = "Afzer";
Query OK, 1 row affected (0.20 sec)

mysql> select * from Address_Book;
+-----------+----------+----------+-------+-----------+--------+-------------+------------------+
| firstName | lastName | address  | city  | state     | zip    | phoneNumber | email            |
+-----------+----------+----------+-------+-----------+--------+-------------+------------------+
| Goutham   | Y        | RT nagar | Kolar | Karnataka | 565656 |   987654321 | gouthu@gmail.com |
| Harish    | L        | andra    | Delhi | Bihar     | 565006 |   810545761 | smith@gmail.com  |
+-----------+----------+----------+-------+-----------+--------+-------------+------------------+
2 rows in set (0.00 sec)
