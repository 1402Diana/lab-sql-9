# Create a table rentals_may to store the data from rental table with information for the month of May.
CREATE TABLE rentals_may AS
SELECT *
FROM rental
WHERE MONTH(rental_date) = 5;


# Insert values in the table rentals_may using the table rental, filtering values only for the month of May.

INSERT INTO rentals_may
SELECT *
FROM rental
WHERE MONTH(rental_date) = 5;

# Create a table rentals_june to store the data from rental table with information for the month of June.

CREATE TABLE rentals_june AS
SELECT *
FROM rental
WHERE MONTH(rental_date) = 6;

# Insert values in the table rentals_june using the table rental, filtering values only for the month of June.

INSERT INTO rentals_june
SELECT *
FROM rental
WHERE MONTH(rental_date) = 6;

# Check the number of rentals for each customer for May.

SELECT c.customer_id, c.first_name, c.last_name, COUNT(r.rental_id) AS rental_count
FROM rentals_may r
JOIN customer c ON r.customer_id = c.customer_id
GROUP BY c.customer_id, c.last_name;


# Check the number of rentals for each customer for June.

SELECT c.customer_id, c.first_name, c.last_name, COUNT(r.rental_id) AS rental_count
FROM rentals_june r
JOIN customer c ON r.customer_id = c.customer_id
GROUP BY c.customer_id, c.last_name;