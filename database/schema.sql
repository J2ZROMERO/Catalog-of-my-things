CREATE TABLE book (
	id int  generated always as identity NOT NULL,
	publisher varchar,
	cover_state int,
	publish_date date,
	archived boolean,
	author_id int,
	label_id int,
	source_id int,
	genre_id int
	CONSTRAINT book_pk PRIMARY KEY (id),
	CONSTRAINT book_fk FOREIGN KEY (label_id) REFERENCES label(id) ON DELETE SET NULL ON UPDATE CASCADE,
	CONSTRAINT book_fk_1 FOREIGN KEY (author_id) REFERENCES author(id) ON DELETE SET NULL ON UPDATE CASCADE
	CONSTRAINT book_fk_2 FOREIGN KEY (source_id) REFERENCES author(id) ON DELETE SET NULL ON UPDATE CASCADE
	CONSTRAINT book_fk_3 FOREIGN KEY (genre_id) REFERENCES author(id) ON DELETE SET NULL ON UPDATE CASCADE

);

CREATE TABLE label (
	id int  generated always as identity NOT NULL,
	title varchar,
	color varchar,
	CONSTRAINT label_pk PRIMARY KEY (id)
);
