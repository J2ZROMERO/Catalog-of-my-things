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

CREATE TABLE AUTHOR (
  ID INT, 
  first_name VARCHAR(100),
  last_name VARCHAR(100),
  PRIMARY KEY(ID)
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

CREATE TABLE GAME(
  author_ID INT NOT NULL, 
  multiplayer BOOLEAN NOT NULL,
  last_played_at NOT NULL,
  publish_date DATE,
  archived BOOLEAN,
  author_ID INT,
  label_ID INT,
  genre_ID INT,
  source_ID INT,
CONSTRAINT game_label FOREIGN KEY(label_ID ) REFERENCES label(id),
CONSTRAINT game_auth FOREIGN KEY (author_ID) REFERENCES AUTHOR(ID),
CONSTRAINT game_genre FOREIGN KEY (genre_ID) REFERENCES genre(ID),
CONSTRAINT game_source FOREIGN KEY (source_ID) REFERENCES source(ID),
PRIMARY KEY(ID)
);