-- Q5: Find the total number of active members in the dataset.

SELECT COUNT(*) FROM customer_churn WHERE active_member = 1;
