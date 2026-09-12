SELECT * FROM Bank_Loan_Data

SELECT COUNT(id) AS Total_Loan_Applications FROM Bank_Loan_Data

SELECT COUNT(id) AS PMTD_Total_Loan_Applications FROM Bank_Loan_Data
WHERE MONTH(issue_date) = 11 AND YEAR(issue_date) = 2021

-- (MTD-PMTD)/ PMTD

SELECT SUM(loan_amount) AS MTD_Total_Funded_Amount FROM Bank_Loan_Data
WHERE MONTH(issue_date) = 12 AND YEAR(issue_date) = 2021

SELECT SUM(loan_amount) AS PMTD_Total_Funded_Amount FROM Bank_Loan_Data
WHERE MONTH(issue_date) = 11 AND YEAR(issue_date) = 2021

SELECT SUM(total_payment) AS MTD_Total_Amount_Recieved FROM Bank_Loan_Data 
WHERE MONTH(issue_date) = 12 AND YEAR(issue_date) = 2021

SELECT SUM(total_payment) AS PMTD_Total_Amount_Recieved FROM Bank_Loan_Data 
WHERE MONTH(issue_date) = 11 AND YEAR(issue_date) = 2021

SELECT ROUND(AVG(int_rate), 4) * 100 AS MTD_Avg_Interest_Rate FROM Bank_Loan_Data
WHERE MONTH(issue_date) = 12 AND YEAR(issue_date) = 2021

SELECT ROUND(AVG(int_rate), 4) * 100 AS PMTD_Avg_Interest_Rate FROM Bank_Loan_Data
WHERE MONTH(issue_date) = 11 AND YEAR(issue_date) = 2021

SELECT ROUND(AVG(dti), 4) * 100 AS MTD_Avg_DTI FROM Bank_Loan_Data
WHERE MONTH(issue_date) = 12 AND YEAR(issue_date) = 2021

SELECT ROUND(AVG(dti), 4) * 100 AS PMTD_Avg_DTI FROM Bank_Loan_Data
WHERE MONTH(issue_date) = 11 AND YEAR(issue_date) = 2021

SELECT loan_status FROM Bank_Loan_Data
 
SELECT 
     (COUNT(CASE WHEN loan_status = 'Fully Paid' OR loan_status = 'Current' THEN id END) * 100)
     /
     COUNT(id) AS Good_loan_percentage
FROM Bank_Loan_Data

SELECT COUNT(id) AS Good_Loan_Applications FROM Bank_Loan_Data
WHERE loan_status = 'Fully Paid' OR loan_status = 'Current'

SELECT SUM(loan_amount) AS Good_Loan_Funded_Amount FROM Bank_Loan_Data
WHERE loan_status = 'Fully Paid' OR loan_status = 'Current'

SELECT SUM(total_payment) AS Good_Loan_Received_Amount FROM Bank_Loan_Data
WHERE loan_status = 'Fully Paid' OR loan_status = 'Current'


SELECT
     (COUNT(CASE WHEN loan_status = 'Charged Off' THEN id END) * 100.0) /
     COUNT(id) AS Bad_Loan_Percentage
FROM Bank_Loan_Data

SELECT COUNT(id) AS Bad_Loan_Applications FROM Bank_Loan_Data
WHERE loan_status = 'Charged Off'

SELECT SUM(loan_amount) AS Bad_Loan_Funded_Amount FROM Bank_Loan_Data
WHERE loan_status = 'Charged Off'

SELECT SUM(total_payment) AS Bad_Loan_Amount_Recieved FROM Bank_Loan_Data
WHERE loan_status = 'Charged Off'

SELECT 
     loan_status,
     COUNT(id) AS Total_Loan_Applications,
     SUM(total_payment) AS Total_Amount_Recieved,
     SUM(loan_amount) AS Total_Funded_Amount,
     AVG(int_rate * 100) AS Ineterst_Rate,
     AVG(dti * 100) AS DTI
FROM 
   Bank_Loan_Data
GROUP BY 
     loan_status

SELECT 
    loan_status,
    SUM(total_payment) AS MTD_Total_Amount_Recieved,
    SUM(loan_amount) AS MTD_Total_Funded_Amount
FROM Bank_Loan_Data
WHERE MONTH(issue_date) = 12
GROUP BY loan_status

SELECT
     MONTH(issue_date) AS Month_Number,
     DATENAME(MONTH, issue_date)  AS Month_Name,
     COUNT(id) AS Total_Loan_Applications,
     SUM(loan_amount) AS Total_Funded_Amount,
     SUM(total_payment) AS Total_Received_Amount
FROM Bank_Loan_Data
GROUP BY MONTH(issue_date), DATENAME(MONTH, issue_date)
ORDER BY MONTH(issue_date)

SELECT
     address_state,
     COUNT(id) AS Total_Loan_Applications,
     SUM(loan_amount) AS Total_Funded_Amount,
     SUM(total_payment) AS Total_Received_Amount
FROM Bank_Loan_Data
GROUP BY address_state
ORDER BY COUNT(id) DESC

SELECT
     term,
     COUNT(id) AS Total_Loan_Applications,
     SUM(loan_amount) AS Total_Funded_Amount,
     SUM(total_payment) AS Total_Received_Amount
FROM Bank_Loan_Data
GROUP BY term
ORDER BY term

SELECT
   emp_length,
     COUNT(id) AS Total_Loan_Applications,
     SUM(loan_amount) AS Total_Funded_Amount,
     SUM(total_payment) AS Total_Received_Amount
FROM Bank_Loan_Data
GROUP BY emp_length
ORDER BY COUNT(id) DESC

SELECT
   purpose,
     COUNT(id) AS Total_Loan_Applications,
     SUM(loan_amount) AS Total_Funded_Amount,
     SUM(total_payment) AS Total_Received_Amount
FROM Bank_Loan_Data
GROUP BY purpose
ORDER BY COUNT(id) DESC

SELECT
   home_ownership,
     COUNT(id) AS Total_Loan_Applications,
     SUM(loan_amount) AS Total_Funded_Amount,
     SUM(total_payment) AS Total_Received_Amount
FROM Bank_Loan_Data
GROUP BY home_ownership
ORDER BY COUNT(id) DESC

SELECT
   home_ownership,
     COUNT(id) AS Total_Loan_Applications,
     SUM(loan_amount) AS Total_Funded_Amount,
     SUM(total_payment) AS Total_Received_Amount
FROM Bank_Loan_Data
WHERE grade = 'A' AND address_state = 'CA'
GROUP BY home_ownership
ORDER BY COUNT(id) DESC
