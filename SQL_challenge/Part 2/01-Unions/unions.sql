SELECT * FROM actor;
SELECT * FROM customer;
SELECT * FROM staff;

-- Create a view using union, return the first and last name for all 
--actors, staff, and customers
CREATE VIEW all_parties AS
SELECT 'Actor' As Type, first_name, last_name
FROM actor
UNION
SELECT 'Staff', first_name, last_name
FROM staff
UNION
SELECT 'Customer', first_name, last_name
FROM customer;

--Query the ID of all customers who live in London from
--customer and customer_list
SELECT * FROM customer;
SELECT * FROM address;
SELECT * FROM city;

--Query the ID of all customers who live in London from customer (2 ways)
-- 1st option
SELECT customer.customer_id, city.city, address.address_id, city.city_id
FROM customer
JOIN address ON customer.address_id = address.address_id
JOIN city ON address.city_id = city.city_id
ORDER BY city;

--2nd option
SELECT customer.customer_id, city.city
FROM customer, city, address
WHERE customer.address_id = address.address_id 
	AND address.city_id = city.city_id
	AND city.city = 'London';

--Customer ID of customers who live in London via customer_list
SELECT * FROM customer_list;

SELECT id, city
FROM customer_list
WHERE city = 'London';

--Determine whether both tables contain the same customers using UNION ALL
SELECT customer_id 
FROM customer
UNION ALL
SELECT id 
FROM customer_list;