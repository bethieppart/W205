DROP TABLE surveys_trans;
CREATE TABLE surveys_trans AS SELECT provider_id, hcahps_base_score, hcahps_cons_score FROM surveys;
