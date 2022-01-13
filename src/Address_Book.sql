mysql> SELECT COUNT(city) FROM Address_Book;
+-------------+
| COUNT(city) |
+-------------+
|           3 |
+-------------+
1 row in set (0.02 sec)

mysql> SELECT COUNT(city) FROM Address_Book WHERE state="Karnataka";
+-------------+
| COUNT(city) |
+-------------+
|           1 |
+-------------+
1 row in set (0.00 sec)
