-- Q5: Get the top 5 customers with the highest estimated salary.

SELECT * FROM customer_churn ORDER BY estimated_salary DESC LIMIT 5;
