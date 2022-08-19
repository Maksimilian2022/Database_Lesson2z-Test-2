CREATE TABLE IF NOT EXISTS Genres (
	genre_id int primary key,
	genre_name Varchar(64) not null
	);

CREATE TABLE IF NOT EXISTS Exutor (
	exutor_id int PRIMARY key,
	exutor_name varchar(128) not null
	);

CREATE TABLE IF NOT EXISTS Exutor_genres (
	genre_id int REFERENCES Genres(genre_id),
	exutor_id int REFERENCES Exutor(exutor_id),
	primary key(genre_id, exutor_id)
	);

CREATE TABLE IF NOT EXISTS Albums (
	Album_id int primary key,
	Title VARCHAR(80),
	year_title int
	);

CREATE TABLE IF NOT EXISTS Album_Exutor (
	Album_id int REFERENCES Albums(Album_id),
	exutor_id int REFERENCES Exutor(exutor_id),
	CONSTRAINT pk PRIMARY KEY (Album_id, exutor_id)
	);

CREATE TABLE IF NOT EXISTS Songs (
	Song_id int PRIMARY KEY,
	Song_name VARCHAR(60),
	title varchar(80),
	Duration int
	);

CREATE TABLE IF NOT EXISTS Albums_songs (
	Album_id int REFERENCES Albums(Album_id),
	Song_id int references Songs(Song_id),
	primary key(Album_id, Song_id)
	);


CREATE TABLE IF NOT EXISTS Collection (
	Collection_id int PRIMARY key,
	Collection_name varchar(80) not null,
	year_collection int not null,
	name_collection varchar(80) not null
	);

CREATE TABLE IF NOT EXISTS Collection_song (
	Collection_id int references Collection(Collection_id),
	Song_id int references Songs(Song_id),
	primary key(Collection_id, Song_id)
	);

