-- Question 1
-- Show total payment amount for each payment date, sorted by date (desc), top 5 only
SELECT 
    paymentDate, 
    SUM(amount) AS totalAmount
FROM 
    payments
GROUP BY 
    paymentDate
ORDER BY 
    paymentDate DESC
LIMIT 5;

-- Question 2
-- Find average credit limit of each customer, grouped by name and country
SELECT 
    customerName, 
    country, 
    AVG(creditLimit) AS averageCreditLimit
FROM 
    customers
GROUP BY 
    customerName, country;

-- Question 3
-- Calculate total price for each product from orderdetails
-- total price = quantityOrdered * priceEach
SELECT 
    productCode, 
    quantityOrdered, 
    (quantityOrdered * priceEach) AS totalPrice
FROM 
    orderdetails
GROUP BY 
    productCode, quantityOrdered;

-- Question 4
-- Find the highest payment amount for each check number
SELECT 
    checkNumber, 
    MAX(amount) AS highestAmount
FROM 
    payments
GROUP BY 
    checkNumber;
