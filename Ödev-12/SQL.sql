--1
SELECT COUNT(*) FROM film WHERE length > (SELECT AVG(length) FROM film);

--2
SELECT COUNT(*) FROM film WHERE rental_rate = (SELECT MAX(rental_rate) FROM film);

--3
SELECT * FROM film WHERE rental_rate = (SELECT MIN(rental_rate) FROM film) AND replacement_cost = (SELECT MIN(replacement_cost) FROM film);

--4
SELECT 
cu.customer_id, 
cu.first_name, 
cu.last_name, 
p.total
FROM customer cu 
INNER JOIN (SELECT customer_id, COUNT(*) as "total" FROM payment GROUP BY customer_id) p ON p.customer_id = cu.customer_id
ORDER BY p.total DESC;