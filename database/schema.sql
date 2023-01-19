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
