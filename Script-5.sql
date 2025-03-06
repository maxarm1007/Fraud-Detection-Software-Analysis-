SELECT 
    os, COUNT(*) AS fraud_count
FROM bank_data_exercise bde 
WHERE fraud = 1
GROUP BY os
ORDER BY fraud_count DESC;