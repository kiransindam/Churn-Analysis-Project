-- Q9: Show the number of male and female customers.

SELECT gender, COUNT(*) AS total FROM customer_churn GROUP BY gender;
