SELECT W2.Id
FROM Weather W1
JOIN Weather W2
ON DATEDIFF(W2.recordDate, W1.recordDate) = 1 -- FOR SQLSERVER provide the day as well, datediff(day, w2.recorddate, w1.recordDate)
WHERE W2.Temperature > W1.Temperature;
