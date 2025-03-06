SELECT 
    COUNT(*) AS total_transactions,
    SUM(CASE WHEN fraud = 1 THEN 1 ELSE 0 END) AS total_fraud_transactions,
    (SUM(CASE WHEN fraud = 1 THEN 1 ELSE 0 END) * 100.0 / COUNT(*)) AS fraud_rate_percentage
FROM bank_data_exercise;