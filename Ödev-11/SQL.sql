--1
(
SELECT first_name FROM actor
)
UNION 
(
SELECT first_name FROM customer
);

--2
(SELECT first_name FROM actor)

INTERSECT

(SELECT first_name FROM customer);

--3
(SELECT first_name FROM actor)

EXCEPT

(SELECT first_name FROM customer);

--4

--0.1
(SELECT first_name FROM actor);

UNION 

(SELECT first_name FROM customer)

--0.2
(SELECT first_name FROM actor)

INTERSECT ALL

(SELECT first_name FROM customer);

--0.3
(SELECT first_name FROM actor)

EXCEPT ALL

(SELECT first_name FROM customer);
