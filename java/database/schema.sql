BEGIN TRANSACTION;

DROP TABLE IF EXISTS movie_genre, genre, movies, users;


CREATE TABLE users (
	user_id SERIAL,
	username varchar(50) NOT NULL UNIQUE,
	password_hash varchar(200) NOT NULL,
	role varchar(50) NOT NULL,
	CONSTRAINT PK_user PRIMARY KEY (user_id)
);

create table movies (
  	id INT PRIMARY KEY,
  	title VARCHAR(50),
  	release_date DATE,
  	poster VARCHAR(50),
  	overview TEXT
  );

create table genre (
    genre_id INT PRIMARY KEY,
    genre_name VARCHAR(100)
);
--
create table movie_genre (
    movie_id INT,
    genre_id INT,
    	CONSTRAINT PK_movie_genre PRIMARY KEY(movie_id, genre_id),
        CONSTRAINT FK_movie_genre_movie FOREIGN KEY(movie_id) REFERENCES movies(id),
        CONSTRAINT FK_movie_genre_genre FOREIGN KEY(genre_id) REFERENCES genre(genre_id)
);
--



COMMIT TRANSACTION;
