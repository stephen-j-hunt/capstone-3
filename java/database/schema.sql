BEGIN TRANSACTION;

DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS movies;

CREATE TABLE users (
	user_id SERIAL,
	username varchar(50) NOT NULL UNIQUE,
	password_hash varchar(200) NOT NULL,
	role varchar(50) NOT NULL,
	CONSTRAINT PK_user PRIMARY KEY (user_id)
);

create table movies (
	movie_id INT,
	title VARCHAR(50),
	release_date DATE,
	genre VARCHAR(50),
	poster VARCHAR(50)
);

COMMIT TRANSACTION;
