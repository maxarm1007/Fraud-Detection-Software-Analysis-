SELECT 
    browser, COUNT(*) AS fraud_count
FROM bank_data_exercise bde 
WHERE fraud = 1
GROUP BY browser
ORDER BY fraud_count DESC;