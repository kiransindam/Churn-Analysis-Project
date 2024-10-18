-- Advanced SQL Questions 
-- Q1: Find the churn rate for each country.

SELECT country, 
       AVG(churn) * 100 AS churn_rate 
FROM customer_churn 
GROUP BY country;
