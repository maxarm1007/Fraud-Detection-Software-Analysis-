CREATE TABLE fraud_device (
    device_id VARCHAR(255),
    fraud_count INTEGER
)



SELECT proxy_type, COUNT(*) AS fraud_count
FROM bank_data_exercise
WHERE fraud = 1 AND proxy_type IS NOT NULL
GROUP BY proxy_type
ORDER BY fraud_count DESC;