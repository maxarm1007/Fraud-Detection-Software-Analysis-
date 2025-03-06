SELECT * FROM bank_data_exercise 
WHERE transaction_id IN (
    (SELECT transaction_id FROM bank_data_exercise WHERE fraud = '1' LIMIT 1)
    (SELECT transaction_id FROM bank_data_exercise WHERE fraud = '0' LIMIT 1)
);
