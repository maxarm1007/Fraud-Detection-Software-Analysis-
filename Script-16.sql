CREATE TABLE fraud_transaction_amounts (
    fraud INT,
    avg_amount DECIMAL(18,2),
    min_amount DECIMAL(18,2),
    max_amount DECIMAL(18,2)
)

INSERT INTO fraud_transaction_amounts(fraud, avg_amount, min_amount, max_amount)
SELECT fraud, AVG(transaction_amount) AS avg_amount, MIN(transaction_amount) AS min_amount, MAX(transaction_amount) AS max_amount
FROM bank_data_exercise
GROUP BY fraud;