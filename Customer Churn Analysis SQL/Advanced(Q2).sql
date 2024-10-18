-- Q2: Calculate the average balance for customers, categorized by whether they have a credit card or not.

SELECT credit_card, AVG(balance) AS average_balance 
FROM customer_churn 
GROUP BY credit_card;
