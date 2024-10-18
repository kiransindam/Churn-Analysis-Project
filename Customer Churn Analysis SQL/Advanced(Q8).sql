-- Q8: List the top 5 youngest customers who have a high balance and are active members.

SELECT * FROM customer_churn 
WHERE active_member = 1 
ORDER BY balance DESC, age ASC 
LIMIT 5;
