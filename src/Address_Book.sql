.............UC13............................
mysql> select count(contacts.firstname) from contacts,contacts_address,address where contacts.firstname = contacts_address.firstname and contacts_address.zip = address.zip and address.state = 'karnataka';
+---------------------------+
| count(contacts.firstname) |
+---------------------------+
|                         2 |
+---------------------------+
1 row in set (0.04 sec)