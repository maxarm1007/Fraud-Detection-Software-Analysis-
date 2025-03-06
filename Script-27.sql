CREATE TABLE false_postive_rate (
    false_positive_rate DECIMAL(10,2)
)

INSERT INTO false_postive_rate (false_positive_rate)
SELECT COUNT(CASE WHEN fraud = 0 AND policy_score < 0 THEN 1 END) * 100.0 / COUNT(CASE WHEN fraud = 0 THEN 1 END) AS false_positive_rate
FROM bank_data_exercise;