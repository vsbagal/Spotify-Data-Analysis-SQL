## Spotify Data Analysis


-- QUE1. Who is the senior most employee based on job title?

SELECT title, last_name, first_name 
FROM employee
ORDER BY levels DESC
LIMIT 1


-- QUE2. Which countries have the most Invoices?

SELECT COUNT(*) AS c, billing_country 
FROM invoice
GROUP BY billing_country
ORDER BY c DESC
