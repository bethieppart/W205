SELECT m.measure_name, 
VARIANCE(s.score) as variance 
FROM combined_trans s
JOIN measures_trans m
ON m.measures_id = s.measure_id
GROUP BY m.measure_name 
ORDER BY variance DESC 
LIMIT 10; 
