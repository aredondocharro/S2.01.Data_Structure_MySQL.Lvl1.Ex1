-- List the total sales for a customer in a given period
SELECT c.name AS cliente, COUNT(s.id) AS total_factures
FROM sale s
JOIN customer c ON s.customer_id = c.id
WHERE s.sale_date BETWEEN '2024-03-01' AND '2024-03-31'
  AND c.name = 'Ana Torres' 
GROUP BY c.name;

-- List the different models of glasses that an employee has sold during a year
SELECT DISTINCT g.brand, g.frame_type, g.frame_color
FROM sale s
JOIN employee e ON s.employee_id = e.id
JOIN glasses g ON s.glasses_id = g.id
WHERE YEAR(s.sale_date) = 2024
  AND e.name = 'María Sánchez';


-- List the different suppliers who have supplied glasses that have been successfully sold
SELECT DISTINCT su.name AS proveïdor
FROM sale s
JOIN glasses g ON s.glasses_id = g.id
JOIN supplier su ON g.supplier_id = su.id;