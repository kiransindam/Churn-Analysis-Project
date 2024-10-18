-- Q6: Calculate the average tenure of customers who are active members and those who are not.

SELECT active_member, AVG(tenure) AS average_tenure 
FROM customer_churn 
GROUP BY active_member;
