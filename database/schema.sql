CREATE TABLE AUTHOR (ID INT, first_name VARCHAR(100),
last_name VARCHAR(100),
PRIMARY KEY(ID)
);

CREATE GAME(author_ID INT NOT NULL, multiplayer BOOLEAN NOT NULL,
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
