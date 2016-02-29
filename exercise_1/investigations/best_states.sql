SELECT h.state, AVG(e.score) as average, 
VARIANCE(e.score) as variance 
FROM effective_trans e 
JOIN hospitals_trans h 
ON e.provider_id = h.provider_id 
GROUP BY h.state 
ORDER BY average DESC 
LIMIT 10; 
