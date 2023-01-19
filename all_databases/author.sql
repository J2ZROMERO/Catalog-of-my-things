CREATE TABLE author (
	id int generated always as identity  NOT NULL,
	first_name varchar NULL,
	last_name varchar NULL,
	items varchar NULL,
	CONSTRAINT newtable_pk PRIMARY KEY (id)
);
