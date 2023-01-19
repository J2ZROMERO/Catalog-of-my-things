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

CREATE TABLE music_album (
    id INT GENERATED ALWAYS AS IDENTITY,
    title VARCHAR(250),
    Publish_date DATE,
    onSpotify BOOLEAN,
    genre_id INT,
    author_id INT,
    source_id INT,
    label_id INT,
    FOREIGN KEY(source_id) REFERENCES source(id),
    FOREIGN KEY(author_id) REFERENCES author(id),
    FOREIGN KEY(genre_id) REFERENCES genre(id),
    FOREIGN KEY(label_id) REFERENCES label(id)
);

CREATE TABLE genre (
    id INT GENERATED ALWAYS AS IDENTITY,
    name VARCHAR(250)
);

CREATE TABLE movie (
	id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
  published_date DATE NOT NULL,
  archived BOOLEAN,
  silent BOOLEAN,
	source_id INTEGER,
  author_id INTEGER,
  genre_id INTEGER,
  label_id INTEGER,
  FOREIGN KEY(source_id) REFERENCES source(id),
  FOREIGN KEY(author_id) REFERENCES author(id),
  FOREIGN KEY(genre_id) REFERENCES genre(id),
  FOREIGN KEY(label_id) REFERENCES label(id)
);

CREATE TABLE source (
  id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
  source_name VARCHAR(80)
);
