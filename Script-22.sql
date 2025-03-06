CREATE TABLE policy_score_distribution (
    score_category TEXT PRIMARY KEY,
    avg_transaction_amount DECIMAL(10,2),
    transaction_count INTEGER
)

INSERT INTO policy_score_distribution (score_category, avg_transaction_amount, transaction_count)
SELECT 
    CASE 
        WHEN policy_score < -50 THEN 'Very Low (-100 to -50)'
        WHEN policy_score BETWEEN -50 AND 0 THEN 'Low (-50 to 0)'
        WHEN policy_score BETWEEN 1 AND 50 THEN 'Medium (1 to 50)'
        WHEN policy_score BETWEEN 51 AND 100 THEN 'High (51 to 100)'
        ELSE 'Unknown'
    END AS score_category,
    AVG(transaction_amount) AS avg_transaction_amount,
    COUNT(*) AS transaction_count
FROM bank_data_exercise
GROUP BY score_category
ORDER BY avg_transaction_amount DESC;

