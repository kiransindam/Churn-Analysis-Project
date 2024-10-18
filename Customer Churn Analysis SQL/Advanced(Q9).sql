-- Q9: Show the distribution of churn based on the number of products owned.

SELECT products_number, COUNT(*) AS total_customers, SUM(churn) AS churned_customers 
FROM customer_churn 
GROUP BY products_number;
