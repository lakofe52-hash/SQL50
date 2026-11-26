-- 1581. Customer Who Visited but Did Not Make Any Transactions
-- Runtime = 
-- Goal: Display the users who visited but didn't make any transactions (count_no_trans = 0)

SELECT
    v.customer_id, -- To select the customer_id from Visits table
    COUNT(*) AS count_no_trans -- To count the number of visits and name it as count_no_trans
FROM Visits v -- To select the Visits table and give it a simple abbreviation
LEFT JOIN Transactions t ON v.visit_id = t.visit_id -- To join the visits and transactions table throught their visit_id
WHERE t.visit_id IS NULL -- This is the part where we filter and remove the visit_id's in visits table that are also in transactions table, so that we are left with only the customers who don't have amount (null or didn't make any transactions)
GROUP BY customer_id -- Grouped by the customer_id