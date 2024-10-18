-- Q4: Find customers who have a higher estimated salary than the average salary of all customers.

SELECT * FROM customer_churn 
WHERE estimated_salary > (SELECT AVG(estimated_salary) FROM customer_churn);
