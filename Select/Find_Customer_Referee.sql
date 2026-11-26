-- 584. Find Customer Referee
-- Runtime: 450 ms
-- Goal: Find the names of the customers that is not (!=) referred by a customer id of 2 OR is not referred at all by any customer (null)

SELECT name -- To display the name of the customers
FROM Customer -- To select the table we are going to be using for this query
WHERE referee_id != 2 OR referee_id IS NULL -- We use the WHERE condition of != 2 because we dont want to be referred to by any id that is equal to 2 and the second condition uses IS NULL instead of (= , LIKE, or IN) because (=, LIKE, or IN) needs data, but because there are some referee_id that is NULL(absence of data), we are unable to use them. While IS NULL directly checks if there is no data or is null