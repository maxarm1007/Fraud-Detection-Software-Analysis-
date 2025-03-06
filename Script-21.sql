CREATE TABLE transaction_amount_distribution (
    amount_range TEXT PRIMARY KEY,
    transaction_count INTEGER
)

INSERT INTO transaction_amount_distribution (amount_range, transaction_count)
SELECT 
	CASE 
        WHEN transaction_amount < 500 THEN '0-499'
        WHEN transaction_amount BETWEEN 500 AND 999 THEN '500-999'
        WHEN transaction_amount BETWEEN 1000 AND 2999 THEN '1000-3000'
        WHEN transaction_amount BETWEEN 3000 AND 4999 THEN '3000-4999'
        WHEN transaction_amount BETWEEN 5000 AND 9999 THEN '5000-9999'
        ELSE '10000+'
    END AS amount_range,
    COUNT(*) AS transaction_count
FROM bank_data_exercise
GROUP BY amount_range
ORDER BY amount_range;


