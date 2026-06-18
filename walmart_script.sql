-- Data
SELECT *
FROM Walmart_clean
LIMIT 10;

-- count rows
SELECT COUNT(*) AS total_rows
FROM Walmart_clean;

--Total sales
SELECT
ROUND(SUM(Weekly_Sales),2) AS total_sales
FROM Walmart_clean;

--Sales by store
SELECT
    Store,
    ROUND(SUM(Weekly_Sales),2) AS total_sales
FROM Walmart_clean
GROUP BY Store
ORDER BY total_sales DESC;

--Top 10 stores
SELECT
    Store,
    ROUND(SUM(Weekly_Sales),2) AS total_sales
FROM Walmart_clean
GROUP BY Store
ORDER BY total_sales DESC
LIMIT 10;

--Holiday vs Non-Holidays sales
SELECT
    Holiday_Flag,
    ROUND(SUM(Weekly_Sales),2) AS total_sales
FROM Walmart_clean
GROUP BY Holiday_Flag;

-- Average Weekly Sales by store
SELECT
    Store,
    ROUND(AVG(Weekly_Sales),2) AS avg_sales
FROM Walmart_clean
GROUP BY Store
ORDER BY avg_sales DESC;


--Top 10 Highest Weekly sales
SELECT
    Store,
    Date,
    Weekly_Sales
FROM Walmart_clean
ORDER BY Weekly_Sales DESC
LIMIT 10;


--Holiday vs Non-Holiday Average Sales
SELECT
    Holiday_Flag,
    ROUND(AVG(Weekly_Sales),2) AS avg_sales
FROM Walmart_clean
GROUP BY Holiday_Flag;

--Fuel Price Statistics
SELECT
ROUND(AVG(Fuel_Price),2),
ROUND(MIN(Fuel_Price),2),
ROUND(MAX(Fuel_Price),2)
FROM Walmart_clean;


--Temperature Statistics
SELECT
ROUND(AVG(Temperature),2),
ROUND(MIN(Temperature),2),
ROUND(MAX(Temperature),2)
FROM Walmart_clean;


-- Monthly Sales Trend
SELECT
strftime('%m', Date) AS month,
ROUND(SUM(Weekly_Sales),2) AS total_sales
FROM Walmart_clean
GROUP BY month
ORDER BY month;
