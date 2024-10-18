-- Q3: Show the top 3 countries with the highest average credit score.

SELECT country, AVG(credit_score) AS average_credit_score 
FROM customer_churn 
GROUP BY country 
ORDER BY average_credit_score DESC 
LIMIT 3;
