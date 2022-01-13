mysql> alter table Address_Book add Department_Type varchar(250) not null after address;
Query OK, 0 rows affected (3.79 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> select * from Address_Book;
+-----------+----------+----------+-----------------+----------+---------------+--------+-------------+------------------+
| firstName | lastName | address  | Department_Type | city     | state         | zip    | phoneNumber | email            |
+-----------+----------+----------+-----------------+----------+---------------+--------+-------------+------------------+
| Goutham   | Y        | RT nagar |                 | Kolar    | Karnataka     | 565656 |   987654321 | gouthu@gmail.com |
| Harish    | L        | andra    |                 | Delhi    | Bihar         | 565006 |   810545761 | smith@gmail.com  |
| smith     | G        | bihar    |                 | banglore | Andra pradesh | 565656 |   810545761 | allen@gmail.com  |
+-----------+----------+----------+-----------------+----------+---------------+--------+-------------+------------------+
3 rows in set (0.00 sec)

mysql> update Address_Book SET Department_Type = "Market team" WHERE firstName = "Goutham";
Query OK, 1 row affected (0.07 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> update Address_Book SET Department_Type = "sales team" WHERE firstName = "Harish";
Query OK, 1 row affected (0.15 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> update Address_Book SET Department_Type = "Market team" WHERE firstName = "smith";
Query OK, 1 row affected (0.09 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from Address_Book;
+-----------+----------+----------+-----------------+----------+---------------+--------+-------------+------------------+
| firstName | lastName | address  | Department_Type | city     | state         | zip    | phoneNumber | email            |
+-----------+----------+----------+-----------------+----------+---------------+--------+-------------+------------------+
| Goutham   | Y        | RT nagar | Market team     | Kolar    | Karnataka     | 565656 |   987654321 | gouthu@gmail.com |
| Harish    | L        | andra    | sales team      | Delhi    | Bihar         | 565006 |   810545761 | smith@gmail.com  |
| smith     | G        | bihar    | Market team     | banglore | Andra pradesh | 565656 |   810545761 | allen@gmail.com  |
+-----------+----------+----------+-----------------+----------+---------------+--------+-------------+------------------+
3 rows in set (0.00 sec)
