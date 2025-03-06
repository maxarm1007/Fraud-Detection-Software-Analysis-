CREATE TABLE fraud_summary (
    total_transactions INT,
    total_fraud_transactions INT,
    fraud_rate_percentage DECIMAL(10,2)
)

INSERT INTO fraud_summary (total_transactions, total_fraud_transactions, fraud_rate_percentage)
SELECT COUNT(*) AS total_transactions, SUM(CASE WHEN fraud = 1 THEN 1 ELSE 0 END) AS total_fraud_transactions, 
(SUM(CASE WHEN fraud = 1 THEN 1 ELSE 0 END) * 100.0 / COUNT(*)) AS fraud_rate_percentage
FROM bank_data_exercise;

