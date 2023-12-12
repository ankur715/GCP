SELECT * FROM test7151991.Customer_Transactions.Customer_Transactions LIMIT 10;

SELECT Department, Category, SKU, COUNT(SKU) AS SKU_Count, AVG(Price) AS Avg_Price
FROM test7151991.Customer_Transactions.Customer_Transactions
GROUP BY Department, Category, SKU
ORDER BY Avg_Price DESC;

SELECT COUNT(Transaction_ID) AS Transactions_w_Discounts
FROM test7151991.Customer_Transactions.Customer_Transactions
WHERE Discount IS NOT NULL;

SELECT EXTRACT(YEAR FROM DATE(Date)) AS Year, 
  COUNT(Transaction_ID) AS Total_Transactions,
  ROUND(SUM(Price),0) AS Total_Prices
FROM test7151991.Customer_Transactions.Customer_Transactions
GROUP BY Year;
