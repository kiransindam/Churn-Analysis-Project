-- Q2: Find the maximum balance for customers who have churned.

SELECT MAX(balance) AS max_balance FROM customer_churn WHERE churn = 1;
