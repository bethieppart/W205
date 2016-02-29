DROP TABLE regression_table; 
CREATE TABLE regression_table AS SELECT h.name, e.provider_id, AVG(e.score) as average,
VARIANCE(e.score) as variance,
AVG(s.hcahps_base_score)
FROM combined_trans e
JOIN hospitals_trans h
ON e.provider_id = h.provider_id
JOIN surveys_trans s
ON h.provider_id = s.provider_id
GROUP BY h.name;
