CREATE TABLE proxy_usage (
    proxy_type TEXT,
    fraud_count INTEGER,
    non_fraud_count INTEGER
);


INSERT INTO proxy_usage (proxy_type, fraud_count, non_fraud_count)
SELECT proxy_type, SUM(CASE WHEN fraud = 1 THEN 1 ELSE 0 END) AS fraud_count, SUM(CASE WHEN fraud = 0 THEN 1 ELSE 0 END) AS non_fraud_count
FROM bank_data_exercise
WHERE proxy_type IS NOT NULL
GROUP BY proxy_type
ORDER BY fraud_count DESC;
