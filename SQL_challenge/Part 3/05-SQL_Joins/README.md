# SQL Joins

## Part 1

* Describe the different types of join clauses supported in SQL.
The different types of joins are as follows: `left`, `right`, `inner`, `full outer`, and `cross`.
  `LEFT JOIN` will output the all records from the left table and only the matched records from the right table.
  `RIGHT JOIN` will output the all records from the right table and only the matched records from the left table.
  `INNER JOIN` will output only the matched records from the both tables.
  `FULL OUTER JOIN` or `FULL JOIN` will output the records of both a `left` and `right` join along with rows with NULL values for any non-matched records.
  `CROSS JOIN` will output a table that matches one of each value in the first table to one of each value in the second and so on for multiple tables. So 1,2 & A,B would become 1A, 2A, 1B, 2B.

## Part 2

* Consider the following tables:

  * vendor_table
  ![vendor_table.png](Images/vendor_table.png)

  * yarn_table
  ![yarn_table.png](Images/yarn_table.png)

* Which join was used to create the final view below?

  ![table_join.png](Images/table_join.png)
 
 When examining the table the value NULL values jumps out which immediately means a `FULL JOIN` was preformed.

* _You can use pgAdmin and create a new table to test out this activity_
