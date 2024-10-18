-- Q7: Find the country with the highest number of churned customers.

SELECT country, COUNT(*) AS churned_customers 
FROM customer_churn 
WHERE churn = 1 
GROUP BY country 
ORDER BY churned_customers DESC 
LIMIT 1;
