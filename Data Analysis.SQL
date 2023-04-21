## Spotify Data Analysis


-- QUE1. Who is the senior most employee based on job title?

SELECT title, last_name, first_name 
FROM employee
ORDER BY levels DESC
LIMIT 1


-- QUE2. Which top 5 countries have the most Invoices?

SELECT COUNT(*) AS c, billing_country 
FROM invoice
GROUP BY billing_country
ORDER BY c DESC
LIMIT 5


-- QUE3. What are the top 5 values of the total invoice?

SELECT total 
FROM invoice
ORDER BY total DESC
LIMIT 5


/* QUE4. Which city has the best customers? We would like to throw a promotional Music
 Festival in the city we made the most money. Write a query that returns one city that
 has the highest sum of invoice totals. Return both the city name & sum of all invoice totals */

SELECT billing_city, SUM(total) AS InvoiceTotal
FROM invoice
GROUP BY billing_city
ORDER BY InvoiceTotal DESC
LIMIT 1;


/* QUE5. Who is the best customer? The customer who has spent the most money will be declared the best 
customer. Write a query that returns the person who has spent the most money*/

SELECT customer.customer_id, first_name, last_name, SUM(total) AS total_spending
FROM customer
JOIN invoice ON customer.customer_id = invoice.customer_id
GROUP BY customer.customer_id
ORDER BY total_spending DESC
LIMIT 1;

