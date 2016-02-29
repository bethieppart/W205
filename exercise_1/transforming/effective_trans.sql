DROP TABLE effective_trans;
CREATE TABLE effective_trans AS SELECT provider_id, measure_id, score FROM effective;
