--View first 10 records

SELECT *
FROM online_retail
LIMIT 10;

--Total transactions

SELECT COUNT(*) AS total_transactions
FROM online_retail;

--Unique customers

SELECT COUNT(DISTINCT CustomerID) AS unique_customers
FROM online_retail;

--Total Revenue

SELECT ROUND(SUM(Quantity * UnitPrice),2) AS total_revenue
FROM online_retail;

--Top Selling Products

SELECT
    Description,
    SUM(Quantity) AS Total_Quantity
FROM online_retail
GROUP BY Description
ORDER BY Total_Quantity DESC
LIMIT 10;

--Highest Spending Customers

SELECT
    CustomerID,
    ROUND(SUM(Quantity * UnitPrice),2) AS Total_Spent
FROM online_retail
WHERE CustomerID IS NOT NULL
GROUP BY CustomerID
ORDER BY Total_Spent DESC
LIMIT 10;

--Sales by Country

SELECT
    Country,
    ROUND(SUM(Quantity * UnitPrice),2) AS Revenue
FROM online_retail
GROUP BY Country
ORDER BY Revenue DESC;

--Average Order Value

SELECT
ROUND(AVG(Quantity * UnitPrice),2) AS Average_Order_Value
FROM online_retail;

--Most Expensive Products

SELECT
Description,
MAX(UnitPrice) AS Highest_Price
FROM online_retail
GROUP BY Description
ORDER BY Highest_Price DESC
LIMIT 10;

--Products Sold More Than 1000 Units

SELECT
Description,
SUM(Quantity) AS Total_Quantity
FROM online_retail
GROUP BY Description
HAVING SUM(Quantity) > 1000
ORDER BY Total_Quantity DESC;

--Monthly Sales

SELECT
strftime('%Y-%m', InvoiceDate) AS Month,
ROUND(SUM(Quantity * UnitPrice),2) AS Monthly_Revenue
FROM online_retail
GROUP BY Month
ORDER BY Month;

--Average Product Price

SELECT
ROUND(AVG(UnitPrice),2) AS Average_Product_Price
FROM online_retail;

--Orders Per Country

SELECT
Country,
COUNT(DISTINCT InvoiceNo) AS Orders
FROM online_retail
GROUP BY Country
ORDER BY Orders DESC;

--Frequent Customers

SELECT
CustomerID,
COUNT(DISTINCT InvoiceNo) AS Total_Orders
FROM online_retail
WHERE CustomerID IS NOT NULL
GROUP BY CustomerID
HAVING COUNT(DISTINCT InvoiceNo) > 50
ORDER BY Total_Orders DESC;

--Revenue by Product

SELECT
Description,
ROUND(SUM(Quantity * UnitPrice),2) AS Revenue
FROM online_retail
GROUP BY Description
ORDER BY Revenue DESC
LIMIT 10;