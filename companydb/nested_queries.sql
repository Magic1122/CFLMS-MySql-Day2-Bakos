-- Find names of all employees who have
-- sold over 30000 to a single client
SELECT employee.emp_id, employee.first_name, employee.last_name, works_with.client_id, works_with.total_sales
FROM employee
JOIN works_with
ON employee.emp_id = works_with.emp_id
WHERE works_with.total_sales > 30000;

-- Find names of all employees who have
-- sold over 30000 to a single client
SELECT employee.first_name, employee.last_name
FROM employee
WHERE employee.emp_id IN (
    SELECT works_with.emp_id
    FROM works_with
    WHERE works_with.total_sales > 30000);

-- Find all clients who are handled by the branch
-- that Michael Scott manages
-- Assume you know Michael's ID
SELECT client.client_name
FROM client
WHERE client.branch_id = (      -- u can use IN as well
    SELECT branch.branch_id
    FROM branch
    WHERE branch.mgr_id = 102
    LIMIT 1
);

-- Best way is to break the queries down to small parts

