mysql> UPDATE Address_Book SET city = 'Kolar' WHERE firstName = 'Goutham';
Query OK, 1 row affected (0.18 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from Address_Book;
+-----------+----------+----------+----------+-----------+--------+-------------+------------------+
| firstName | lastName | address  | city     | state     | zip    | phoneNumber | email            |
+-----------+----------+----------+----------+-----------+--------+-------------+------------------+
| Goutham   | Y        | RT nagar | Kolar    | Karnataka | 565656 |   987654321 | gouthu@gmail.com |
| Afzer     | L        | bihar    | banglore | Karnataka | 565656 |   810545761 | allen@gmail.com  |
| Harish    | L        | andra    | Delhi    | Bihar     | 565006 |   810545761 | smith@gmail.com  |
+-----------+----------+----------+----------+-----------+--------+-------------+------------------+