-- % = any characters, _ = one character

-- Find any clients who are an LLC
SELECT *
FROM client
WHERE client.client_name LIKE '%LLC%';

-- Find any branch suppliers who are in the label business
SELECT *
FROM branch_supplier
WHERE branch_supplier.supplier_name LIKE '%label%';

-- Find any employee born in October
SELECT * 
FROM employee 
WHERE employee.birth_day LIKE '____-10-__';

-- Find any clients who are schools
SELECT *
FROM client
WHERE client_name LIKE '%school%';

