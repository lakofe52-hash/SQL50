-- 595. Big Countries
-- Runtime = 307 ms
-- Goal: Display countries that are considered 'big', with the conditions of area >= 3 million km^2, or has a population >= 25 million

SELECT -- To determine what to display in the output
    name, -- Selects the name to be displayed
    population, -- Selects the population to be displayed
    area -- Selects the area to be displayed
FROM World -- To determine which Table we are pulling and using the data from
WHERE area >= 3000000 OR population >= 25000000 -- To set the condition for the 'big' countries (either 3 million km^2 OR 25 million people)