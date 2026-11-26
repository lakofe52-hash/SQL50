-- 1068. Product Sales Analysis I
-- Runtime = 1133 ms
-- Goal: Display the product_name, year, and price for each sale_id in the Sales table

SELECT 
    p.product_name, -- To display the product_name from Product table
    s.year, -- To display the year from Sales table
    s.price -- To display the price from Sales table
FROM Sales s -- To select the Sales table and also give it an abbrievation for ease of typing
INNER JOIN Product p ON s.product_id = p.product_id -- To join the Sales and Product Tables by using product_id (foreign for sales table and primary key for the product table)