BEGIN TRANSACTION;

DROP TABLE IF EXISTS user_genre, movie_genre, user_movies, genre, movies, users;


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
CREATE TABLE user_genre (
	user_id INT,
	genre_id INT,
	CONSTRAINT PK_user_genre PRIMARY KEY (user_id, genre_id),
	CONSTRAINT FK_user_genre_user FOREIGN KEY (user_id) REFERENCES users(user_id),
	CONSTRAINT FK_user_genre_genre FOREIGN KEY (genre_id) REFERENCES genre(genre_id)
);

CREATE TABLE user_movies (
	user_id INT,
	movie_id INT,
	favorite BOOLEAN DEFAULT false,
	watchlist BOOLEAN DEFAULT false,
	CONSTRAINT PK_user_user_movies PRIMARY KEY (user_id, movie_id),
	CONSTRAINT FK_user_movies_user FOREIGN KEY (user_id) REFERENCES users(user_id),
	CONSTRAINT FK_user_movies_movie FOREIGN KEY (movie_id) REFERENCES movies(id)
);



COMMIT TRANSACTION;
