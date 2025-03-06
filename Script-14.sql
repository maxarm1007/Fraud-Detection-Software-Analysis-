CREATE TABLE fraud_by_os (
    os VARCHAR(255),
    fraud_count INT
)

INSERT INTO fraud_by_os (os, fraud_count)
SELECT os, COUNT(*) AS fraud_count
FROM bank_data_exercise
WHERE fraud = 1
GROUP BY os
ORDER BY fraud_count DESC;