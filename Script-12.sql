CREATE TABLE transaction_amounts_summary (
    avg_transaction_amount DECIMAL(18,2),
    max_transaction_amount DECIMAL(18,2)
)

INSERT OR REPLACE INTO transaction_amounts_summary (avg_transaction_amount, max_transaction_amount)
SELECT AVG(transaction_amount) AS avg_transaction_amount, MAX(transaction_amount) AS max_transaction_amount
FROM bank_data_exercise;