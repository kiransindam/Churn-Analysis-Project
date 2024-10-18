-- Intermediate SQL Questions (5)
-- Q1: Get the average estimated salary of customers who are not active members.
SELECT AVG(estimated_salary) AS average_salary FROM customer_churn WHERE active_member = 0;
