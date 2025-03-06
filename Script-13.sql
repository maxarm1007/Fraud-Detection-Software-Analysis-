CREATE TABLE fraud_by_browser (
    browser VARCHAR(255),
    fraud_count INT
)

INSERT INTO fraud_by_browser (browser, fraud_count)
SELECT browser, COUNT(*) AS fraud_count
FROM bank_data_exercise
WHERE fraud = 1
GROUP BY browser
ORDER BY fraud_count DESC;
