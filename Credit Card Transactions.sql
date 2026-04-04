-- Total Spend
SELECT SUM(amount) AS Total_Spend FROM credit_card_transactions;

-- Total Transactions

SELECT 
	COUNT(Transaction_ID) AS Total_Transactions
FROM credit_card_transactions;

-- Average Spend per Transaction

SELECT 
	ROUND(AVG(amount),2) AS Avg_Spend 
FROM credit_card_transactions;

-- Transactions by Card Type

SELECT
	Card_Type,
	COUNT(Transaction_ID) AS Transactions
FROM credit_card_transactions
GROUP BY Card_Type
ORDER BY Transactions DESC;

-- Transactions by Exp Type

SELECT
	Exp_Type,
	COUNT(Transaction_ID) AS Transactions
FROM credit_card_transactions
GROUP BY Exp_Type
ORDER BY Transactions DESC;

-- Transactions by Gender

SELECT 
	Gender,
	COUNT(Transaction_ID) AS Transactions
FROM credit_card_transactions
GROUP BY Gender
ORDER BY Transactions DESC;

-- Total Spend by Card Type

SELECT
	Card_Type,
	SUM(amount) AS Total_Spend 
FROM credit_card_transactions
GROUP BY Card_Type
ORDER BY Total_Spend DESC;	

-- Total Spend by Exp Type

SELECT 
	Exp_Type,
    SUM(amount) AS Total_Spend 
FROM credit_card_transactions
GROUP BY Exp_Type
ORDER BY Total_Spend DESC;

-- Total Spend by Gender

SELECT
	Gender,
	SUM(amount) AS Total_Spend 
FROM credit_card_transactions
GROUP BY Gender
ORDER BY Total_Spend DESC;

-- Top 5 Cities by Total Spend

SELECT
	City,
	SUM(amount) AS Total_Spend 
FROM credit_card_transactions
GROUP BY City
ORDER BY Total_Spend DESC
LIMIT 5;

-- Top 5 Cities by Average Spend

SELECT
	City,
	ROUND(AVG(amount),2) AS Avg_Spend 
FROM credit_card_transactions
GROUP BY City
ORDER BY Avg_Spend DESC
LIMIT 5;

-- Card Type Preferred by Each Gender

SELECT gender, card_type, COUNT(Gender) AS Customers
FROM credit_card_transactions
GROUP BY gender, card_type
ORDER BY Customers DESC;

-- Total Spend by Gender per Exp Type

SELECT
	Gender,
    Exp_Type,
	SUM(amount) AS Total_Spend 
FROM credit_card_transactions
GROUP BY Gender, Exp_Type
ORDER BY Gender, Total_Spend DESC;

-- Top Spending City Per Exp Type

 WITH City_Exp AS (SELECT
	City,
    Exp_Type,
    SUM(amount) AS Total_Spend,
    RANK() OVER (PARTITION BY Exp_Type ORDER BY SUM(amount) DESC) AS rnk
FROM credit_card_transactions
GROUP BY city, Exp_Type)

SELECT 
	City, 
    Exp_Type, 
    Total_Spend
FROM City_Exp
WHERE rnk = 1;

-- Cites with above Average Spend

SELECT 
	City, 
    SUM(Amount) AS total_spend
FROM credit_card_transactions
GROUP BY City
HAVING SUM(amount) > (SELECT AVG(total) FROM 
                      (SELECT SUM(Amount) AS total 
                       FROM credit_card_transactions 
                       GROUP BY City) AS City_avg)
ORDER BY total_spend DESC;

-- Rank Cities by Total Spend

SELECT
	City,
	SUM(amount) AS Total_Spend,
	RANK() OVER (ORDER BY SUM(amount) DESC) AS City_Rank
FROM credit_card_transactions
GROUP BY City;

-- Monthly Spend Trend

SELECT
	YEAR(Transaction_Date) AS Year,
    MONTH(Transaction_Date) AS Month,
	SUM(amount) AS Total_Spend 
FROM credit_card_transactions
GROUP BY Year, Month
ORDER BY Year, Month;

-- Highest Spend Month

SELECT
	YEAR(Transaction_Date) AS Year,
    MONTH(Transaction_Date) AS Month,
	SUM(amount) AS Total_Spend 
FROM credit_card_transactions
GROUP BY Year, Month
ORDER BY Total_Spend DESC
LIMIT 1;

-- Running Total Spend by Month

SELECT
	YEAR(Transaction_Date) AS Year,
    MONTH(Transaction_Date) AS Month,
	SUM(amount) AS Monthly_Spend,
    SUM(SUM(amount)) OVER (ORDER BY YEAR(Transaction_Date), MONTH(Transaction_Date)) AS Running_Total
FROM credit_card_transactions
GROUP BY Year, Month;

-- Month over Month Growth %

WITH monthly AS (
    SELECT YEAR(transaction_date) AS Year,
           MONTH(transaction_date) AS Month,
           SUM(amount) AS total_spend
    FROM credit_card_transactions
    GROUP BY Year, Month
)
SELECT Year, Month, total_spend,
       LAG(total_spend) OVER (ORDER BY Year, Month) AS previous_month_spend,
       ROUND((total_spend - LAG(total_spend) OVER (ORDER BY Year, Month)) 
             / LAG(total_spend) OVER (ORDER BY Year, Month) * 100, 2) AS mom_growth
FROM monthly;