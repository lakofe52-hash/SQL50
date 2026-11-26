-- 1378. Replace Employee ID With The Unique Identifier
-- Runtime = 984 ms
-- Goal: Display the unique_id and name, and for those that dont have a unique_id, just display null

SELECT
    euni.unique_id, -- Selects the unique_id from the EmployeeUNI, KEEP IN MIND that we HAVE to write euni. so that SQL knows which table to take it from
    e.name -- Selects the name from the Employees table
FROM Employees e -- To select the table that is being used, and also write the abbreviation to shorten the writing
LEFT JOIN EmployeeUNI euni ON e.id = euni.id -- LEFT JOIN keeps the rows of the Employees table (displays the rows even if there is none of that value on the right table (EmployeeUNI), it displays null if there is none of that value)