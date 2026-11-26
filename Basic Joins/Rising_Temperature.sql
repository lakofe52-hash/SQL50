-- 197. Rising Temperature
-- Runtime = 438 ms
-- Goal: Find all id's where the temperature of current id's recordDate is higher than the previous recordDate or yesterday

SELECT w.id -- To display the id, NOTE: the abbrievation can change from w to we depending on the JOIN ... ON condition!
FROM Weather w -- First calling of the Weather table
INNER JOIN Weather we -- Second calling of the Weather table, this is whats calledca self-join. In short, it calls itself twice
    ON DATEDIFF(w.recordDate, we.recordDate) = 1
    -- Notes for this ^ line
    -- DATEDIFF(date1, date2) returns the DIFFERENCE, it will return a positive number if date1 comes AFTER date2. It will return a negative if date1 comes BEFORE date2. Lastly, it will return 0 if the two dates are identical
    -- So for this case, since we want to compare TODAY to YESTERDAY, we force it to return a 1, since it goes day-by-day
    -- Now as mentioned in the first line, the date that is put in date1, it will become the later date of the two since we are forcing = 1
    -- It works vice versa, the only things that change is the SELECT line and the WHERE condition, it depends on which date is in date1 slot, so if we have w as date1, we write SELECT w.id, and vice versa SELECT we.id
WHERE w.temperature > we.temperature -- This is the condition to make sure that todays temperature is higher than yesterday, the abbrievation changes just like the SELECT