CREATE TABLE book (
	id int  generated always as identity NOT NULL,
	publisher varchar NULL,
	cover_state varchar NULL,
	publish_date varchar NULL,
	archived boolean NULL,
	fk_author int NULL,
	fk_label int NULL,
	CONSTRAINT book_pk PRIMARY KEY (id),
	CONSTRAINT book_fk FOREIGN KEY (fk_label) REFERENCES public."label"(id) ON DELETE SET NULL ON UPDATE CASCADE,
	CONSTRAINT book_fk_1 FOREIGN KEY (fk_author) REFERENCES public.author(id) ON DELETE SET NULL ON UPDATE CASCADE
);

CREATE TABLE label (
	id int  generated always as identity NOT NULL,
	title varchar NULL,
	color varchar NULL,
	items varchar NULL,
	CONSTRAINT label_pk PRIMARY KEY (id)
);


CREATE TABLE author (
	id int generated always as identity  NOT NULL,
	first_name varchar NULL,
	last_name varchar NULL,
	items varchar NULL,
	CONSTRAINT newtable_pk PRIMARY KEY (id)
);

