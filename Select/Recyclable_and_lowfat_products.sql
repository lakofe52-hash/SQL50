-- 1757. Recyclable and Low Fat Products
-- Runtime = 530 ms
-- Goal: Find the product_id 's that is low fats (Y) and recycable (Y)

SELECT product_id -- This is to select what we want to show in our output
FROM Products -- This is to select which table in the database we want to use,
WHERE low_fats = 'Y' AND recyclable = 'Y' -- This is the condition / filter to find the products that are low fats (represented by Y) and recycable (also represented by Y) 
-- Note that we can also use LIKE or IN instead of =
-- 2nd Note, for low_fats and recyclable, for the Y, it is completely up to the user to do either ('Y') or 'Y', they dont change the result