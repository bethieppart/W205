SELECT p.name, AVG(e.score) AS ave_score,
VARIANCE(e.score) AS variability
FROM combined_trans e
JOIN hospitals_trans p
ON p.provider_id = e.provider_id
GROUP BY p.name
ORDER BY ave_score DESC
LIMIT 10;
