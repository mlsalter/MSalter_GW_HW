# Joins Are From Descartes, Rows Are From Schemas


### Part 1

* The outputs of following queries are 25 and 10, respectively.

  ```sql
  SELECT COUNT(*)
  FROM first_table;

  SELECT COUNT(*)
  FROM second_table;
  ```

* What will be the number of rows in the output of the following query?

  ```sql
  SELECT *
  FROM first_table, second_table;
  ```  

The output is 250, because it preforms a cross join, which matches one of each value in first_table to one of each value in second_table. So: (respectively) 1,2 & A,B become 1A, 1B, 2A, 2B.

### Part 2

* The query `SELECT * FROM table_one;` returns the following:

  ![Images/descartes01.png](Images/descartes01.png)

* And the query `SELECT * FROM table_two;` returns the following:

  ![Images/descartes01.png](Images/descartes02.png)

* What will the query `SELECT * FROM table_one, table_two;` look like?

  ![Images/part1.png](Images/part1.png)

* _You can use pgAdmin and create a new table to test out this activity_
  Tested out in test.sql file
