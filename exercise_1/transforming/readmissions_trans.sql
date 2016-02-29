DROP TABLE readmissions_trans;
CREATE TABLE readmissions_trans AS SELECT provider_id, measure_id, comp_to_national, score FROM readmissions;
