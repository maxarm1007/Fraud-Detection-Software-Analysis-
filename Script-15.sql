CREATE TABLE sample_fraud_transaction (
    transaction_id VARCHAR(255) PRIMARY KEY,
    bank_customer_id VARCHAR(255),
    device_id VARCHAR(255),
    browser VARCHAR(100),
    os VARCHAR(100),
    transaction_amount DECIMAL(18,2),
    policy_score INT,
    true_ip_geo VARCHAR(50),
    fraud INT
)

INSERT INTO sample_fraud_transaction (transaction_id, bank_customer_id, device_id, browser, os, transaction_amount, policy_score, true_ip_geo, fraud)
SELECT transaction_id, bank_customer_id, device_id, browser, os, transaction_amount, policy_score, true_ip_geo, fraud 
FROM bank_data_exercise 
WHERE fraud = 1 
UNION 
SELECT transaction_id, bank_customer_id, device_id, browser, os, transaction_amount, policy_score, true_ip_geo, fraud 
FROM bank_data_exercise 
WHERE fraud = 0
LIMIT 2;
