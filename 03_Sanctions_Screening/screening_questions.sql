-- 1.  How many customers are on the sanctions list?
SELECT
	COUNT(name) AS customer_count
FROM sanctions_list;

-- 2.  List all unique reasons for sanctioning.
SELECT DISTINCT
	reason
FROM sanctions_list
ORDER BY reason;

-- 3.  Count the number of sanctioned customers for each reason.
SELECT
    reason,
    COUNT(name) AS number_of_customers
FROM sanctions_list
GROUP BY reason
ORDER BY reason;

-- 4.  Find the `CustomerID` and `Name` of all customers who are sanctioned for 'Money Laundering'.
SELECT
	c.customerid,
    c.name,
    s.reason
FROM customer_names c
JOIN sanctions_list s 
ON c.name = s.name
WHERE s.reason = 'Money Laundering';

-- 5.  Identify any customers who appear on the sanctions list more than once, and list their `Name` and the count of their appearances.
SELECT 
	customerid,
    name,
	count(customerid) AS customer_count
FROM sanctions_list
GROUP BY name, customerid
HAVING count(customerid) > 1
ORDER BY customer_count DESC;