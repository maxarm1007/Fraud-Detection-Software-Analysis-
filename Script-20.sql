CREATE TABLE weekly_fraud_summary (
    year INTEGER,
    week_number INTEGER,
    total_fraud_amount DECIMAL(10,2),
    PRIMARY KEY (year, week_number)
)

INSERT OR REPLACE INTO weekly_fraud_summary (year, week_number, total_fraud_amount)
SELECT strftime('%Y', substr(date_time, 7, 4) || '-' || substr(date_time, 4, 2) || '-' || substr(date_time, 1, 2) || ' ' || substr(date_time, 12)) AS year,
strftime('%W', substr(date_time, 7, 4) || '-' || substr(date_time, 4, 2) || '-' || substr(date_time, 1, 2) || ' ' || substr(date_time, 12)) AS week_number, 
SUM(transaction_amount) AS total_fraud_amount
FROM bank_data_exercise
WHERE fraud = 1
GROUP BY year, week_number
ORDER BY year, week_number;



