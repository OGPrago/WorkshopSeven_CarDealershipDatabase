# CarDealershipDatabase

## Table of Contents

- [Interesting Query/Discovery](#interesting-quearydiscovry)

## Interesting Query/Discovery
I learned about the ```UNION``` operator and how it is used to combine the result sets of two or more ```SELECT``` statements into a single result set.
```
SELECT s.sales_id, s.VIN, s.sales_date, d.dealership_id, d.name AS dealership_name, v.make, v.model, v.color
FROM sales_contracts AS s
JOIN vehicles v ON s.VIN = v.VIN
JOIN inventory i ON v.VIN = i.VIN
JOIN dealerships d ON i.dealership_id = d.dealership_id
WHERE d.dealership_id = 2
AND s.sales_date BETWEEN '2024-06-01' AND '2024-06-10'
UNION
SELECT l.lease_id, l.VIN, l.lease_date, d.dealership_id, d.name AS dealership_name, v.make, v.model, v.color
FROM lease_contracts l
JOIN vehicles v ON l.VIN = v.VIN
JOIN inventory i ON v.VIN = i.VIN
JOIN dealerships d ON i.dealership_id = d.dealership_id
WHERE d.dealership_id = 1
AND l.lease_date BETWEEN '2024-06-01' AND '2024-06-10';
```
For this query I used ```UNION``` to combine the results of the sales_contracts and lease_contracts tables into one. 