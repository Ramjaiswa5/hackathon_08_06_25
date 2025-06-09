use haackathon_080625;

SELECT City, SUM(Amount) AS Total_Sales FROM sales 
JOIN customer ON sales.CustomerID = customer.CustomerID
GROUP BY City;

SELECT CustomerName, SUM(Amount) AS TotalSales
FROM sales s
JOIN customer c ON s.CustomerID = c.CustomerID
GROUP BY CustomerName ORDER BY TotalSales DESC LIMIT 3;

SELECT MONTHNAME(STR_TO_DATE(SaleDate, '%Y-%m-%d')) AS MonthName, SUM(Amount) AS MonthlySales
FROM sales 
GROUP BY MONTH(STR_TO_DATE(SaleDate, '%Y-%m-%d')), MonthName
ORDER BY MONTH(STR_TO_DATE(SaleDate, '%Y-%m-%d'));

SELECT c.CustomerID, c.CustomerName
FROM customer c LEFT JOIN sales s ON c.CustomerID = s.CustomerID
WHERE SaleID IS NULL;

SELECT City, Round(AVG(Age)) AS AverageAge
FROM customer GROUP BY City;







