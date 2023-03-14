--Question 1. How many actors are there with the last name ‘Wahlberg’?
SELECT last_name
FROM actor 
WHERE last_name = 'Wahlberg'
--Answer: 2

--Question 2. How many payments were made between $3.99 and $5.99?
SELECT COUNT(amount)
FROM payment 
WHERE amount BETWEEN 3.99 AND 5.99
--Answer: 5,607

--Question 3. What films have exactly 7 copies? (search in inventory)
SELECT film_id, COUNT(*)
FROM inventory 
GROUP BY film_id 
HAVING COUNT(film_id) = 7
--Answer: See table

--Question 4. How many customers have the first name ‘Willie’?
SELECT *
FROM customer 
WHERE first_name = 'Willie'
--Answer: 2

--Question 5. What store employee (get the id) sold the most rentals (use the rental table)?
SELECT staff_id, COUNT(*) 
FROM rental
GROUP BY staff_id
--staff_id 1

--Question 6. How many unique district names are there?
SELECT COUNT(DISTINCT district)
FROM address 
--Answer: 378

--Question 7. What film has the most actors in it? (use film_actor table and get film_id)
SELECT film_id, COUNT(*) AS num_actors
FROM film_actor 
GROUP BY film_id 
ORDER BY num_actors
--Answer: Film ID 508

--Question 8. From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)
SELECT *
FROM customer
WHERE store_id = 1 AND last_name LIKE '%es'
--Answer: 13

--Question 9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers with ids between 380 and 430? (use group by and having > 250)
SELECT amount, COUNT(*)
FROM payment
WHERE customer_id BETWEEN 380 AND 430
GROUP BY amount 
HAVING COUNT(customer_id) > 250;
--Answer: 3

--Question 10. Within the film table, how many rating categories are there? And what rating has the most movies total?
SELECT rating, COUNT(*) 
FROM film 
GROUP BY rating 
ORDER BY COUNT(*)
--Answer: 5 categories, PG-13 has the most

