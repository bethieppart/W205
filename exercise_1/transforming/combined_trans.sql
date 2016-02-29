DROP TABLE combined_trans; 
CREATE TABLE combined_trans AS SELECT provider_id, measure_id, score FROM effective_trans
UNION ALL
SELECT provider_id, measure_id, score from readmissions_trans;
