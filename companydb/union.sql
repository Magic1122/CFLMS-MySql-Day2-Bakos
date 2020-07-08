-- We can combine multiple SELECT statements in one
-- They must have same amount of columns and must be the same data types

-- Find a list of employee and branch names
SELECT employee.first_name FROM employee
UNION
SELECT branch.branch_name FROM branch;

-- Find a list of employee and branch and client names
SELECT employee.first_name AS Company_Names FROM employee
UNION
SELECT branch.branch_name FROM branch
UNION
SELECT client.client_name FROM client;

-- Find a list of all clients & branch suppliers name
SELECT client.client_name AS Clients_Branch_Supplier_Names, client.branch_id 
FROM client
UNION
SELECT branch_supplier.supplier_name, branch_supplier.branch_id FROM branch_supplier;

-- Find a list of all money spent or earned by the company
SELECT salary AS Money_Flow FROM employee
UNION
SELECT total_sales FROM works_with;
