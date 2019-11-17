-- Query number of copies for each film in inventory, use subquery
SELECT title,
(SELECT COUNT(inventory.film_id)
	FROM inventory
	WHERE film.film_id = inventory.film_id ) AS "Number of Copies"
FROM film
ORDER BY "Number of Copies" DESC;

-- Create a View
CREATE VIEW title_count AS
SELECT title,
(SELECT COUNT(inventory.film_id)
	FROM inventory
	WHERE film.film_id = inventory.film_id ) AS "Number of Copies"
FROM film;

-- Query the view for titles with 7 copies
SELECT title, "Number of Copies"
FROM title_count
WHERE "Number of Copies" = 7;
