mysql> insert into Address_Book values("John","Joe","sales Team","kunigal","manglore","UP",300033,882233445,"John33@gmail.com");
Query OK, 1 row affected (0.11 sec)

mysql> select * from Address_Book;
+-----------+----------+------------+-----------------+----------+---------------+--------+-------------+------------------+
| firstName | lastName | address    | Department_Type | city     | state         | zip    | phoneNumber | email            |
+-----------+----------+------------+-----------------+----------+---------------+--------+-------------+------------------+
| Goutham   | Y        | RT nagar   | Market team     | Kolar    | Karnataka     | 565656 |   987654321 | gouthu@gmail.com |
| Harish    | L        | andra      | sales team      | Delhi    | Bihar         | 565006 |   810545761 | smith@gmail.com  |
| smith     | G        | bihar      | Market team     | banglore | Andra pradesh | 565656 |   810545761 | allen@gmail.com  |
| John      | Joe      | sales Team | kunigal         | manglore | UP            | 300033 |   882233445 | John33@gmail.com |
+-----------+----------+------------+-----------------+----------+---------------+--------+-------------+------------------+
4 rows in set (0.01 sec)

mysql> insert into Address_Book values("Watt","Joe","market Team","komali","andrapradesh","AP",300033,882233445,"aaa33@gmail.com");
Query OK, 1 row affected (0.13 sec)

mysql> select * from Address_Book;
+-----------+----------+-------------+-----------------+--------------+---------------+--------+-------------+------------------+
| firstName | lastName | address     | Department_Type | city         | state         | zip    | phoneNumber | email            |
+-----------+----------+-------------+-----------------+--------------+---------------+--------+-------------+------------------+
| Goutham   | Y        | RT nagar    | Market team     | Kolar        | Karnataka     | 565656 |   987654321 | gouthu@gmail.com |
| Harish    | L        | andra       | sales team      | Delhi        | Bihar         | 565006 |   810545761 | smith@gmail.com  |
| smith     | G        | bihar       | Market team     | banglore     | Andra pradesh | 565656 |   810545761 | allen@gmail.com  |
| John      | Joe      | sales Team  | kunigal         | manglore     | UP            | 300033 |   882233445 | John33@gmail.com |
| Watt      | Joe      | market Team | komali          | andrapradesh | AP            | 300033 |   882233445 | aaa33@gmail.com  |
+-----------+----------+-------------+-----------------+--------------+---------------+--------+-------------+------------------+
5 rows in set (0.00 sec)

mysql> insert into Address_Book values("Watt","Joe","market Team","komali","andrapradesh","AP",300033,882233445,"aaa33@gmail.com");
Query OK, 1 row affected (1.57 sec)

mysql> select * from Address_Book;
+-----------+----------+-------------+-----------------+--------------+---------------+--------+-------------+------------------+
| firstName | lastName | address     | Department_Type | city         | state         | zip    | phoneNumber | email            |
+-----------+----------+-------------+-----------------+--------------+---------------+--------+-------------+------------------+
| Goutham   | Y        | RT nagar    | Market team     | Kolar        | Karnataka     | 565656 |   987654321 | gouthu@gmail.com |
| Harish    | L        | andra       | sales team      | Delhi        | Bihar         | 565006 |   810545761 | smith@gmail.com  |
| smith     | G        | bihar       | Market team     | banglore     | Andra pradesh | 565656 |   810545761 | allen@gmail.com  |
| John      | Joe      | sales Team  | kunigal         | manglore     | UP            | 300033 |   882233445 | John33@gmail.com |
| Watt      | Joe      | market Team | komali          | andrapradesh | AP            | 300033 |   882233445 | aaa33@gmail.com  |
| Watt      | Joe      | market Team | komali          | andrapradesh | AP            | 300033 |   882233445 | aaa33@gmail.com  |
+-----------+----------+-------------+-----------------+--------------+---------------+--------+-------------+------------------+
