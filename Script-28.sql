CREATE TABLE fraud_device (
    device_id VARCHAR(255),
    fraud_count INTEGER
)

INSERT INTO fraud_device (device_id, fraud_count)
SELECT device_id, COUNT(*) AS fraud_count
FROM bank_data_exercise
WHERE fraud = 1
GROUP BY device_id
HAVING COUNT(*) > 1
ORDER BY fraud_count DESC;

