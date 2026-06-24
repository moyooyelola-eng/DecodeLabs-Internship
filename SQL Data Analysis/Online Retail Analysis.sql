USE SalesDB

-- DATA PREPARATION
SELECT * FROM [Dataset For Data Analytics ( Decodelabs)];


-- SALES INFORMATION
SELECT OrderID, CustomerID, Product, TotalPrice
FROM [Dataset For Data Analytics ( Decodelabs)];


-- HIGH VALUE ORDERS
SELECT *
FROM [Dataset For Data Analytics ( Decodelabs)]
WHERE TotalPrice > 3000;


-- ORDERS BY STATUS AND PAYMENT METHOD
SELECT *
FROM [Dataset For Data Analytics ( Decodelabs)]
WHERE OrderStatus = 'Shipped'
AND PaymentMethod = 'Debit Card';


-- MOST VALUABLE TRANSACTIONS 
SELECT OrderID, Product, TotalPrice
FROM [Dataset For Data Analytics ( Decodelabs)]
ORDER BY TotalPrice DESC;


-- TOTAL NUMBER OF ORDERS
SELECT COUNT(*) AS TotalOrders
FROM [Dataset For Data Analytics ( Decodelabs)];



-- TOTAL REVENUE GENERATED
SELECT SUM(TotalPrice) AS TotalRevenue
FROM [Dataset For Data Analytics ( Decodelabs)];


-- AVERAGE AMOUNT SPENT PER ORDER
SELECT AVG(TotalPrice) AS AverageOrderValue
FROM [Dataset For Data Analytics ( Decodelabs)];


-- FREQUENTLY USED PAYMENT METHOD
SELECT PaymentMethod,
COUNT(*) AS NumberOfOrders
FROM [Dataset For Data Analytics ( Decodelabs)]
GROUP BY PaymentMethod ; 


-- PRODUCT THAT GENERATES THE HIGHEST REVENUE 
SELECT Product,
SUM(TotalPrice) AS TotalRevenue
FROM [Dataset For Data Analytics ( Decodelabs)]
GROUP BY Product
ORDER BY TotalRevenue DESC;


-- BEST SELLING PRODUCT
SELECT Product,
SUM(Quantity) AS TotalUnitsSold
FROM [Dataset For Data Analytics ( Decodelabs)]
GROUP BY Product
ORDER BY TotalUnitsSold DESC;


-- ORDER STATUS BY TOTAL ORDERS 
SELECT OrderStatus,
COUNT(*) AS TotalOrders
FROM [Dataset For Data Analytics ( Decodelabs)]
GROUP BY OrderStatus;


-- PAYMENT METHOD BY HIGHER VALUE PURCHASES
SELECT PaymentMethod,
AVG(TotalPrice) AS AverageRevenue
FROM [Dataset For Data Analytics ( Decodelabs)]
GROUP BY PaymentMethod
ORDER BY AverageRevenue DESC;


-- TOP 5 SPENDING CUSTOMERS AND ORDERS
SELECT TOP 5
OrderID,
CustomerID,
Product,
TotalPrice
FROM [Dataset For Data Analytics ( Decodelabs)]
ORDER BY TotalPrice DESC;