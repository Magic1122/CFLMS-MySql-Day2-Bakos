-- Imagine that we want to delete Michael Scott from the database
-- What is hapenning to the manager id which links us to the employee table from branch table?
-- There are two thing what we can do
-- ON DELETE SET NULL - the manager ID will be set to NULL
-- ON DELETE CASCADE - if we delete the employee it will delete all the rows where the id was linked

-- CREATE TABLE branch (
--  branch_id INT PRIMARY KEY,
--  branch_name VARCHAR(40),
--  mgr_id INT,
--  mgr_start_date DATE,
--  FOREIGN KEY(mgr_id) REFERENCES employee(emp_id) ON DELETE SET NULL
-- );

-- We created our table like up above (NULL)

DELETE FROM employee
WHERE emp_id = 102;

SELECT * FROM branch;
-- manager id of branch 2 is NULL now

SELECT * FROM employee;
-- all super_id which was 102 is set to NULL as well

-- CREATE TABLE branch_supplier (
--  branch_id INT,
--  supplier_name VARCHAR(40),
--  supply_type VARCHAR(40),
--  PRIMARY KEY(branch_id, supplier_name),
--  FOREIGN KEY(branch_id) REFERENCES branch(branch_id) ON DELETE CASCADE
-- );

-- We created our table like up above (CASCADE)

DELETE FROM branch
WHERE branch_id = 2;

SELECT * FROM branch_supplier;
-- It deletes all rows where our branch_id appears
-- In the branc_supplier the branch_id was used as a primary key
-- which can not be NULL

