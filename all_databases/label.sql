CREATE TABLE label (
	id int  generated always as identity NOT NULL,
	title varchar NULL,
	color varchar NULL,
	items varchar NULL,
	CONSTRAINT label_pk PRIMARY KEY (id)
);

