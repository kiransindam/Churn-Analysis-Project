-- Q4: Show the total balance of all active members grouped by country.

SELECT country, SUM(balance) AS total_balance FROM customer_churn WHERE active_member = 1 GROUP BY country;
