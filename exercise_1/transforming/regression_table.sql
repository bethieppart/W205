DROP TABLE regression_table; 
2 CREATE TABLE regression_table AS SELECT e.provider_id, e.measure_id, AVG(e.score) as average,
VARIANCE(e.score) as variance,
AVG(s.hcahps_base_score)
FROM combined_trans e
JOIN hospital_trans h
ON e.provider_id = h.provider_id
JOIN surveys_trans s
ON e.provider_id = s.provider_id
GROUP BY h.name;
