CREATE TABLE fraud_detectio_rate (
    fraud_detection_rate DECIMAL(10,2)
)

INSERT INTO fraud_detectio_rate (fraud_detection_rate)
SELECT COUNT(CASE WHEN fraud = 1 AND policy_score < 0 THEN 1 END) * 100.0 / COUNT(CASE WHEN fraud = 1 THEN 1 END) AS fraud_detection_rate
FROM bank_data_exercise;

