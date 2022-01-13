mysql> select COUNT(firstName) from Address_Book where Department_Type = "Sales Team";
+------------------+
| COUNT(firstName) |
+------------------+
|                1 |
+------------------+
1 row in set (0.00 sec)

mysql> select COUNT(firstName) from Address_Book where Department_Type = "Market team";
+------------------+
| COUNT(firstName) |
+------------------+
|                2 |
+------------------+
1 row in set (0.00 sec)