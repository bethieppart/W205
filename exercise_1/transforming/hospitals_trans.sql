DROP TABLE hospitals_trans;
CREATE TABLE hospitals_trans AS SELECT provider_id, name, state FROM hospitals;
