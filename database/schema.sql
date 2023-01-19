
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
