CREATE TABLE customer_churn (
    customer_id INT PRIMARY KEY,
    credit_score INT,
    country VARCHAR(50),
    gender VARCHAR(10),
    age INT,
    tenure INT,
    balance DECIMAL(15, 2),
    products_number INT,
    credit_card TINYINT(1),
    active_member TINYINT(1),
    estimated_salary DECIMAL(15, 2),
    churn TINYINT(1)
);
