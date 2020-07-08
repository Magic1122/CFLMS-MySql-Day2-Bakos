INSERT INTO branch VALUES(4, 'Buffalo', NULL, NULL);

SELECT * FROM branch;

-- Find all branches and the names of their managers
SELECT employee.emp_id, employee.first_name, employee.last_name, branch.branch_name
FROM employee
JOIN branch
ON employee.emp_id = branch.mgr_id;

-- LEFT JOIN, we include all rows from the left table
SELECT employee.emp_id, employee.first_name, employee.last_name, branch.branch_name
FROM employee
LEFT JOIN branch
ON employee.emp_id = branch.mgr_id;

-- RIGHT JOIN, we include all rows from the right table
SELECT employee.emp_id, employee.first_name, employee.last_name, branch.branch_name
FROM employee
RIGHT JOIN branch
ON employee.emp_id = branch.mgr_id;

-- FULL OUTER JOIN LEFT JOIN RIGHT JOIN COMBINED, NOT AVAILABLE IN MYSQL
