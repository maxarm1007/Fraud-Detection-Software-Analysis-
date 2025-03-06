CREATE TABLE fraud_count_ToD (
    hour_of_day INTEGER PRIMARY KEY, 
    fraud_count INTEGER
)

INSERT INTO fraud_count_ToD (hour_of_day, fraud_count)
SELECT 
    strftime('%H', substr(date_time, 7, 4) || '-' || 
                     substr(date_time, 4, 2) || '-' || 
                     substr(date_time, 1, 2) || ' ' || 
                     substr(date_time, 12, 5)) AS hour_of_day, 
    COUNT(*) AS fraud_count
FROM bank_data_exercise
WHERE fraud = 1
GROUP BY hour_of_day
ORDER BY fraud_count DESC;


