CREATE TABLE fraud_cust_overview (
    bank_customer_id TEXT,
    beneficiary TEXT,
    beneficiary_sort_code INTEGER,
    count INTEGER,
    trans_amount INTEGER,
    os TEXT,
    device_id TEXT,
    fraud INTEGER
)

INSERT INTO fraud_cust_overview (bank_customer_id, beneficiary, beneficiary_sort_code, count, trans_amount, os, device_id, fraud)
SELECT bank_customer_id, beneficiary, beneficiary_sort_code, COUNT(*) AS count, SUM(transaction_amount) AS trans_amount, os, device_id, fraud FROM bank_data_exercise 
WHERE fraud = 1
GROUP BY bank_customer_id, beneficiary_sort_code
ORDER BY count DESC;


