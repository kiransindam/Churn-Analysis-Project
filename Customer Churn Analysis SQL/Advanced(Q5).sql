-- Q5: List customers with more than two products and have churned, showing their country, balance, and products.

SELECT country, balance, products_number 
FROM customer_churn 
WHERE products_number > 2 AND churn = 1;
