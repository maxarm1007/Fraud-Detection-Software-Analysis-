SELECT bank_customer_id, device_id, SUM(transaction_amount) AS tta, COUNT(transaction_id) AS trans_count FROM bank_data_exercise AS b
GROUP BY bank_customer_id, device_id 
HAVING COUNT(transaction_id) > 5
ORDER BY tta;