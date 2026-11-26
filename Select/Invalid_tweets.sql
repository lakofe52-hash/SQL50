-- 1683. Invalid Tweets
-- Runtime = 631 ms
-- Goal: Display the tweets that are invalid (Number of characters > 15)

SELECT tweet_id -- To display tweet_id
FROM Tweets -- To select the Tweets table that we are pulling and using the data from
WHERE LENGTH(content) > 15 -- The LENGTH is to return the length of the string