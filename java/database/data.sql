BEGIN TRANSACTION;

INSERT INTO users (username,password_hash,role) VALUES ('user','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_USER');
INSERT INTO users (username,password_hash,role) VALUES ('admin','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_ADMIN');




--GENRE DATA
insert into genre (genre_id, genre_name) values (1, 'Action');
insert into genre (genre_id, genre_name) values (2, 'Adventure');
insert into genre (genre_id, genre_name) values (3, 'Animation');
insert into genre (genre_id, genre_name) values (4, 'Biography');
insert into genre (genre_id, genre_name) values (5, 'Comedy');
insert into genre (genre_id, genre_name) values (6, 'Crime');
insert into genre (genre_id, genre_name) values (7, 'Documentary');
insert into genre (genre_id, genre_name) values (8, 'Drama');
insert into genre (genre_id, genre_name) values (9, 'Family');
insert into genre (genre_id, genre_name) values (10, 'Fantasy');
insert into genre (genre_id, genre_name) values (11, 'Film-Noir');
insert into genre (genre_id, genre_name) values (12, 'Game-Show');
insert into genre (genre_id, genre_name) values (13, 'History');
insert into genre (genre_id, genre_name) values (14, 'Horror');
insert into genre (genre_id, genre_name) values (15, 'Music');
insert into genre (genre_id, genre_name) values (16, 'Musical');
insert into genre (genre_id, genre_name) values (17, 'Mystery');
insert into genre (genre_id, genre_name) values (18, 'News');
insert into genre (genre_id, genre_name) values (19, 'Reality-TV');
insert into genre (genre_id, genre_name) values (20, 'Romance');
insert into genre (genre_id, genre_name) values (21, 'Sci-Fi');
insert into genre (genre_id, genre_name) values (22, 'Short');
insert into genre (genre_id, genre_name) values (23, 'Sport');
insert into genre (genre_id, genre_name) values (24, 'Talk-Show');
insert into genre (genre_id, genre_name) values (25, 'Thriller');
insert into genre (genre_id, genre_name) values (26, 'War');
insert into genre (genre_id, genre_name) values (27, 'Western');


insert into movies (id, title, release_date, poster, overview) values (0, 'The Elephant Whisperers', '12/8/2022', 'https://m.media-amazon.com/images/M/MV5BYWQ4ZjE5YjEtN2JkNC00NGExLTkzNDYtMDQ1YTcyZjU1NzY4XkEyXkFqcGdeQXVyMTUyNjc4OTIx._V1_.jpg', 'The Elephant Whisperers` follows an indigenous couple as they fall in love with Raghu, an orphaned elephant given into their care, and tirelessly work to ensure his survival. The film highlights the beauty of the wild spaces in South India and the people and animals who share this space.');
insert into movie_genre(movie_id, genre_id) values (0, 7);
insert into movie_genre(movie_id, genre_id) values (0, 22);

insert into movies (id, title, release_date, poster, overview) values (1, 'Vlihi', '5/6/2022', 'https://m.media-amazon.com/images/M/MV5BNjFhMjdjNDAtMjRjNC00OWMwLWE1ZTMtYzk2MWRjZGQyMTYwXkEyXkFqcGdeQXVyNzg5OTk2OA@@._V1_.jpg', 'Silent short film, set on the Greek Cycladic island of Tenos. A woman in black is mourning inside a simple house. Reality blends with dreamy imagination, and tradition with insidious desires.');
insert into movie_genre(movie_id, genre_id) values (1, 22);
insert into movie_genre(movie_id, genre_id) values (1, 8);

insert into movies (id, title, release_date, poster, overview) values (2, 'House Comes with a Bird', '3/24/2022', 'https://m.media-amazon.com/images/M/MV5BMTU3ZjU5MjgtOWQzYy00ZTcxLWFmNGUtZGU2MjI1OGQxN2NkXkEyXkFqcGdeQXVyODg3MDkwNjY@._V1_.jpg', 'In a striking modernist villa, Penn puts on her heels, puts on her sunglasses, and leaves instructions for Jean to take care of the house. Jean plays the cello and receives potential buyers for the villa, while a parrot sits in a cage and a turtle wanders around the backyard.');
insert into movie_genre(movie_id, genre_id) values (2, 22);

insert into movies (id, title, release_date, poster, overview) values (3, 'Prada Paradoxe', '8/22/2022', 'https://m.media-amazon.com/images/M/MV5BNGY2NmM5ZDEtMmZhZS00YjE0LTg5MDMtYzg2ZGQyOTZlMmE0XkEyXkFqcGdeQXVyMTMzMjExODYw._V1_.jpg', 'Never The Same, Always Myself');
insert into movie_genre(movie_id, genre_id) values (3, 22);

insert into movies (id, title, release_date, poster, overview) values (4, 'Avengers: Quantum Encounter', '6/30/2022', 'https://m.media-amazon.com/images/M/MV5BOTRlM2QwYjAtMjg1Yy00MmYwLTk3OTItMjBmMTM4YzI4M2VmXkEyXkFqcGdeQXVyMTA4Mzg1NzM5._V1_.jpg', 'While Ant-Man and The Wasp demo their Quantum Core, an unexpected villain shows up, eager to get their hands on the powerful tech. The heroes need all the help they can get to save the day.');
insert into movie_genre(movie_id, genre_id) values (4, 22);
insert into movie_genre(movie_id, genre_id) values (4, 1);
insert into movie_genre(movie_id, genre_id) values (4, 5);
insert into movie_genre(movie_id, genre_id) values (4, 9);
insert into movie_genre(movie_id, genre_id) values (4, 21);

insert into movies (id, title, release_date, poster, overview) values (5, 'My Year of Dicks', '3/13/2022', 'https://m.media-amazon.com/images/M/MV5BNTdiMzYzYjEtZjYxZS00OWQ0LWEzODktYjBjOGYyODI2NjAxXkEyXkFqcGdeQXVyMzc0Njg0NzM@._V1_.jpg', 'Pam tries very hard to lose her virginity and always searches for "the one". She`s not alone, her best friends are with her.');
insert into movie_genre(movie_id, genre_id) values (5, 3);
insert into movie_genre(movie_id, genre_id) values (5, 22);
insert into movie_genre(movie_id, genre_id) values (5, 5);
insert into movie_genre(movie_id, genre_id) values (5, 20);

insert into movies (id, title, release_date, poster, overview) values (6, 'Back to the Future: Outatime', '12/9/2022', '', 'Great Scott - Biff`s at it again. He`s stolen Doc Brown`s newest time travel device to sabotage the timeline for his gain. Follow Doc`s clues to find the prototype, track down Biff and save the day before you`re outatime.');
insert into movie_genre(movie_id, genre_id) values (6, 22);
insert into movie_genre(movie_id, genre_id) values (6, 2);

insert into movies (id, title, release_date, poster, overview) values (7, 'Requiem', '5/27/2021', 'https://m.media-amazon.com/images/M/MV5BODJhNDk2MDgtNGIzZS00Y2ZjLWFlNTktZmJlOWM0YWVjNWU1XkEyXkFqcGdeQXVyNDI3NDMzNzg@._V1_.jpg', 'Requiem is set in 1605, against the backdrop of the witch trials. It`s a coming of age story, following Evelyn as she engages in a game of cat and mouse against her father, Minister Gilbert, in order to be with Mary, the woman she loves.');
insert into movie_genre(movie_id, genre_id) values (7, 22);
insert into movie_genre(movie_id, genre_id) values (7, 14);

insert into movies (id, title, release_date, poster, overview) values (8, 'All Too Well: The Short Film', '11/12/2021', 'https://m.media-amazon.com/images/M/MV5BZmJjY2MyMTctZWYxMy00YzliLWIzN2UtODFmOGVmNTE1YzUwXkEyXkFqcGdeQXVyOTcxNTc5NTQ@._V1_.jpg', 'A young man and woman who fall in love, but slowly drift apart in time. Based on Taylor Swift`s song `All Too Well`.');
insert into movie_genre(movie_id, genre_id) values (8, 22);
insert into movie_genre(movie_id, genre_id) values (8, 6);
insert into movie_genre(movie_id, genre_id) values (8, 8);
insert into movie_genre(movie_id, genre_id) values (8, 15);
insert into movie_genre(movie_id, genre_id) values (8, 20);

insert into movies (id, title, release_date, poster, overview) values (9, 'Ted Lasso: The Missing Christmas Mustache', '12/15/2021', 'https://m.media-amazon.com/images/M/MV5BODAzNTUwYjktOGMwOS00YjdhLWJmMDEtM2E3NmQyYzhkMmNmXkEyXkFqcGdeQXVyMTA5NzUzODM4._V1_.jpg', 'Follows the ensemble cast of Ted Lasso as they help Ted search for a lost item, but end up understanding the real meaning of the holiday season.');
insert into movie_genre(movie_id, genre_id) values (9, 3);
insert into movie_genre(movie_id, genre_id) values (9, 22);
insert into movie_genre(movie_id, genre_id) values (9, 5);

insert into movies (id, title, release_date, poster, overview) values (10, 'Puss in Boots: The Last Wish', '12/21/2022', 'https://m.media-amazon.com/images/M/MV5BNjMyMDBjMGUtNDUzZi00N2MwLTg1MjItZTk2MDE1OTZmNTYxXkEyXkFqcGdeQXVyMTQ5NjA0NDM0._V1_.jpg', 'Puss in Boots discovers that his passion for adventure has taken its toll: he has burned through eight of his nine lives. Puss sets out on an epic journey to find the mythical Last Wish and restore his nine lives.');
insert into movie_genre(movie_id, genre_id) values (10, 3);
insert into movie_genre(movie_id, genre_id) values (10, 2);
insert into movie_genre(movie_id, genre_id) values (10, 5);
insert into movie_genre(movie_id, genre_id) values (10, 9);
insert into movie_genre(movie_id, genre_id) values (10, 10);
insert into movie_genre(movie_id, genre_id) values (10, 17);
insert into movie_genre(movie_id, genre_id) values (10, 20);

insert into movies (id, title, release_date, poster, overview) values (11, 'The Bad Guys', '4/22/2022', 'https://m.media-amazon.com/images/M/MV5BMDhkYmU0MzctMWEzNy00ODg1LWI3ZjAtMGZlZjkzNWVmMzVjXkEyXkFqcGdeQXVyMTM1MTE1NDMx._V1_.jpg', 'To avoid prison, a gang of notorious animal criminals pretend to seek being rehabilitated, only for their leader to secretly find that he genuinely wants to change his ways.');
insert into movie_genre(movie_id, genre_id) values (11, 3);
insert into movie_genre(movie_id, genre_id) values (11, 2);
insert into movie_genre(movie_id, genre_id) values (11, 5);
insert into movie_genre(movie_id, genre_id) values (11, 6);
insert into movie_genre(movie_id, genre_id) values (11, 9);

insert into movies (id, title, release_date, poster, overview) values (12, 'Turning Red', '3/11/2022', 'https://m.media-amazon.com/images/M/MV5BMDI3NjBmYjUtZmY1My00MDBjLWE2ODctMzcyYWU5ZDE4ZWE2XkEyXkFqcGdeQXVyOTg3NjI1MTg@._V1_.jpg', 'A 13-year-old girl named Meilin turns into a giant red panda whenever she gets too excited.');
insert into movie_genre(movie_id, genre_id) values (12, 3);
insert into movie_genre(movie_id, genre_id) values (12, 2);
insert into movie_genre(movie_id, genre_id) values (12, 5);
insert into movie_genre(movie_id, genre_id) values (12, 9);
insert into movie_genre(movie_id, genre_id) values (12, 10);

insert into movies (id, title, release_date, poster, overview) values (13, 'Strange World', '11/23/2022', 'https://m.media-amazon.com/images/M/MV5BZTk1NzQwMWQtNzVmNS00MDc4LWE1MTktMmQyYzExYWMwZDQ4XkEyXkFqcGdeQXVyODc0OTEyNDU@._V1_.jpg', 'The legendary Clades are a family of explorers whose differences threaten to topple their latest and most crucial mission.');
insert into movie_genre(movie_id, genre_id) values (13, 3);
insert into movie_genre(movie_id, genre_id) values (13, 1);
insert into movie_genre(movie_id, genre_id) values (13, 2);
insert into movie_genre(movie_id, genre_id) values (13, 5);
insert into movie_genre(movie_id, genre_id) values (13, 9);
insert into movie_genre(movie_id, genre_id) values (13, 10);
insert into movie_genre(movie_id, genre_id) values (13, 21);

insert into movies (id, title, release_date, poster, overview) values (14, 'DC League of Super-Pets', '7/29/2022', 'https://m.media-amazon.com/images/M/MV5BZTIyNzc3NzMtNGE5YS00Yjg5LTk5MDMtOTUxMzk1ZTBkOTgwXkEyXkFqcGdeQXVyODE5NzE3OTE@._V1_.jpg', 'Krypto the Super-Dog and Superman are inseparable best friends, sharing the same superpowers and fighting crime side by side in Metropolis. However, Krypto must master his own powers for a rescue mission when Superman is kidnapped.');
insert into movie_genre(movie_id, genre_id) values (14, 3);
insert into movie_genre(movie_id, genre_id) values (14, 1);
insert into movie_genre(movie_id, genre_id) values (14, 2);
insert into movie_genre(movie_id, genre_id) values (14, 5);
insert into movie_genre(movie_id, genre_id) values (14, 6);
insert into movie_genre(movie_id, genre_id) values (14, 9);
insert into movie_genre(movie_id, genre_id) values (14, 10);
insert into movie_genre(movie_id, genre_id) values (14, 21);

insert into movies (id, title, release_date, poster, overview) values (15, 'Luck', '8/5/2022', 'https://m.media-amazon.com/images/M/MV5BNzhlNTAyY2YtNWUyYi00YmE3LWE2OTctZDI2MmJkNmZiMmY0XkEyXkFqcGdeQXVyMTUzMTg2ODkz._V1_.jpg', 'The curtain is pulled back on the millennia-old battle between the organizations of good luck and bad luck that secretly affects everyday lives.');
insert into movie_genre(movie_id, genre_id) values (15, 3);
insert into movie_genre(movie_id, genre_id) values (15, 2);
insert into movie_genre(movie_id, genre_id) values (15, 5);
insert into movie_genre(movie_id, genre_id) values (15, 9);
insert into movie_genre(movie_id, genre_id) values (15, 10);

insert into movies (id, title, release_date, poster, overview) values (16, 'Das Seeungeheuer', '7/8/2022', 'https://m.media-amazon.com/images/M/MV5BY2FiNWM0NjgtMTAzMS00NDk5LWI0ODUtMWQ3YzJhYzRmOTBjXkEyXkFqcGdeQXVyMTQyMTMwOTk0._V1_.jpg', 'When a young girl stows away on the ship of a legendary sea monster hunter, they launch an epic journey into uncharted waters - and make history to boot.');
insert into movie_genre(movie_id, genre_id) values (16, 3);
insert into movie_genre(movie_id, genre_id) values (16, 2);
insert into movie_genre(movie_id, genre_id) values (16, 5);
insert into movie_genre(movie_id, genre_id) values (16, 9);
insert into movie_genre(movie_id, genre_id) values (16, 10);

insert into movies (id, title, release_date, poster, overview) values (17, 'Maurice le chat fabuleux', '2/1/2023', 'https://m.media-amazon.com/images/M/MV5BYWQ4NjQ1NjAtNTc3Yy00ZDVlLThlNmUtMzZjY2E3N2Y4Y2JmXkEyXkFqcGdeQXVyMjMwODE4ODI@._V1_.jpg', 'This story follows Maurice, a goofy streetwise cat, who has the perfect money-making scam. He finds a dumb-looking kid who plays a pipe and has his very own horde of rats, who are strangely literate.');
insert into movie_genre(movie_id, genre_id) values (17, 3);
insert into movie_genre(movie_id, genre_id) values (17, 2);
insert into movie_genre(movie_id, genre_id) values (17, 5);
insert into movie_genre(movie_id, genre_id) values (17, 9);

insert into movies (id, title, release_date, poster, overview) values (18, 'Hotel Transylvania: Transformania', '1/14/2022', 'https://m.media-amazon.com/images/M/MV5BZTllZDBmMzctMjgzOC00ZTkwLThlMjktMTU0OTljNjUwNGMzXkEyXkFqcGdeQXVyNjY1MTg4Mzc@._V1_.jpg', 'After one experiment, Johnny turns into a monster and everyone else becomes human. Now it has to be seen whether they will be able to reverse this experiment.');
insert into movie_genre(movie_id, genre_id) values (18, 3);
insert into movie_genre(movie_id, genre_id) values (18, 2);
insert into movie_genre(movie_id, genre_id) values (18, 5);
insert into movie_genre(movie_id, genre_id) values (18, 9);
insert into movie_genre(movie_id, genre_id) values (18, 10);
insert into movie_genre(movie_id, genre_id) values (18, 14);

insert into movies (id, title, release_date, poster, overview) values (19, 'Lightyear', '6/15/2022', 'https://m.media-amazon.com/images/M/MV5BYjhmNjczZTAtNGVhNy00ODliLTllYTctOTA5MDc5NWNlOWEwXkEyXkFqcGdeQXVyNDI3NjU1NzQ@._V1_.jpg', 'While spending years attempting to return home, marooned Space Ranger Buzz Lightyear encounters an army of ruthless robots commanded by Zurg who are attempting to steal his fuel source.');
insert into movie_genre(movie_id, genre_id) values (19, 3);
insert into movie_genre(movie_id, genre_id) values (19, 1);
insert into movie_genre(movie_id, genre_id) values (19, 2);
insert into movie_genre(movie_id, genre_id) values (19, 8);
insert into movie_genre(movie_id, genre_id) values (19, 9);
insert into movie_genre(movie_id, genre_id) values (19, 21);

insert into movies (id, title, release_date, poster, overview) values (20, 'Puss in Boots: The Last Wish', '12/21/2022', 'https://m.media-amazon.com/images/M/MV5BNjMyMDBjMGUtNDUzZi00N2MwLTg1MjItZTk2MDE1OTZmNTYxXkEyXkFqcGdeQXVyMTQ5NjA0NDM0._V1_.jpg', 'Puss in Boots discovers that his passion for adventure has taken its toll: he has burned through eight of his nine lives. Puss sets out on an epic journey to find the mythical Last Wish and restore his nine lives.');
insert into movie_genre(movie_id, genre_id) values (20, 3);
insert into movie_genre(movie_id, genre_id) values (20, 2);
insert into movie_genre(movie_id, genre_id) values (20, 5);
insert into movie_genre(movie_id, genre_id) values (20, 9);
insert into movie_genre(movie_id, genre_id) values (20, 10);
insert into movie_genre(movie_id, genre_id) values (20, 17);
insert into movie_genre(movie_id, genre_id) values (20, 20);

insert into movies (id, title, release_date, poster, overview) values (21, 'Roald Dahl`s Matilda the Musical', '12/25/2022', 'https://m.media-amazon.com/images/M/MV5BZDQyMDEwOTMtYzQ4Ny00NGVmLWI5NWYtMTQ3ODE2MGNlN2Y4XkEyXkFqcGdeQXVyMTA1OTcyNDQ4._V1_.jpg', 'An adaptation of the Tony and Olivier award-winning musical. Matilda tells the story of an extraordinary girl who, armed with a sharp mind and a vivid imagination, dares to take a stand to change her story with miraculous results.');
insert into movie_genre(movie_id, genre_id) values (21, 5);
insert into movie_genre(movie_id, genre_id) values (21, 8);
insert into movie_genre(movie_id, genre_id) values (21, 9);
insert into movie_genre(movie_id, genre_id) values (21, 10);
insert into movie_genre(movie_id, genre_id) values (21, 16);

insert into movies (id, title, release_date, poster, overview) values (22, 'Sonic the Hedgehog 2', '4/8/2022', 'https://m.media-amazon.com/images/M/MV5BODRlNTY5ZjktZjE0Ni00YjZhLTk3NTItYzk0ZjYxN2QxMWEzXkEyXkFqcGdeQXVyMjMwNDgzNjc@._V1_.jpg', 'When the manic Dr Robotnik returns to Earth with a new ally, Knuckles the Echidna, Sonic and his new friend Tails is all that stands in their way.');
insert into movie_genre(movie_id, genre_id) values (22, 1);
insert into movie_genre(movie_id, genre_id) values (22, 2);
insert into movie_genre(movie_id, genre_id) values (22, 5);
insert into movie_genre(movie_id, genre_id) values (22, 9);
insert into movie_genre(movie_id, genre_id) values (22, 10);
insert into movie_genre(movie_id, genre_id) values (22, 21);

insert into movies (id, title, release_date, poster, overview) values (23, 'The Bad Guys', '4/22/2022', 'https://m.media-amazon.com/images/M/MV5BMDhkYmU0MzctMWEzNy00ODg1LWI3ZjAtMGZlZjkzNWVmMzVjXkEyXkFqcGdeQXVyMTM1MTE1NDMx._V1_.jpg', 'To avoid prison, a gang of notorious animal criminals pretend to seek being rehabilitated, only for their leader to secretly find that he genuinely wants to change his ways.');
insert into movie_genre(movie_id, genre_id) values (23, 3);
insert into movie_genre(movie_id, genre_id) values (23, 2);
insert into movie_genre(movie_id, genre_id) values (23, 5);
insert into movie_genre(movie_id, genre_id) values (23, 6);
insert into movie_genre(movie_id, genre_id) values (23, 9);

insert into movies (id, title, release_date, poster, overview) values (24, 'Turning Red', '3/11/2022', 'https://m.media-amazon.com/images/M/MV5BMDI3NjBmYjUtZmY1My00MDBjLWE2ODctMzcyYWU5ZDE4ZWE2XkEyXkFqcGdeQXVyOTg3NjI1MTg@._V1_.jpg', 'A 13-year-old girl named Meilin turns into a giant red panda whenever she gets too excited.');
insert into movie_genre(movie_id, genre_id) values (24, 3);
insert into movie_genre(movie_id, genre_id) values (24, 2);
insert into movie_genre(movie_id, genre_id) values (24, 5);
insert into movie_genre(movie_id, genre_id) values (24, 9);
insert into movie_genre(movie_id, genre_id) values (24, 10);

insert into movies (id, title, release_date, poster, overview) values (25, 'Strange World', '11/23/2022', 'https://m.media-amazon.com/images/M/MV5BZTk1NzQwMWQtNzVmNS00MDc4LWE1MTktMmQyYzExYWMwZDQ4XkEyXkFqcGdeQXVyODc0OTEyNDU@._V1_.jpg', 'The legendary Clades are a family of explorers whose differences threaten to topple their latest and most crucial mission.');
insert into movie_genre(movie_id, genre_id) values (25, 3);
insert into movie_genre(movie_id, genre_id) values (25, 1);
insert into movie_genre(movie_id, genre_id) values (25, 2);
insert into movie_genre(movie_id, genre_id) values (25, 5);
insert into movie_genre(movie_id, genre_id) values (25, 9);
insert into movie_genre(movie_id, genre_id) values (25, 10);
insert into movie_genre(movie_id, genre_id) values (25, 21);

insert into movies (id, title, release_date, poster, overview) values (26, 'DC League of Super-Pets', '7/29/2022', 'https://m.media-amazon.com/images/M/MV5BZTIyNzc3NzMtNGE5YS00Yjg5LTk5MDMtOTUxMzk1ZTBkOTgwXkEyXkFqcGdeQXVyODE5NzE3OTE@._V1_.jpg', 'Krypto the Super-Dog and Superman are inseparable best friends, sharing the same superpowers and fighting crime side by side in Metropolis. However, Krypto must master his own powers for a rescue mission when Superman is kidnapped.');
insert into movie_genre(movie_id, genre_id) values (26, 3);
insert into movie_genre(movie_id, genre_id) values (26, 1);
insert into movie_genre(movie_id, genre_id) values (26, 2);
insert into movie_genre(movie_id, genre_id) values (26, 5);
insert into movies (id, title, release_date, poster, overview) values (30, 'M3gan', '1/4/2023', 'https://m.media-amazon.com/images/M/MV5BOGYzYjI5Y2YtNTRkOC00YjdhLWI5MGYtMGU2ZDZlMmEyNGMyXkEyXkFqcGdeQXVyMTA3MDk2NDg2._V1_.jpg', 'A robotics engineer at a toy company builds a life-like doll that begins to take on a life of its own.');
insert into movie_genre(movie_id, genre_id) values (26, 6);
insert into movie_genre(movie_id, genre_id) values (26, 9);
insert into movie_genre(movie_id, genre_id) values (30, 14);
insert into movie_genre(movie_id, genre_id) values (26, 10);
insert into movie_genre(movie_id, genre_id) values (30, 21);
insert into movie_genre(movie_id, genre_id) values (26, 21);
insert into movie_genre(movie_id, genre_id) values (30, 25);


insert into movies (id, title, release_date, poster, overview) values (27, 'Luck', '8/5/2022', 'https://m.media-amazon.com/images/M/MV5BNzhlNTAyY2YtNWUyYi00YmE3LWE2OTctZDI2MmJkNmZiMmY0XkEyXkFqcGdeQXVyMTUzMTg2ODkz._V1_.jpg', 'The curtain is pulled back on the millennia-old battle between the organizations of good luck and bad luck that secretly affects everyday lives.');
insert into movies (id, title, release_date, poster, overview) values (31, 'Nope', '8/18/2022', 'https://m.media-amazon.com/images/M/MV5BMGIyNTI3NWItNTJkOS00MGYyLWE4NjgtZDhjMWQ4Y2JkZTU5XkEyXkFqcGdeQXVyNjY1MTg4Mzc@._V1_.jpg', 'The residents of a lonely gulch in inland California bear witness to an uncanny and chilling discovery.');
insert into movie_genre(movie_id, genre_id) values (27, 3);
insert into movie_genre(movie_id, genre_id) values (31, 14);
insert into movie_genre(movie_id, genre_id) values (27, 2);
insert into movie_genre(movie_id, genre_id) values (31, 17);
insert into movie_genre(movie_id, genre_id) values (27, 5);
insert into movie_genre(movie_id, genre_id) values (31, 21);
insert into movie_genre(movie_id, genre_id) values (27, 9);
insert into movie_genre(movie_id, genre_id) values (31, 25);
insert into movie_genre(movie_id, genre_id) values (27, 10);


insert into movies (id, title, release_date, poster, overview) values (32, 'Scream', '1/14/2022', 'https://m.media-amazon.com/images/M/MV5BYjExYTcwYmYtMWY2Zi00MGJlLTk3YjUtZTU1Zjg4MDc0Y2FjXkEyXkFqcGdeQXVyODE5NzE3OTE@._V1_.jpg', '25 years after a streak of brutal murders shocked the quiet town of Woodsboro, Calif., a new killer dons the Ghostface mask and begins targeting a group of teenagers to resurrect secrets from the town`s deadly past.');
insert into movies (id, title, release_date, poster, overview) values (28, 'Pinocchio', '9/8/2022', 'https://m.media-amazon.com/images/M/MV5BZDIyYjM3N2EtOTU1MC00YTA4LTgzNjctMTNjODcxZTZhODU2XkEyXkFqcGdeQXVyMTM1MTE1NDMx._V1_.jpg', 'A puppet is brought to life by a fairy, who assigns him to lead a virtuous life in order to become a real boy.');
insert into movie_genre(movie_id, genre_id) values (32, 14);
insert into movie_genre(movie_id, genre_id) values (28, 2);
insert into movie_genre(movie_id, genre_id) values (32, 17);
insert into movie_genre(movie_id, genre_id) values (28, 5);
insert into movie_genre(movie_id, genre_id) values (32, 25);
insert into movie_genre(movie_id, genre_id) values (28, 8);

insert into movie_genre(movie_id, genre_id) values (28, 9);
insert into movies (id, title, release_date, poster, overview) values (33, 'Prey', '8/5/2022', 'https://m.media-amazon.com/images/M/MV5BMDBlMDYxMDktOTUxMS00MjcxLWE2YjQtNjNhMjNmN2Y3ZDA1XkEyXkFqcGdeQXVyMTM1MTE1NDMx._V1_.jpg', 'Naru, a skilled warrior of the Comanche Nation, fights to protect her tribe against one of the first highly-evolved Predators to land on Earth.');
insert into movie_genre(movie_id, genre_id) values (28, 10);
insert into movie_genre(movie_id, genre_id) values (33, 1);
insert into movie_genre(movie_id, genre_id) values (28, 16);
insert into movie_genre(movie_id, genre_id) values (33, 2);

insert into movie_genre(movie_id, genre_id) values (33, 8);
insert into movies (id, title, release_date, poster, overview) values (29, 'Das Seeungeheuer', '7/8/2022', 'https://m.media-amazon.com/images/M/MV5BY2FiNWM0NjgtMTAzMS00NDk5LWI0ODUtMWQ3YzJhYzRmOTBjXkEyXkFqcGdeQXVyMTQyMTMwOTk0._V1_.jpg', 'When a young girl stows away on the ship of a legendary sea monster hunter, they launch an epic journey into uncharted waters - and make history to boot.');
insert into movie_genre(movie_id, genre_id) values (33, 14);
insert into movie_genre(movie_id, genre_id) values (29, 3);
insert into movie_genre(movie_id, genre_id) values (33, 21);
insert into movie_genre(movie_id, genre_id) values (29, 2);
insert into movie_genre(movie_id, genre_id) values (33, 25);
insert into movie_genre(movie_id, genre_id) values (29, 5);

insert into movie_genre(movie_id, genre_id) values (29, 9);
insert into movies (id, title, release_date, poster, overview) values (34, 'Watcher', '9/7/2022', 'https://m.media-amazon.com/images/M/MV5BMTNkNjU4OGYtODM3NS00NzM1LWFkZWItZTExNzdjYTAwMmRlXkEyXkFqcGdeQXVyMTE1MzI2NzIz._V1_.jpg', 'A young American woman moves with her husband to Bucharest, and begins to suspect that a stranger who watches her from the apartment building across the street may be a local serial killer decapitating women.');
insert into movie_genre(movie_id, genre_id) values (29, 10);
insert into movie_genre(movie_id, genre_id) values (34, 8);

insert into movie_genre(movie_id, genre_id) values (34, 14);
insert into movie_genre(movie_id, genre_id) values (34, 25);

insert into movies (id, title, release_date, poster, overview) values (35, 'Weißes Rauschen', '12/8/2022', 'https://m.media-amazon.com/images/M/MV5BN2Y3ZmMxNjktNzIwZi00OWFkLWIyMWQtODllMDMyNDhkM2FkXkEyXkFqcGdeQXVyMTA3MTI2ODc5._V1_.jpg', 'Dramatizes a contemporary American family`s attempts to deal with the mundane conflicts of everyday life while grappling with the universal mysteries of love, death, and the possibility of happiness in an uncertain world.');
insert into movie_genre(movie_id, genre_id) values (35, 5);
insert into movie_genre(movie_id, genre_id) values (35, 8);
insert into movie_genre(movie_id, genre_id) values (35, 14);
insert into movie_genre(movie_id, genre_id) values (35, 17);

insert into movies (id, title, release_date, poster, overview) values (36, 'Beast', '8/11/2022', 'https://m.media-amazon.com/images/M/MV5BYmM5MjI0NWYtYzc3OS00ODE4LTkzYTEtOGFhM2IyNWQ3NjhiXkEyXkFqcGdeQXVyMjMyMzI4MzY@._V1_.jpg', 'A father and his two teenage daughters find themselves hunted by a massive rogue lion intent on proving that the Savanna has but one apex predator.');
insert into movie_genre(movie_id, genre_id) values (36, 2);
insert into movie_genre(movie_id, genre_id) values (36, 8);
insert into movie_genre(movie_id, genre_id) values (36, 14);
insert into movie_genre(movie_id, genre_id) values (36, 25);

insert into movies (id, title, release_date, poster, overview) values (37, 'Morbius', '4/1/2022', 'https://m.media-amazon.com/images/M/MV5BNTA3N2Q0ZTAtODJjNy00MmQzLWJlMmItOGFmNDI0ODgxN2QwXkEyXkFqcGdeQXVyMTM0NTUzNDIy._V1_.jpg', 'Biochemist Michael Morbius tries to cure himself of a rare blood disease, but he inadvertently infects himself with a form of vampirism instead.');
insert into movie_genre(movie_id, genre_id) values (37, 1);
insert into movie_genre(movie_id, genre_id) values (37, 2);
insert into movie_genre(movie_id, genre_id) values (37, 14);
insert into movie_genre(movie_id, genre_id) values (37, 21);
insert into movie_genre(movie_id, genre_id) values (37, 25);

insert into movies (id, title, release_date, poster, overview) values (38, 'Skinamarink', '1/13/2023', 'https://m.media-amazon.com/images/M/MV5BOTJiMmZmNjgtNjM0ZC00MTA3LTkyODctMzQwOGM0OWZiMTk0XkEyXkFqcGdeQXVyMTU0NzUyMjEy._V1_.jpg', 'Two children wake up in the middle of the night to find their father is missing, and all the windows and doors in their home have vanished.');
insert into movie_genre(movie_id, genre_id) values (38, 14);

insert into movies (id, title, release_date, poster, overview) values (39, 'Day Shift', '8/12/2022', 'https://m.media-amazon.com/images/M/MV5BYWI2ZDRjYjEtOWJiOS00NWVjLWI1MjAtNWNiMzAwNGFmNjljXkEyXkFqcGdeQXVyODEwMTc2ODQ@._V1_.jpg', 'A hard-working, blue-collar dad just wants to provide a good life for his quick-witted 10-year-old daughter. His mundane San Fernando Valley pool cleaning job is a front for his real source of income: hunting and killing vampires.');
insert into movie_genre(movie_id, genre_id) values (39, 1);
insert into movie_genre(movie_id, genre_id) values (39, 5);
insert into movie_genre(movie_id, genre_id) values (39, 10);
insert into movie_genre(movie_id, genre_id) values (39, 14);
insert into movie_genre(movie_id, genre_id) values (39, 25);

insert into movies (id, title, release_date, poster, overview) values (40, 'Avatar - La via dell`acqua', '12/14/2022', 'https://m.media-amazon.com/images/M/MV5BYjhiNjBlODctY2ZiOC00YjVlLWFlNzAtNTVhNzM1YjI1NzMxXkEyXkFqcGdeQXVyMjQxNTE1MDA@._V1_.jpg', 'Jake Sully lives with his newfound family formed on the extrasolar moon Pandora. Once a familiar threat returns to finish what was previously started, Jake must work with Neytiri and the army of the Na`vi race to protect their home.');
insert into movie_genre(movie_id, genre_id) values (40, 1);
insert into movie_genre(movie_id, genre_id) values (40, 2);
insert into movie_genre(movie_id, genre_id) values (40, 10);
insert into movie_genre(movie_id, genre_id) values (40, 21);

insert into movies (id, title, release_date, poster, overview) values (41, 'Everything Everywhere All at Once', '5/19/2022', 'https://m.media-amazon.com/images/M/MV5BYTdiOTIyZTQtNmQ1OS00NjZlLWIyMTgtYzk5Y2M3ZDVmMDk1XkEyXkFqcGdeQXVyMTAzMDg4NzU0._V1_.jpg', 'An aging Chinese immigrant is swept up in an insane adventure, in which she alone can save the world by exploring other universes connecting with the lives she could have led.');
insert into movie_genre(movie_id, genre_id) values (41, 1);
insert into movie_genre(movie_id, genre_id) values (41, 2);
insert into movie_genre(movie_id, genre_id) values (41, 5);
insert into movie_genre(movie_id, genre_id) values (41, 10);
insert into movie_genre(movie_id, genre_id) values (41, 21);

insert into movies (id, title, release_date, poster, overview) values (42, 'Top Gun: Maverick', '5/27/2022', 'https://m.media-amazon.com/images/M/MV5BZWYzOGEwNTgtNWU3NS00ZTQ0LWJkODUtMmVhMjIwMjA1ZmQwXkEyXkFqcGdeQXVyMjkwOTAyMDU@._V1_.jpg', 'After thirty years, Maverick is still pushing the envelope as a top naval aviator, but must confront ghosts of his past when he leads TOP GUN`s elite graduates on a mission that demands the ultimate sacrifice from those chosen to fly it.');
insert into movie_genre(movie_id, genre_id) values (42, 1);
insert into movie_genre(movie_id, genre_id) values (42, 8);

insert into movies (id, title, release_date, poster, overview) values (43, 'Massive Talent', '6/16/2022', 'https://m.media-amazon.com/images/M/MV5BNDM2ODNiMWItOWRkNS00ODE3LWE2OGYtNTZkMDJkOWI1ODMxXkEyXkFqcGdeQXVyMjMxOTE0ODA@._V1_.jpg', 'In this action-packed comedy, Nicolas Cage plays Nick Cage, channeling his iconic characters as he`s caught between a superfan (Pedro Pascal) and a CIA agent (Tiffany Haddish).');
insert into movie_genre(movie_id, genre_id) values (43, 1);
insert into movie_genre(movie_id, genre_id) values (43, 5);
insert into movie_genre(movie_id, genre_id) values (43, 6);
insert into movie_genre(movie_id, genre_id) values (43, 25);

insert into movies (id, title, release_date, poster, overview) values (44, 'Bullet Train', '8/5/2022', 'https://m.media-amazon.com/images/M/MV5BMDU2ZmM2OTYtNzIxYy00NjM5LTliNGQtN2JmOWQzYTBmZWUzXkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_.jpg', 'Five assassins aboard a swiftly-moving bullet train find out that their missions have something in common.');
insert into movie_genre(movie_id, genre_id) values (44, 1);
insert into movie_genre(movie_id, genre_id) values (44, 5);
insert into movie_genre(movie_id, genre_id) values (44, 25);

insert into movies (id, title, release_date, poster, overview) values (45, 'Im Westen nichts Neues', '10/28/2022', 'https://m.media-amazon.com/images/M/MV5BMjllNTNjZWItNDZiNy00ZWIxLWFkYzktYzMzN2EyYzRiODA3XkEyXkFqcGdeQXVyNTM2NTg3Nzg@._V1_.jpg', 'A young German soldier`s terrifying experiences and distress on the western front during World War I.');
insert into movie_genre(movie_id, genre_id) values (45, 1);
insert into movie_genre(movie_id, genre_id) values (45, 8);
insert into movie_genre(movie_id, genre_id) values (45, 26);

insert into movies (id, title, release_date, poster, overview) values (46, 'The Batman', '3/4/2022', 'https://m.media-amazon.com/images/M/MV5BMDdmMTBiNTYtMDIzNi00NGVlLWIzMDYtZTk3MTQ3NGQxZGEwXkEyXkFqcGdeQXVyMzMwOTU5MDk@._V1_.jpg', 'When a sadistic serial killer begins murdering key political figures in Gotham, Batman is forced to investigate the city`s hidden corruption and question his family`s involvement.');
insert into movie_genre(movie_id, genre_id) values (46, 1);
insert into movie_genre(movie_id, genre_id) values (46, 6);
insert into movie_genre(movie_id, genre_id) values (46, 8);
insert into movie_genre(movie_id, genre_id) values (46, 25);

insert into movies (id, title, release_date, poster, overview) values (47, 'Black Panther: Wakanda Forever', '11/11/2022', 'https://m.media-amazon.com/images/M/MV5BNTM4NjIxNmEtYWE5NS00NDczLTkyNWQtYThhNmQyZGQzMjM0XkEyXkFqcGdeQXVyODk4OTc3MTY@._V1_.jpg', 'The people of Wakanda fight to protect their home from intervening world powers as they mourn the death of King T`Challa.');
insert into movie_genre(movie_id, genre_id) values (47, 1);
insert into movie_genre(movie_id, genre_id) values (47, 2);
insert into movie_genre(movie_id, genre_id) values (47, 8);
insert into movie_genre(movie_id, genre_id) values (47, 10);
insert into movie_genre(movie_id, genre_id) values (47, 21);
insert into movie_genre(movie_id, genre_id) values (47, 25);

insert into movies (id, title, release_date, poster, overview) values (48, 'Η γυναίκα βασιλιάς', '9/16/2022', 'https://m.media-amazon.com/images/M/MV5BY2I4MDIwYWUtOWMxNC00ZTIzLWE3OGYtOWUyMmIwZGE2NjU4XkEyXkFqcGdeQXVyMTUzMTg2ODkz._V1_.jpg', 'A historical epic inspired by true events that took place in The Kingdom of Dahomey, one of the most powerful states of Africa in the 18th and 19th centuries.');
insert into movie_genre(movie_id, genre_id) values (48, 1);
insert into movie_genre(movie_id, genre_id) values (48, 8);
insert into movie_genre(movie_id, genre_id) values (48, 13);

insert into movies (id, title, release_date, poster, overview) values (49, 'Uncharted', '2/16/2022', 'https://m.media-amazon.com/images/M/MV5BNDcyMDQxY2ItZGM5ZS00N2I0LThlZDctNDFmODlmNGUwYzZhXkEyXkFqcGdeQXVyNjA5ODQxMDI@._V1_.jpg', 'Street-smart Nathan Drake is recruited by seasoned treasure hunter Victor "Sully" Sullivan to recover a fortune amassed by Ferdinand Magellan, and lost 500 years ago by the House of Moncada.');
insert into movie_genre(movie_id, genre_id) values (49, 1);
insert into movie_genre(movie_id, genre_id) values (49, 2);

insert into movies (id, title, release_date, poster, overview) values (50, 'The Lost Weekend: A Love Story', '6/10/2022', 'https://m.media-amazon.com/images/M/MV5BYmJjNDA4NWUtZWQ0NS00NTYwLTk0YzktODNmNzIxYTVmYjZlXkEyXkFqcGdeQXVyMTUzNDkyNzE3._V1_.jpg', 'A love story that took 50 years to tell, "The Lost Weekend: A Love Story" explores the 18-month romantic relationship between John Lennon and his Chinese-American assistant May Pang,');

insert into movies (id, title, release_date, poster, overview) values (51, 'Biosphere', '9/10/2022', '', 'In the not-too-distant future, the last two men on earth must adapt and evolve to save humanity.');

insert into movies (id, title, release_date, poster, overview) values (52, 'Avatar - La via dell`acqua', '12/14/2022', 'https://m.media-amazon.com/images/M/MV5BYjhiNjBlODctY2ZiOC00YjVlLWFlNzAtNTVhNzM1YjI1NzMxXkEyXkFqcGdeQXVyMjQxNTE1MDA@._V1_.jpg', 'Jake Sully lives with his newfound family formed on the extrasolar moon Pandora. Once a familiar threat returns to finish what was previously started, Jake must work with Neytiri and the army of the Na`vi race to protect their home.');
insert into movie_genre(movie_id, genre_id) values (52, 1);
insert into movie_genre(movie_id, genre_id) values (52, 2);
insert into movie_genre(movie_id, genre_id) values (52, 10);
insert into movie_genre(movie_id, genre_id) values (52, 21);

insert into movies (id, title, release_date, poster, overview) values (53, 'Everything Everywhere All at Once', '5/19/2022', 'https://m.media-amazon.com/images/M/MV5BYTdiOTIyZTQtNmQ1OS00NjZlLWIyMTgtYzk5Y2M3ZDVmMDk1XkEyXkFqcGdeQXVyMTAzMDg4NzU0._V1_.jpg', 'An aging Chinese immigrant is swept up in an insane adventure, in which she alone can save the world by exploring other universes connecting with the lives she could have led.');
insert into movie_genre(movie_id, genre_id) values (53, 1);
insert into movie_genre(movie_id, genre_id) values (53, 2);
insert into movie_genre(movie_id, genre_id) values (53, 5);
insert into movie_genre(movie_id, genre_id) values (53, 10);
insert into movie_genre(movie_id, genre_id) values (53, 21);

insert into movies (id, title, release_date, poster, overview) values (54, 'Top Gun: Maverick', '5/27/2022', 'https://m.media-amazon.com/images/M/MV5BZWYzOGEwNTgtNWU3NS00ZTQ0LWJkODUtMmVhMjIwMjA1ZmQwXkEyXkFqcGdeQXVyMjkwOTAyMDU@._V1_.jpg', 'After thirty years, Maverick is still pushing the envelope as a top naval aviator, but must confront ghosts of his past when he leads TOP GUN`s elite graduates on a mission that demands the ultimate sacrifice from those chosen to fly it.');
insert into movie_genre(movie_id, genre_id) values (54, 1);
insert into movie_genre(movie_id, genre_id) values (54, 8);

insert into movies (id, title, release_date, poster, overview) values (55, 'Massive Talent', '6/16/2022', 'https://m.media-amazon.com/images/M/MV5BNDM2ODNiMWItOWRkNS00ODE3LWE2OGYtNTZkMDJkOWI1ODMxXkEyXkFqcGdeQXVyMjMxOTE0ODA@._V1_.jpg', 'In this action-packed comedy, Nicolas Cage plays Nick Cage, channeling his iconic characters as he`s caught between a superfan (Pedro Pascal) and a CIA agent (Tiffany Haddish).');
insert into movie_genre(movie_id, genre_id) values (55, 1);
insert into movie_genre(movie_id, genre_id) values (55, 5);
insert into movie_genre(movie_id, genre_id) values (55, 6);
insert into movie_genre(movie_id, genre_id) values (55, 25);

insert into movies (id, title, release_date, poster, overview) values (56, 'Bullet Train', '8/5/2022', 'https://m.media-amazon.com/images/M/MV5BMDU2ZmM2OTYtNzIxYy00NjM5LTliNGQtN2JmOWQzYTBmZWUzXkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_.jpg', 'Five assassins aboard a swiftly-moving bullet train find out that their missions have something in common.');
insert into movie_genre(movie_id, genre_id) values (56, 1);
insert into movie_genre(movie_id, genre_id) values (56, 5);
insert into movie_genre(movie_id, genre_id) values (56, 25);

insert into movies (id, title, release_date, poster, overview) values (57, 'Im Westen nichts Neues', '10/28/2022', 'https://m.media-amazon.com/images/M/MV5BMjllNTNjZWItNDZiNy00ZWIxLWFkYzktYzMzN2EyYzRiODA3XkEyXkFqcGdeQXVyNTM2NTg3Nzg@._V1_.jpg', 'A young German soldier`s terrifying experiences and distress on the western front during World War I.');
insert into movie_genre(movie_id, genre_id) values (57, 1);
insert into movie_genre(movie_id, genre_id) values (57, 8);
insert into movie_genre(movie_id, genre_id) values (57, 26);

insert into movies (id, title, release_date, poster, overview) values (58, 'The Batman', '3/4/2022', 'https://m.media-amazon.com/images/M/MV5BMDdmMTBiNTYtMDIzNi00NGVlLWIzMDYtZTk3MTQ3NGQxZGEwXkEyXkFqcGdeQXVyMzMwOTU5MDk@._V1_.jpg', 'When a sadistic serial killer begins murdering key political figures in Gotham, Batman is forced to investigate the city`s hidden corruption and question his family`s involvement.');
insert into movie_genre(movie_id, genre_id) values (58, 1);
insert into movie_genre(movie_id, genre_id) values (58, 6);
insert into movie_genre(movie_id, genre_id) values (58, 8);
insert into movie_genre(movie_id, genre_id) values (58, 25);

insert into movies (id, title, release_date, poster, overview) values (59, 'Black Panther: Wakanda Forever', '11/11/2022', 'https://m.media-amazon.com/images/M/MV5BNTM4NjIxNmEtYWE5NS00NDczLTkyNWQtYThhNmQyZGQzMjM0XkEyXkFqcGdeQXVyODk4OTc3MTY@._V1_.jpg', 'The people of Wakanda fight to protect their home from intervening world powers as they mourn the death of King T`Challa.');
insert into movie_genre(movie_id, genre_id) values (59, 1);
insert into movie_genre(movie_id, genre_id) values (59, 2);
insert into movie_genre(movie_id, genre_id) values (59, 8);
insert into movie_genre(movie_id, genre_id) values (59, 10);
insert into movie_genre(movie_id, genre_id) values (59, 21);
insert into movie_genre(movie_id, genre_id) values (59, 25);

insert into movies (id, title, release_date, poster, overview) values (60, 'Avatar - La via dell`acqua', '12/14/2022', 'https://m.media-amazon.com/images/M/MV5BYjhiNjBlODctY2ZiOC00YjVlLWFlNzAtNTVhNzM1YjI1NzMxXkEyXkFqcGdeQXVyMjQxNTE1MDA@._V1_.jpg', 'Jake Sully lives with his newfound family formed on the extrasolar moon Pandora. Once a familiar threat returns to finish what was previously started, Jake must work with Neytiri and the army of the Na`vi race to protect their home.');
insert into movie_genre(movie_id, genre_id) values (60, 1);
insert into movie_genre(movie_id, genre_id) values (60, 2);
insert into movie_genre(movie_id, genre_id) values (60, 10);
insert into movie_genre(movie_id, genre_id) values (60, 21);

insert into movies (id, title, release_date, poster, overview) values (61, 'Everything Everywhere All at Once', '5/19/2022', 'https://m.media-amazon.com/images/M/MV5BYTdiOTIyZTQtNmQ1OS00NjZlLWIyMTgtYzk5Y2M3ZDVmMDk1XkEyXkFqcGdeQXVyMTAzMDg4NzU0._V1_.jpg', 'An aging Chinese immigrant is swept up in an insane adventure, in which she alone can save the world by exploring other universes connecting with the lives she could have led.');
insert into movie_genre(movie_id, genre_id) values (61, 1);
insert into movie_genre(movie_id, genre_id) values (61, 2);
insert into movie_genre(movie_id, genre_id) values (61, 5);
insert into movie_genre(movie_id, genre_id) values (61, 10);
insert into movie_genre(movie_id, genre_id) values (61, 21);

insert into movies (id, title, release_date, poster, overview) values (62, 'Puss in Boots: The Last Wish', '12/21/2022', 'https://m.media-amazon.com/images/M/MV5BNjMyMDBjMGUtNDUzZi00N2MwLTg1MjItZTk2MDE1OTZmNTYxXkEyXkFqcGdeQXVyMTQ5NjA0NDM0._V1_.jpg', 'Puss in Boots discovers that his passion for adventure has taken its toll: he has burned through eight of his nine lives. Puss sets out on an epic journey to find the mythical Last Wish and restore his nine lives.');
insert into movie_genre(movie_id, genre_id) values (62, 3);
insert into movie_genre(movie_id, genre_id) values (62, 2);
insert into movie_genre(movie_id, genre_id) values (62, 5);
insert into movie_genre(movie_id, genre_id) values (62, 9);
insert into movie_genre(movie_id, genre_id) values (62, 10);
insert into movie_genre(movie_id, genre_id) values (62, 17);
insert into movie_genre(movie_id, genre_id) values (62, 20);

insert into movies (id, title, release_date, poster, overview) values (63, 'Black Panther: Wakanda Forever', '11/11/2022', 'https://m.media-amazon.com/images/M/MV5BNTM4NjIxNmEtYWE5NS00NDczLTkyNWQtYThhNmQyZGQzMjM0XkEyXkFqcGdeQXVyODk4OTc3MTY@._V1_.jpg', 'The people of Wakanda fight to protect their home from intervening world powers as they mourn the death of King T`Challa.');
insert into movie_genre(movie_id, genre_id) values (63, 1);
insert into movie_genre(movie_id, genre_id) values (63, 2);
insert into movie_genre(movie_id, genre_id) values (63, 8);
insert into movie_genre(movie_id, genre_id) values (63, 10);
insert into movie_genre(movie_id, genre_id) values (63, 21);
insert into movie_genre(movie_id, genre_id) values (63, 25);

insert into movies (id, title, release_date, poster, overview) values (64, 'Uncharted', '2/16/2022', 'https://m.media-amazon.com/images/M/MV5BNDcyMDQxY2ItZGM5ZS00N2I0LThlZDctNDFmODlmNGUwYzZhXkEyXkFqcGdeQXVyNjA5ODQxMDI@._V1_.jpg', 'Street-smart Nathan Drake is recruited by seasoned treasure hunter Victor "Sully" Sullivan to recover a fortune amassed by Ferdinand Magellan, and lost 500 years ago by the House of Moncada.');
insert into movie_genre(movie_id, genre_id) values (64, 1);
insert into movie_genre(movie_id, genre_id) values (64, 2);

insert into movies (id, title, release_date, poster, overview) values (65, 'Sonic the Hedgehog 2', '4/8/2022', 'https://m.media-amazon.com/images/M/MV5BODRlNTY5ZjktZjE0Ni00YjZhLTk3NTItYzk0ZjYxN2QxMWEzXkEyXkFqcGdeQXVyMjMwNDgzNjc@._V1_.jpg', 'When the manic Dr Robotnik returns to Earth with a new ally, Knuckles the Echidna, Sonic and his new friend Tails is all that stands in their way.');
insert into movie_genre(movie_id, genre_id) values (65, 1);
insert into movie_genre(movie_id, genre_id) values (65, 2);
insert into movie_genre(movie_id, genre_id) values (65, 5);
insert into movie_genre(movie_id, genre_id) values (65, 9);
insert into movie_genre(movie_id, genre_id) values (65, 10);
insert into movie_genre(movie_id, genre_id) values (65, 21);

insert into movies (id, title, release_date, poster, overview) values (66, 'Prey', '8/5/2022', 'https://m.media-amazon.com/images/M/MV5BMDBlMDYxMDktOTUxMS00MjcxLWE2YjQtNjNhMjNmN2Y3ZDA1XkEyXkFqcGdeQXVyMTM1MTE1NDMx._V1_.jpg', 'Naru, a skilled warrior of the Comanche Nation, fights to protect her tribe against one of the first highly-evolved Predators to land on Earth.');
insert into movie_genre(movie_id, genre_id) values (66, 1);
insert into movie_genre(movie_id, genre_id) values (66, 2);
insert into movie_genre(movie_id, genre_id) values (66, 8);
insert into movie_genre(movie_id, genre_id) values (66, 14);
insert into movie_genre(movie_id, genre_id) values (66, 21);
insert into movie_genre(movie_id, genre_id) values (66, 25);

insert into movies (id, title, release_date, poster, overview) values (67, 'The Bad Guys', '4/22/2022', 'https://m.media-amazon.com/images/M/MV5BMDhkYmU0MzctMWEzNy00ODg1LWI3ZjAtMGZlZjkzNWVmMzVjXkEyXkFqcGdeQXVyMTM1MTE1NDMx._V1_.jpg', 'To avoid prison, a gang of notorious animal criminals pretend to seek being rehabilitated, only for their leader to secretly find that he genuinely wants to change his ways.');
insert into movie_genre(movie_id, genre_id) values (67, 3);
insert into movie_genre(movie_id, genre_id) values (67, 2);
insert into movie_genre(movie_id, genre_id) values (67, 5);
insert into movie_genre(movie_id, genre_id) values (67, 6);
insert into movie_genre(movie_id, genre_id) values (67, 9);

insert into movies (id, title, release_date, poster, overview) values (68, 'The Lost City', '3/25/2022', 'https://m.media-amazon.com/images/M/MV5BMmIwYzFhODAtY2I1YS00ZDdmLTkyYWQtZjI5NDIwMDc2MjEyXkEyXkFqcGdeQXVyODk4OTc3MTY@._V1_.jpg', 'A reclusive romance novelist on a book tour with her cover model gets swept up in a kidnapping attempt that lands them both in a cutthroat jungle adventure.');
insert into movie_genre(movie_id, genre_id) values (68, 1);
insert into movie_genre(movie_id, genre_id) values (68, 2);
insert into movie_genre(movie_id, genre_id) values (68, 5);
insert into movie_genre(movie_id, genre_id) values (68, 20);

insert into movies (id, title, release_date, poster, overview) values (69, 'Beast', '8/11/2022', 'https://m.media-amazon.com/images/M/MV5BYmM5MjI0NWYtYzc3OS00ODE4LTkzYTEtOGFhM2IyNWQ3NjhiXkEyXkFqcGdeQXVyMjMyMzI4MzY@._V1_.jpg', 'A father and his two teenage daughters find themselves hunted by a massive rogue lion intent on proving that the Savanna has but one apex predator.');
insert into movie_genre(movie_id, genre_id) values (69, 2);
insert into movie_genre(movie_id, genre_id) values (69, 8);
insert into movie_genre(movie_id, genre_id) values (69, 14);
insert into movie_genre(movie_id, genre_id) values (69, 25);

insert into movies (id, title, release_date, poster, overview) values (70, 'What Is a Woman?', '6/1/2022', 'https://m.media-amazon.com/images/M/MV5BY2JiMWExOTItNWIzYy00NmQ1LThkNGEtMTk5MmM1YmE5NGVmXkEyXkFqcGdeQXVyMTUzMjQxODI1._V1_.jpg', 'Political commentator Matt Walsh explores the changing concepts of sex and gender in the digital age, particularly the transgender rights movement, transphobia, and what it means to be a woman.');
insert into movie_genre(movie_id, genre_id) values (70, 7);

insert into movies (id, title, release_date, poster, overview) values (71, 'Navalny', '5/1/2022', 'https://m.media-amazon.com/images/M/MV5BZDcxZjVlYTMtNDRmYi00M2YyLTg2NjItNmZmMmVjYzgxNmRmXkEyXkFqcGdeQXVyNzI5MDE3MQ@@._V1_.jpg', 'Follows the man who survived an assassination attempt by poisoning with a lethal nerve agent in August 2020. During his months-long recovery he makes shocking discoveries about the attempt on his life and decides to return home.');
insert into movie_genre(movie_id, genre_id) values (71, 7);
insert into movie_genre(movie_id, genre_id) values (71, 4);

insert into movies (id, title, release_date, poster, overview) values (72, 'The Elephant Whisperers', '12/8/2022', 'https://m.media-amazon.com/images/M/MV5BYWQ4ZjE5YjEtN2JkNC00NGExLTkzNDYtMDQ1YTcyZjU1NzY4XkEyXkFqcGdeQXVyMTUyNjc4OTIx._V1_.jpg', 'The Elephant Whisperers` follows an indigenous couple as they fall in love with Raghu, an orphaned elephant given into their care, and tirelessly work to ensure his survival. The film highlights the beauty of the wild spaces in South India and the people and animals who share this space.');
insert into movie_genre(movie_id, genre_id) values (72, 7);
insert into movie_genre(movie_id, genre_id) values (72, 22);

insert into movies (id, title, release_date, poster, overview) values (73, 'Jackass Forever', '2/4/2022', 'https://m.media-amazon.com/images/M/MV5BNTdmMDNmYmItOWFmNC00YzdkLWIyZWMtMGRlMTQyZDZmNDU0XkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_.jpg', 'After 11 years, the Jackass crew is back for another crusade.');
insert into movie_genre(movie_id, genre_id) values (73, 7);
insert into movie_genre(movie_id, genre_id) values (73, 1);
insert into movie_genre(movie_id, genre_id) values (73, 5);

insert into movies (id, title, release_date, poster, overview) values (74, 'Fire of Love', '7/22/2022', 'https://m.media-amazon.com/images/M/MV5BOTMwNjMxOWQtYTEyOC00OTUyLTlhMTItOGFkOTJkMWM1NDQ5XkEyXkFqcGdeQXVyMTAyMjQ3NzQ1._V1_.jpg', 'Intrepid scientists and lovers Katia and Maurice Krafft died in a volcanic explosion doing the very thing that brought them together: unraveling the mysteries of volcanoes by capturing the most explosive imagery ever recorded.');
insert into movie_genre(movie_id, genre_id) values (74, 7);
insert into movie_genre(movie_id, genre_id) values (74, 4);

insert into movies (id, title, release_date, poster, overview) values (75, 'Grid Down, Power Up', '5/18/2022', 'https://m.media-amazon.com/images/M/MV5BNTI2MzBjYWUtOGEyNy00YTJkLWJiNWItODYwMjgyMDJiODVmXkEyXkFqcGdeQXVyMzMwMTcyMTI@._V1_.jpg', 'The film outlines the risk and consequences of the US power grid going down, leaving the nation without electricity for an extended period of time. It is explained how we became this vulnerable, and how we can resolve it going forward.');
insert into movie_genre(movie_id, genre_id) values (75, 7);

insert into movies (id, title, release_date, poster, overview) values (76, 'All That Breathes', '11/17/2022', 'https://m.media-amazon.com/images/M/MV5BNTJjOTMyOTMtYTlmZC00NDAxLWIwM2EtNDkzNjcyMDljMmQ2XkEyXkFqcGdeQXVyNjQyMTI3MTM@._V1_.jpg', 'Amidst the darkening backdrop of Delhi`s apocalyptic air and escalating violence, two brothers devote their lives to protect one casualty of the turbulent times: the bird known as the Black Kite.');
insert into movie_genre(movie_id, genre_id) values (76, 7);

insert into movies (id, title, release_date, poster, overview) values (77, 'Harry Potter 20th Anniversary: Return to Hogwarts', '1/1/2022', 'https://m.media-amazon.com/images/M/MV5BNTZkNWEyZTgtYzJlOS00OWNiLTgwZjMtZGU5NTRhNDNjOTRhXkEyXkFqcGdeQXVyNjk1Njg5NTA@._V1_.jpg', 'Cast members from all "Harry Potter" films reunite in a retrospective special to celebrate the anniversary of the first film, including interviews and cast conversations.');
insert into movie_genre(movie_id, genre_id) values (77, 7);
insert into movie_genre(movie_id, genre_id) values (77, 9);

insert into movies (id, title, release_date, poster, overview) values (78, 'La ragazza nella foto', '7/6/2022', 'https://m.media-amazon.com/images/M/MV5BZmNmM2ZmOWUtMThlMS00OTFiLWEyZjAtMjJmOWFjZDJlODg4XkEyXkFqcGdeQXVyMTQyOTAzNTU5._V1_.jpg', 'A young mother`s mysterious death and her son`s subsequent kidnapping blow open a decades-long mystery about the woman`s true identity and the murderous federal fugitive at the center of it all.');
insert into movie_genre(movie_id, genre_id) values (78, 7);
insert into movie_genre(movie_id, genre_id) values (78, 6);
insert into movie_genre(movie_id, genre_id) values (78, 17);

insert into movies (id, title, release_date, poster, overview) values (79, 'Nuclear', '9/9/2022', 'https://m.media-amazon.com/images/M/MV5BYWJmMjkxYjYtMTdiNS00NTYxLWJmODEtYzU0NTZkYmQxOGEzXkEyXkFqcGdeQXVyMTI4MjIwMjQ@._V1_.jpg', 'As fossil fuels cook the planet, the world is finally forced to confront a massive disinformation campaign about humanity’s cleanest, safest, and fastest energy source – nuclear energy. Beneath our feet, Uranium atoms in the Earth`s crust hold incredibly concentrated energy. Science unlocked this energy in the mid-20th century, first for bombs and then to power submarines, and the United States led the effort to generate electricity from this new source. Yet in the mid-20th century as societies began the transition to nuclear power and away from fossil fuels, a long-term PR campaign to scare the public began, funded in part by coal and oil interests. This campaign would sow fear about harmless low-level radiation and create confusion between nuclear weapons and nuclear power. With unprecedented access to the nuclear industry in France, Russia, and the United States, director Oliver Stone explores the possibility for the global community to overcome the challenges of climate change and energy poverty to reach a brighter future through the power of nuclear energy.');
insert into movie_genre(movie_id, genre_id) values (79, 7);

insert into movies (id, title, release_date, poster, overview) values (80, 'Everything Everywhere All at Once', '5/19/2022', 'https://m.media-amazon.com/images/M/MV5BYTdiOTIyZTQtNmQ1OS00NjZlLWIyMTgtYzk5Y2M3ZDVmMDk1XkEyXkFqcGdeQXVyMTAzMDg4NzU0._V1_.jpg', 'An aging Chinese immigrant is swept up in an insane adventure, in which she alone can save the world by exploring other universes connecting with the lives she could have led.');
insert into movie_genre(movie_id, genre_id) values (80, 1);
insert into movie_genre(movie_id, genre_id) values (80, 2);
insert into movie_genre(movie_id, genre_id) values (80, 5);
insert into movie_genre(movie_id, genre_id) values (80, 10);
insert into movie_genre(movie_id, genre_id) values (80, 21);

insert into movies (id, title, release_date, poster, overview) values (81, 'Babylon', '1/19/2023', 'https://m.media-amazon.com/images/M/MV5BNjlkYjc4NGMtZjc3MS00NjQ3LTk4MmUtMTkwZGZjODE1ZDVlXkEyXkFqcGdeQXVyODk4OTc3MTY@._V1_.jpg', 'A tale of outsized ambition and outrageous excess, it traces the rise and fall of multiple characters during an era of unbridled decadence and depravity in early Hollywood.');
insert into movie_genre(movie_id, genre_id) values (81, 5);
insert into movie_genre(movie_id, genre_id) values (81, 8);
insert into movie_genre(movie_id, genre_id) values (81, 13);

insert into movies (id, title, release_date, poster, overview) values (82, 'Triangle of Sadness', '10/6/2022', 'https://m.media-amazon.com/images/M/MV5BYTY4MjIzN2EtZjk2Yy00NzE0LWE3NzQtZDQ2YTk2ZGNhN2Y5XkEyXkFqcGdeQXVyMjMyMzI4MzY@._V1_.jpg', 'A fashion model celebrity couple join an eventful cruise for the super-rich.');
insert into movie_genre(movie_id, genre_id) values (82, 5);
insert into movie_genre(movie_id, genre_id) values (82, 8);

insert into movies (id, title, release_date, poster, overview) values (83, 'Puss in Boots: The Last Wish', '12/21/2022', 'https://m.media-amazon.com/images/M/MV5BNjMyMDBjMGUtNDUzZi00N2MwLTg1MjItZTk2MDE1OTZmNTYxXkEyXkFqcGdeQXVyMTQ5NjA0NDM0._V1_.jpg', 'Puss in Boots discovers that his passion for adventure has taken its toll: he has burned through eight of his nine lives. Puss sets out on an epic journey to find the mythical Last Wish and restore his nine lives.');
insert into movie_genre(movie_id, genre_id) values (83, 3);
insert into movie_genre(movie_id, genre_id) values (83, 2);
insert into movie_genre(movie_id, genre_id) values (83, 5);
insert into movie_genre(movie_id, genre_id) values (83, 9);
insert into movie_genre(movie_id, genre_id) values (83, 10);
insert into movie_genre(movie_id, genre_id) values (83, 17);
insert into movie_genre(movie_id, genre_id) values (83, 20);

insert into movies (id, title, release_date, poster, overview) values (84, 'Massive Talent', '6/16/2022', 'https://m.media-amazon.com/images/M/MV5BNDM2ODNiMWItOWRkNS00ODE3LWE2OGYtNTZkMDJkOWI1ODMxXkEyXkFqcGdeQXVyMjMxOTE0ODA@._V1_.jpg', 'In this action-packed comedy, Nicolas Cage plays Nick Cage, channeling his iconic characters as he`s caught between a superfan (Pedro Pascal) and a CIA agent (Tiffany Haddish).');
insert into movie_genre(movie_id, genre_id) values (84, 1);
insert into movie_genre(movie_id, genre_id) values (84, 5);
insert into movie_genre(movie_id, genre_id) values (84, 6);
insert into movie_genre(movie_id, genre_id) values (84, 25);

insert into movies (id, title, release_date, poster, overview) values (85, 'Bullet Train', '8/5/2022', 'https://m.media-amazon.com/images/M/MV5BMDU2ZmM2OTYtNzIxYy00NjM5LTliNGQtN2JmOWQzYTBmZWUzXkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_.jpg', 'Five assassins aboard a swiftly-moving bullet train find out that their missions have something in common.');
insert into movie_genre(movie_id, genre_id) values (85, 1);
insert into movie_genre(movie_id, genre_id) values (85, 5);
insert into movies (id, title, release_date, poster, overview) values (90, 'Babylon', '1/19/2023', 'https://m.media-amazon.com/images/M/MV5BNjlkYjc4NGMtZjc3MS00NjQ3LTk4MmUtMTkwZGZjODE1ZDVlXkEyXkFqcGdeQXVyODk4OTc3MTY@._V1_.jpg', 'A tale of outsized ambition and outrageous excess, it traces the rise and fall of multiple characters during an era of unbridled decadence and depravity in early Hollywood.');
insert into movie_genre(movie_id, genre_id) values (85, 25);
insert into movie_genre(movie_id, genre_id) values (90, 5);

insert into movie_genre(movie_id, genre_id) values (90, 8);
insert into movies (id, title, release_date, poster, overview) values (86, 'Glass Onion - Knives Out', '12/23/2022', 'https://m.media-amazon.com/images/M/MV5BYmZlZDZkZjYtNzE5Mi00ODFhLTk2OTgtZWVmODBiZTI4NGFiXkEyXkFqcGdeQXVyMTE5MTg5NDIw._V1_.jpg', 'Famed Southern detective Benoit Blanc travels to Greece for his latest case.');
insert into movie_genre(movie_id, genre_id) values (86, 5);
insert into movie_genre(movie_id, genre_id) values (86, 6);
insert into movie_genre(movie_id, genre_id) values (86, 8);
insert into movie_genre(movie_id, genre_id) values (86, 17);
insert into movie_genre(movie_id, genre_id) values (86, 25);

insert into movies (id, title, release_date, poster, overview) values (87, 'Roald Dahl`s Matilda the Musical', '12/25/2022', 'https://m.media-amazon.com/images/M/MV5BZDQyMDEwOTMtYzQ4Ny00NGVmLWI5NWYtMTQ3ODE2MGNlN2Y4XkEyXkFqcGdeQXVyMTA1OTcyNDQ4._V1_.jpg', 'An adaptation of the Tony and Olivier award-winning musical. Matilda tells the story of an extraordinary girl who, armed with a sharp mind and a vivid imagination, dares to take a stand to change her story with miraculous results.');
insert into movie_genre(movie_id, genre_id) values (90, 13);
insert into movie_genre(movie_id, genre_id) values (87, 5);

insert into movie_genre(movie_id, genre_id) values (87, 8);
insert into movies (id, title, release_date, poster, overview) values (91, 'Top Gun: Maverick', '5/27/2022', 'https://m.media-amazon.com/images/M/MV5BZWYzOGEwNTgtNWU3NS00ZTQ0LWJkODUtMmVhMjIwMjA1ZmQwXkEyXkFqcGdeQXVyMjkwOTAyMDU@._V1_.jpg', 'After thirty years, Maverick is still pushing the envelope as a top naval aviator, but must confront ghosts of his past when he leads TOP GUN`s elite graduates on a mission that demands the ultimate sacrifice from those chosen to fly it.');
insert into movie_genre(movie_id, genre_id) values (87, 9);
insert into movie_genre(movie_id, genre_id) values (91, 1);
insert into movie_genre(movie_id, genre_id) values (87, 10);
insert into movie_genre(movie_id, genre_id) values (91, 8);
insert into movie_genre(movie_id, genre_id) values (87, 16);


insert into movies (id, title, release_date, poster, overview) values (92, 'Triangle of Sadness', '10/6/2022', 'https://m.media-amazon.com/images/M/MV5BYTY4MjIzN2EtZjk2Yy00NzE0LWE3NzQtZDQ2YTk2ZGNhN2Y5XkEyXkFqcGdeQXVyMjMyMzI4MzY@._V1_.jpg', 'A fashion model celebrity couple join an eventful cruise for the super-rich.');
insert into movies (id, title, release_date, poster, overview) values (88, 'Sonic the Hedgehog 2', '4/8/2022', 'https://m.media-amazon.com/images/M/MV5BODRlNTY5ZjktZjE0Ni00YjZhLTk3NTItYzk0ZjYxN2QxMWEzXkEyXkFqcGdeQXVyMjMwNDgzNjc@._V1_.jpg', 'When the manic Dr Robotnik returns to Earth with a new ally, Knuckles the Echidna, Sonic and his new friend Tails is all that stands in their way.');
insert into movie_genre(movie_id, genre_id) values (92, 5);
insert into movie_genre(movie_id, genre_id) values (88, 1);
insert into movie_genre(movie_id, genre_id) values (92, 8);
insert into movie_genre(movie_id, genre_id) values (88, 2);

insert into movie_genre(movie_id, genre_id) values (88, 5);
insert into movies (id, title, release_date, poster, overview) values (93, 'Krigsseileren', '9/23/2022', 'https://m.media-amazon.com/images/M/MV5BMjA2Mzc4ZjMtZmQwNC00ZDI3LWEyYzQtNzczOGVhZjdkNzllXkEyXkFqcGdeQXVyNTY3MTY3MzE@._V1_.jpg', 'The sailor Alfred is in the middle of the Atlantic Ocean when World War II breaks out. Suddenly the sailors are in the front of the war, without any weapons.');
insert into movie_genre(movie_id, genre_id) values (88, 9);
insert into movie_genre(movie_id, genre_id) values (93, 8);
insert into movie_genre(movie_id, genre_id) values (88, 10);
insert into movie_genre(movie_id, genre_id) values (93, 26);
insert into movie_genre(movie_id, genre_id) values (88, 21);


insert into movies (id, title, release_date, poster, overview) values (94, 'Im Westen nichts Neues', '10/28/2022', 'https://m.media-amazon.com/images/M/MV5BMjllNTNjZWItNDZiNy00ZWIxLWFkYzktYzMzN2EyYzRiODA3XkEyXkFqcGdeQXVyNTM2NTg3Nzg@._V1_.jpg', 'A young German soldier`s terrifying experiences and distress on the western front during World War I.');
insert into movies (id, title, release_date, poster, overview) values (89, 'The Bad Guys', '4/22/2022', 'https://m.media-amazon.com/images/M/MV5BMDhkYmU0MzctMWEzNy00ODg1LWI3ZjAtMGZlZjkzNWVmMzVjXkEyXkFqcGdeQXVyMTM1MTE1NDMx._V1_.jpg', 'To avoid prison, a gang of notorious animal criminals pretend to seek being rehabilitated, only for their leader to secretly find that he genuinely wants to change his ways.');
insert into movie_genre(movie_id, genre_id) values (94, 1);
insert into movie_genre(movie_id, genre_id) values (89, 3);
insert into movie_genre(movie_id, genre_id) values (94, 8);
insert into movie_genre(movie_id, genre_id) values (89, 2);
insert into movie_genre(movie_id, genre_id) values (94, 26);
insert into movie_genre(movie_id, genre_id) values (89, 5);

insert into movie_genre(movie_id, genre_id) values (89, 6);
insert into movies (id, title, release_date, poster, overview) values (95, 'Glass Onion - Knives Out', '12/23/2022', 'https://m.media-amazon.com/images/M/MV5BYmZlZDZkZjYtNzE5Mi00ODFhLTk2OTgtZWVmODBiZTI4NGFiXkEyXkFqcGdeQXVyMTE5MTg5NDIw._V1_.jpg', 'Famed Southern detective Benoit Blanc travels to Greece for his latest case.');
insert into movie_genre(movie_id, genre_id) values (89, 9);
insert into movie_genre(movie_id, genre_id) values (95, 5);

insert into movie_genre(movie_id, genre_id) values (95, 6);
insert into movie_genre(movie_id, genre_id) values (95, 8);
insert into movie_genre(movie_id, genre_id) values (95, 17);
insert into movie_genre(movie_id, genre_id) values (95, 25);

insert into movies (id, title, release_date, poster, overview) values (96, 'The Batman', '3/4/2022', 'https://m.media-amazon.com/images/M/MV5BMDdmMTBiNTYtMDIzNi00NGVlLWIzMDYtZTk3MTQ3NGQxZGEwXkEyXkFqcGdeQXVyMzMwOTU5MDk@._V1_.jpg', 'When a sadistic serial killer begins murdering key political figures in Gotham, Batman is forced to investigate the city`s hidden corruption and question his family`s involvement.');
insert into movie_genre(movie_id, genre_id) values (96, 1);
insert into movie_genre(movie_id, genre_id) values (96, 6);
insert into movie_genre(movie_id, genre_id) values (96, 8);
insert into movie_genre(movie_id, genre_id) values (96, 25);

insert into movies (id, title, release_date, poster, overview) values (97, 'Black Panther: Wakanda Forever', '11/11/2022', 'https://m.media-amazon.com/images/M/MV5BNTM4NjIxNmEtYWE5NS00NDczLTkyNWQtYThhNmQyZGQzMjM0XkEyXkFqcGdeQXVyODk4OTc3MTY@._V1_.jpg', 'The people of Wakanda fight to protect their home from intervening world powers as they mourn the death of King T`Challa.');
insert into movie_genre(movie_id, genre_id) values (97, 1);
insert into movie_genre(movie_id, genre_id) values (97, 2);
insert into movie_genre(movie_id, genre_id) values (97, 8);
insert into movie_genre(movie_id, genre_id) values (97, 10);
insert into movie_genre(movie_id, genre_id) values (97, 21);
insert into movie_genre(movie_id, genre_id) values (97, 25);

insert into movies (id, title, release_date, poster, overview) values (98, 'Fabelmanowie', '11/25/2022', 'https://m.media-amazon.com/images/M/MV5BZGM1MzczNmQtMjBmYS00NTRhLWI0MzctNTFkZDc4OGUyODdjXkEyXkFqcGdeQXVyMjMxOTE0ODA@._V1_.jpg', 'Growing up in post-World War II era Arizona, young Sammy Fabelman aspires to become a filmmaker as he reaches adolescence, but soon discovers a shattering family secret and explores how the power of films can help him see the truth.');
insert into movie_genre(movie_id, genre_id) values (98, 8);

insert into movies (id, title, release_date, poster, overview) values (99, 'Tár', '2/9/2023', 'https://m.media-amazon.com/images/M/MV5BM2I0ZDcyYzItMGEyNi00YWVhLTlmNTQtOWVlYjE1ZGVhNWM0XkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_.jpg', 'Set in the international world of Western classical music, the film centers on Lydia Tár, widely considered one of the greatest living composer-conductors and first-ever female music director of a major German orchestra.');
insert into movie_genre(movie_id, genre_id) values (99, 4);
insert into movie_genre(movie_id, genre_id) values (99, 8);
insert into movie_genre(movie_id, genre_id) values (99, 15);

insert into movies (id, title, release_date, poster, overview) values (100, 'Avatar - La via dell`acqua', '12/14/2022', 'https://m.media-amazon.com/images/M/MV5BYjhiNjBlODctY2ZiOC00YjVlLWFlNzAtNTVhNzM1YjI1NzMxXkEyXkFqcGdeQXVyMjQxNTE1MDA@._V1_.jpg', 'Jake Sully lives with his newfound family formed on the extrasolar moon Pandora. Once a familiar threat returns to finish what was previously started, Jake must work with Neytiri and the army of the Na`vi race to protect their home.');
insert into movie_genre(movie_id, genre_id) values (100, 1);
insert into movie_genre(movie_id, genre_id) values (100, 2);
insert into movie_genre(movie_id, genre_id) values (100, 10);
insert into movie_genre(movie_id, genre_id) values (100, 21);

insert into movies (id, title, release_date, poster, overview) values (101, 'Everything Everywhere All at Once', '5/19/2022', 'https://m.media-amazon.com/images/M/MV5BYTdiOTIyZTQtNmQ1OS00NjZlLWIyMTgtYzk5Y2M3ZDVmMDk1XkEyXkFqcGdeQXVyMTAzMDg4NzU0._V1_.jpg', 'An aging Chinese immigrant is swept up in an insane adventure, in which she alone can save the world by exploring other universes connecting with the lives she could have led.');
insert into movie_genre(movie_id, genre_id) values (101, 1);
insert into movie_genre(movie_id, genre_id) values (101, 2);
insert into movie_genre(movie_id, genre_id) values (101, 5);
insert into movie_genre(movie_id, genre_id) values (101, 10);
insert into movie_genre(movie_id, genre_id) values (101, 21);

insert into movies (id, title, release_date, poster, overview) values (102, 'Puss in Boots: The Last Wish', '12/21/2022', 'https://m.media-amazon.com/images/M/MV5BNjMyMDBjMGUtNDUzZi00N2MwLTg1MjItZTk2MDE1OTZmNTYxXkEyXkFqcGdeQXVyMTQ5NjA0NDM0._V1_.jpg', 'Puss in Boots discovers that his passion for adventure has taken its toll: he has burned through eight of his nine lives. Puss sets out on an epic journey to find the mythical Last Wish and restore his nine lives.');
insert into movie_genre(movie_id, genre_id) values (102, 3);
insert into movie_genre(movie_id, genre_id) values (102, 2);
insert into movie_genre(movie_id, genre_id) values (102, 5);
insert into movie_genre(movie_id, genre_id) values (102, 9);
insert into movie_genre(movie_id, genre_id) values (102, 10);
insert into movie_genre(movie_id, genre_id) values (102, 17);
insert into movie_genre(movie_id, genre_id) values (102, 20);

insert into movies (id, title, release_date, poster, overview) values (103, 'Black Panther: Wakanda Forever', '11/11/2022', 'https://m.media-amazon.com/images/M/MV5BNTM4NjIxNmEtYWE5NS00NDczLTkyNWQtYThhNmQyZGQzMjM0XkEyXkFqcGdeQXVyODk4OTc3MTY@._V1_.jpg', 'The people of Wakanda fight to protect their home from intervening world powers as they mourn the death of King T`Challa.');
insert into movie_genre(movie_id, genre_id) values (103, 1);
insert into movie_genre(movie_id, genre_id) values (103, 2);
insert into movie_genre(movie_id, genre_id) values (103, 8);
insert into movie_genre(movie_id, genre_id) values (103, 10);
insert into movie_genre(movie_id, genre_id) values (103, 21);
insert into movie_genre(movie_id, genre_id) values (103, 25);

insert into movies (id, title, release_date, poster, overview) values (104, 'Roald Dahl`s Matilda the Musical', '12/25/2022', 'https://m.media-amazon.com/images/M/MV5BZDQyMDEwOTMtYzQ4Ny00NGVmLWI5NWYtMTQ3ODE2MGNlN2Y4XkEyXkFqcGdeQXVyMTA1OTcyNDQ4._V1_.jpg', 'An adaptation of the Tony and Olivier award-winning musical. Matilda tells the story of an extraordinary girl who, armed with a sharp mind and a vivid imagination, dares to take a stand to change her story with miraculous results.');
insert into movie_genre(movie_id, genre_id) values (104, 5);
insert into movie_genre(movie_id, genre_id) values (104, 8);
insert into movie_genre(movie_id, genre_id) values (104, 9);
insert into movie_genre(movie_id, genre_id) values (104, 10);
insert into movie_genre(movie_id, genre_id) values (104, 16);

insert into movies (id, title, release_date, poster, overview) values (105, 'Sonic the Hedgehog 2', '4/8/2022', 'https://m.media-amazon.com/images/M/MV5BODRlNTY5ZjktZjE0Ni00YjZhLTk3NTItYzk0ZjYxN2QxMWEzXkEyXkFqcGdeQXVyMjMwNDgzNjc@._V1_.jpg', 'When the manic Dr Robotnik returns to Earth with a new ally, Knuckles the Echidna, Sonic and his new friend Tails is all that stands in their way.');
insert into movie_genre(movie_id, genre_id) values (105, 1);
insert into movie_genre(movie_id, genre_id) values (105, 2);
insert into movie_genre(movie_id, genre_id) values (105, 5);
insert into movie_genre(movie_id, genre_id) values (105, 9);
insert into movie_genre(movie_id, genre_id) values (105, 10);
insert into movie_genre(movie_id, genre_id) values (105, 21);

insert into movies (id, title, release_date, poster, overview) values (106, 'L`École du Bien et du Mal', '10/19/2022', 'https://m.media-amazon.com/images/M/MV5BZmQ0ODU4MzctYWU4Yi00MzJkLWEwMWEtNTY2YmZlNDJiYzRhXkEyXkFqcGdeQXVyNjMxMTE2Mjg@._V1_.jpg', 'Best friends Sophie and Agatha find themselves on opposing sides of an epic battle when they`re swept away into an enchanted school where aspiring heroes and villains are trained to protect the balance between Good and Evil.');
insert into movie_genre(movie_id, genre_id) values (106, 1);
insert into movie_genre(movie_id, genre_id) values (106, 5);
insert into movie_genre(movie_id, genre_id) values (106, 8);
insert into movie_genre(movie_id, genre_id) values (106, 10);

insert into movies (id, title, release_date, poster, overview) values (107, 'Turning Red', '3/11/2022', 'https://m.media-amazon.com/images/M/MV5BMDI3NjBmYjUtZmY1My00MDBjLWE2ODctMzcyYWU5ZDE4ZWE2XkEyXkFqcGdeQXVyOTg3NjI1MTg@._V1_.jpg', 'A 13-year-old girl named Meilin turns into a giant red panda whenever she gets too excited.');
insert into movie_genre(movie_id, genre_id) values (107, 3);
insert into movie_genre(movie_id, genre_id) values (107, 2);
insert into movie_genre(movie_id, genre_id) values (107, 5);
insert into movie_genre(movie_id, genre_id) values (107, 9);
insert into movie_genre(movie_id, genre_id) values (107, 10);

insert into movies (id, title, release_date, poster, overview) values (108, 'Strange World', '11/23/2022', 'https://m.media-amazon.com/images/M/MV5BZTk1NzQwMWQtNzVmNS00MDc4LWE1MTktMmQyYzExYWMwZDQ4XkEyXkFqcGdeQXVyODc0OTEyNDU@._V1_.jpg', 'The legendary Clades are a family of explorers whose differences threaten to topple their latest and most crucial mission.');
insert into movie_genre(movie_id, genre_id) values (108, 3);
insert into movie_genre(movie_id, genre_id) values (108, 1);
insert into movie_genre(movie_id, genre_id) values (108, 2);
insert into movie_genre(movie_id, genre_id) values (108, 5);
insert into movie_genre(movie_id, genre_id) values (108, 9);
insert into movie_genre(movie_id, genre_id) values (108, 10);
insert into movie_genre(movie_id, genre_id) values (108, 21);

insert into movies (id, title, release_date, poster, overview) values (109, 'Violent Night', '12/2/2022', 'https://m.media-amazon.com/images/M/MV5BYzg2NWNhOWItYjA3Yi00MzhhLTg4ZmItYzM3ZTIwN2U0ZGQ5XkEyXkFqcGdeQXVyMzEyMDQzNzY@._V1_.jpg', 'When a group of mercenaries attack the estate of a wealthy family, Santa Claus must step in to save the day (and Christmas).');
insert into movie_genre(movie_id, genre_id) values (109, 1);
insert into movie_genre(movie_id, genre_id) values (109, 5);
insert into movie_genre(movie_id, genre_id) values (109, 6);
insert into movie_genre(movie_id, genre_id) values (109, 10);
insert into movie_genre(movie_id, genre_id) values (109, 25);

insert into movies (id, title, release_date, poster, overview) values (110, 'Roald Dahl`s Matilda the Musical', '12/25/2022', 'https://m.media-amazon.com/images/M/MV5BZDQyMDEwOTMtYzQ4Ny00NGVmLWI5NWYtMTQ3ODE2MGNlN2Y4XkEyXkFqcGdeQXVyMTA1OTcyNDQ4._V1_.jpg', 'An adaptation of the Tony and Olivier award-winning musical. Matilda tells the story of an extraordinary girl who, armed with a sharp mind and a vivid imagination, dares to take a stand to change her story with miraculous results.');
insert into movie_genre(movie_id, genre_id) values (110, 5);
insert into movies (id, title, release_date, poster, overview) values (120, 'Hustle', '6/8/2022', 'https://m.media-amazon.com/images/M/MV5BYjdhYTE3NjMtZjI3OC00NzVlLWFiNTUtNzQ3NDNiNTI3NDg4XkEyXkFqcGdeQXVyMTEyMjM2NDc2._V1_.jpg', 'A basketball scout discovers a phenomenal street ball player while in Spain and sees the prospect as his opportunity to get back into the NBA.');
insert into movie_genre(movie_id, genre_id) values (110, 8);
insert into movie_genre(movie_id, genre_id) values (120, 5);
insert into movies (id, title, release_date, poster, overview) values (130, 'Babylon', '1/19/2023', 'https://m.media-amazon.com/images/M/MV5BNjlkYjc4NGMtZjc3MS00NjQ3LTk4MmUtMTkwZGZjODE1ZDVlXkEyXkFqcGdeQXVyODk4OTc3MTY@._V1_.jpg', 'A tale of outsized ambition and outrageous excess, it traces the rise and fall of multiple characters during an era of unbridled decadence and depravity in early Hollywood.');
insert into movies (id, title, release_date, poster, overview) values (140, 'Massive Talent', '6/16/2022', 'https://m.media-amazon.com/images/M/MV5BNDM2ODNiMWItOWRkNS00ODE3LWE2OGYtNTZkMDJkOWI1ODMxXkEyXkFqcGdeQXVyMjMxOTE0ODA@._V1_.jpg', 'In this action-packed comedy, Nicolas Cage plays Nick Cage, channeling his iconic characters as he`s caught between a superfan (Pedro Pascal) and a CIA agent (Tiffany Haddish).');
insert into movie_genre(movie_id, genre_id) values (110, 9);
insert into movie_genre(movie_id, genre_id) values (120, 8);
insert into movie_genre(movie_id, genre_id) values (130, 5);
insert into movie_genre(movie_id, genre_id) values (140, 1);
insert into movie_genre(movie_id, genre_id) values (110, 10);
insert into movie_genre(movie_id, genre_id) values (120, 23);
insert into movie_genre(movie_id, genre_id) values (130, 8);
insert into movie_genre(movie_id, genre_id) values (140, 5);
insert into movie_genre(movie_id, genre_id) values (110, 16);

insert into movie_genre(movie_id, genre_id) values (130, 13);
insert into movie_genre(movie_id, genre_id) values (140, 6);

insert into movies (id, title, release_date, poster, overview) values (121, 'Plavkyně', '11/23/2022', 'https://m.media-amazon.com/images/M/MV5BOGZmMWM1NTItYzBhYi00YjEzLWI3OTQtNWM4ZDhjMDkxYWEwXkEyXkFqcGdeQXVyMTEzMTI1Mjk3._V1_.jpg', 'From war-torn Syria to the 2016 Rio Olympics, two young sisters embark on a harrowing journey as refugees, putting both their hearts and champion swimming skills to heroic use.');

insert into movie_genre(movie_id, genre_id) values (140, 25);
insert into movies (id, title, release_date, poster, overview) values (111, 'Pinocchio', '9/8/2022', 'https://m.media-amazon.com/images/M/MV5BZDIyYjM3N2EtOTU1MC00YTA4LTgzNjctMTNjODcxZTZhODU2XkEyXkFqcGdeQXVyMTM1MTE1NDMx._V1_.jpg', 'A puppet is brought to life by a fairy, who assigns him to lead a virtuous life in order to become a real boy.');
insert into movie_genre(movie_id, genre_id) values (121, 4);
insert into movies (id, title, release_date, poster, overview) values (131, 'Η γυναίκα βασιλιάς', '9/16/2022', 'https://m.media-amazon.com/images/M/MV5BY2I4MDIwYWUtOWMxNC00ZTIzLWE3OGYtOWUyMmIwZGE2NjU4XkEyXkFqcGdeQXVyMTUzMTg2ODkz._V1_.jpg', 'A historical epic inspired by true events that took place in The Kingdom of Dahomey, one of the most powerful states of Africa in the 18th and 19th centuries.');

insert into movie_genre(movie_id, genre_id) values (111, 2);
insert into movie_genre(movie_id, genre_id) values (121, 8);
insert into movie_genre(movie_id, genre_id) values (131, 1);
insert into movies (id, title, release_date, poster, overview) values (141, 'Bullet Train', '8/5/2022', 'https://m.media-amazon.com/images/M/MV5BMDU2ZmM2OTYtNzIxYy00NjM5LTliNGQtN2JmOWQzYTBmZWUzXkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_.jpg', 'Five assassins aboard a swiftly-moving bullet train find out that their missions have something in common.');
insert into movie_genre(movie_id, genre_id) values (111, 5);
insert into movie_genre(movie_id, genre_id) values (121, 23);
insert into movie_genre(movie_id, genre_id) values (131, 8);
insert into movie_genre(movie_id, genre_id) values (141, 1);
insert into movie_genre(movie_id, genre_id) values (111, 8);

insert into movie_genre(movie_id, genre_id) values (131, 13);

insert into movie_genre(movie_id, genre_id) values (141, 5);
insert into movies (id, title, release_date, poster, overview) values (122, 'No Limit', '9/9/2022', 'https://m.media-amazon.com/images/M/MV5BNTFlNTkxYjQtNjJlOS00ZTAzLTljY2EtMTU1ZTljMWYzZWJhXkEyXkFqcGdeQXVyMTUwOTU0Mw@@._V1_.jpg', 'Roxana Aubrey decides to drop her studies and escape her life in Paris for a free diving course in the south of France. She is quickly pulled into a life that reaches new depths brought by the weight of an ocean`s descent.');
insert into movies (id, title, release_date, poster, overview) values (132, 'Anche io', '1/19/2023', 'https://m.media-amazon.com/images/M/MV5BOTc3NWI3NDktMGVkYi00MjU4LWFkNzUtZjAzZGRlMWQyYmU0XkEyXkFqcGdeQXVyNTk5NTQzNDI@._V1_.jpg', 'New York Times reporters Megan Twohey and Jodi Kantor break one of the most important stories in a generation - a story that helped ignite a movement and shattered decades of silence around the subject of sexual assault in Hollywood.');
insert into movie_genre(movie_id, genre_id) values (141, 25);
insert into movie_genre(movie_id, genre_id) values (122, 8);
insert into movie_genre(movie_id, genre_id) values (132, 8);

insert into movie_genre(movie_id, genre_id) values (111, 9);
insert into movie_genre(movie_id, genre_id) values (122, 20);
insert into movie_genre(movie_id, genre_id) values (132, 13);
insert into movies (id, title, release_date, poster, overview) values (142, 'M3gan', '1/4/2023', 'https://m.media-amazon.com/images/M/MV5BOGYzYjI5Y2YtNTRkOC00YjdhLWI5MGYtMGU2ZDZlMmEyNGMyXkEyXkFqcGdeQXVyMTA3MDk2NDg2._V1_.jpg', 'A robotics engineer at a toy company builds a life-like doll that begins to take on a life of its own.');
insert into movie_genre(movie_id, genre_id) values (111, 10);
insert into movie_genre(movie_id, genre_id) values (122, 23);

insert into movie_genre(movie_id, genre_id) values (142, 14);
insert into movie_genre(movie_id, genre_id) values (111, 16);
insert into movie_genre(movie_id, genre_id) values (122, 25);
insert into movies (id, title, release_date, poster, overview) values (133, 'Medieval', '11/8/2022', 'https://m.media-amazon.com/images/M/MV5BNmEyNjNkYTUtNTJkYi00MjRlLWIzZTgtNmIyNzVhODA5MWJlXkEyXkFqcGdeQXVyMTA3MDk2NDg2._V1_.jpg', 'The story of fifteenth century Czech icon and warlord Jan Zizka, who defeated armies of the Teutonic Order and the Holy Roman Empire.');
insert into movie_genre(movie_id, genre_id) values (142, 21);


insert into movie_genre(movie_id, genre_id) values (133, 1);
insert into movie_genre(movie_id, genre_id) values (142, 25);
insert into movies (id, title, release_date, poster, overview) values (112, 'Slumberland - Nel mondo dei sogni', '11/18/2022', 'https://m.media-amazon.com/images/M/MV5BNDUzMzE3NDktN2JmOC00ZjJmLTg0NmMtODE0NDkzNDE5OGYwXkEyXkFqcGdeQXVyMTEyMjM2NDc2._V1_.jpg', 'A young girl discovers a secret map to the dreamworld of Slumberland, and with the help of an eccentric outlaw, she traverses dreams and flees nightmares, with the hope that she will be able to see her late father again.');
insert into movies (id, title, release_date, poster, overview) values (123, 'The First Slam Dunk', '12/3/2022', 'https://m.media-amazon.com/images/M/MV5BNzFkZTQyNjktODNmZS00NWZjLTgzN2ItMjA0YjNlMWNlNTZlXkEyXkFqcGdeQXVyODMyNTM0MjM@._V1_.jpg', 'Hanamichi Sakuragi is a delinquent with a long history of getting dumped by girls. After enrolling in Shohoku High School, Hanamichi becomes interested in a girl named Haruko who loves the game of basketball.');
insert into movie_genre(movie_id, genre_id) values (133, 8);

insert into movie_genre(movie_id, genre_id) values (112, 2);
insert into movie_genre(movie_id, genre_id) values (123, 3);
insert into movie_genre(movie_id, genre_id) values (133, 13);
insert into movies (id, title, release_date, poster, overview) values (143, 'Nope', '8/18/2022', 'https://m.media-amazon.com/images/M/MV5BMGIyNTI3NWItNTJkOS00MGYyLWE4NjgtZDhjMWQ4Y2JkZTU5XkEyXkFqcGdeQXVyNjY1MTg4Mzc@._V1_.jpg', 'The residents of a lonely gulch in inland California bear witness to an uncanny and chilling discovery.');
insert into movie_genre(movie_id, genre_id) values (112, 5);
insert into movie_genre(movie_id, genre_id) values (133, 26);
insert into movie_genre(movie_id, genre_id) values (123, 5);
insert into movie_genre(movie_id, genre_id) values (112, 9);

insert into movie_genre(movie_id, genre_id) values (123, 8);
insert into movie_genre(movie_id, genre_id) values (112, 10);
insert into movies (id, title, release_date, poster, overview) values (134, 'Call Jane', '10/28/2022', 'https://m.media-amazon.com/images/M/MV5BYzY4ZWQ5NzgtMTM0Yy00NWI5LTliYWUtNGQ1MTNkYmQwZDllXkEyXkFqcGdeQXVyMTQzNTA5MzYz._V1_.jpg', 'A married woman with an unwanted pregnancy lives in a time in America where she can`t get a legal abortion and works with a group of suburban women to find help.');
insert into movie_genre(movie_id, genre_id) values (123, 23);
insert into movie_genre(movie_id, genre_id) values (112, 16);
insert into movie_genre(movie_id, genre_id) values (134, 8);


insert into movie_genre(movie_id, genre_id) values (134, 13);
insert into movies (id, title, release_date, poster, overview) values (124, 'Rise', '6/24/2022', 'https://m.media-amazon.com/images/M/MV5BNzdkNDBmMWYtM2JjMC00Yjk4LWFmNzMtNTJkODg2YTM3MmQ5XkEyXkFqcGdeQXVyMTEzMTI1Mjk3._V1_.jpg', 'Based on the real life story about the family that produced the first trio of brothers to become NBA champions in the history of the league.');
insert into movies (id, title, release_date, poster, overview) values (113, 'Please Baby Please', '11/29/2022', 'https://m.media-amazon.com/images/M/MV5BMjA1YzM4YzAtZDRiZC00ZjI3LThjYTUtODE2NmQzMGFkZjA2XkEyXkFqcGdeQXVyNDU0NjMyNTQ@._V1_.jpg', 'Newlyweds Suse and Arthur become the dangerous obsession of a greaser gang that awakens a sleeping quandary into the couple`s sexual identity.');

insert into movie_genre(movie_id, genre_id) values (124, 4);
insert into movie_genre(movie_id, genre_id) values (113, 8);
insert into movies (id, title, release_date, poster, overview) values (135, 'Argentina, 1985', '9/29/2022', 'https://m.media-amazon.com/images/M/MV5BMjhiYzUwZTYtYzU2MC00N2UwLTkwNmMtMGI1MTZjYzljNDZjXkEyXkFqcGdeQXVyNjk1Njg5NTA@._V1_.jpg', 'A team of lawyers takes on the heads of Argentina`s bloody military dictatorship during the 1980s in a battle against odds and a race against time.');
insert into movie_genre(movie_id, genre_id) values (124, 8);
insert into movie_genre(movie_id, genre_id) values (113, 16);
insert into movie_genre(movie_id, genre_id) values (135, 4);
insert into movie_genre(movie_id, genre_id) values (124, 23);

insert into movie_genre(movie_id, genre_id) values (135, 6);

insert into movies (id, title, release_date, poster, overview) values (114, 'Spirited', '11/18/2022', 'https://m.media-amazon.com/images/M/MV5BY2RlZGFmYjAtNGZiMi00YjQ5LWE0ZmQtZmIyM2VmMjRhMTJlXkEyXkFqcGdeQXVyMDM2NDM2MQ@@._V1_.jpg', 'A musical version of Charles Dickens`s story of a miserly misanthrope who is taken on a magical journey.');
insert into movie_genre(movie_id, genre_id) values (135, 8);
insert into movies (id, title, release_date, poster, overview) values (125, 'Strong Enough', '12/27/2022', 'https://m.media-amazon.com/images/M/MV5BMWIxYWVjNTAtZWIwMy00OTllLTk1MTItZWE3ZDY1N2NmYzRjXkEyXkFqcGdeQXVyMTQ1ODgxMDg@._V1_.jpg', 'A cross-training athlete on the path to become a pro tests her limits one afternoon by pursuing several world-records just as conflict from her dissolving marriage collides, threatening to derail her.');
insert into movie_genre(movie_id, genre_id) values (114, 5);
insert into movie_genre(movie_id, genre_id) values (135, 13);
insert into movie_genre(movie_id, genre_id) values (125, 8);
insert into movie_genre(movie_id, genre_id) values (114, 9);

insert into movie_genre(movie_id, genre_id) values (125, 23);
insert into movie_genre(movie_id, genre_id) values (114, 16);


insert into movie_genre(movie_id, genre_id) values (143, 14);
insert into movies (id, title, release_date, poster, overview) values (136, 'Against the Ice', '3/2/2022', 'https://m.media-amazon.com/images/M/MV5BMmIwYzA4YTAtYTMwYy00NzA3LWFmZGQtYWY3MTNlMGM3NDc5XkEyXkFqcGdeQXVyMTE5MTg5NDIw._V1_.jpg', 'In 1909, two explorers fight to survive after they`re left behind while on a Denmark expedition in ice-covered Greenland.');
insert into movies (id, title, release_date, poster, overview) values (126, 'Bubble', '4/28/2022', 'https://m.media-amazon.com/images/M/MV5BYmIxODliYmItNmU2OS00NzU2LTkwZWMtZTc4ZDRmOGRhYWI3XkEyXkFqcGdeQXVyNTgyNTA4MjM@._V1_.jpg', 'After bubbles that broke the laws of gravity rained down upon the world. Cut off from the outside world, Tokyo has become a playground for a group of young people who have lost their families.');
insert into movies (id, title, release_date, poster, overview) values (115, 'The Magic Flute', '11/17/2022', 'https://m.media-amazon.com/images/M/MV5BZWRjNTIzNzctZjM1My00YjhmLTk4OTQtZGFhZjdlYWJjNzJhXkEyXkFqcGdeQXVyODIxMzc5MTk@._V1_.jpg', '17-year-old Tim Walker as he travels from London to the Austrian Alps to attend the legendary Mozart boarding school. There, he discovers a centuries-old forgotten passageway into the fantastic world of Mozart`s "The Magic Flute."');
insert into movie_genre(movie_id, genre_id) values (143, 17);
insert into movie_genre(movie_id, genre_id) values (136, 2);
insert into movie_genre(movie_id, genre_id) values (126, 3);
insert into movie_genre(movie_id, genre_id) values (115, 2);
insert into movie_genre(movie_id, genre_id) values (143, 21);
insert into movie_genre(movie_id, genre_id) values (136, 8);
insert into movie_genre(movie_id, genre_id) values (126, 1);
insert into movie_genre(movie_id, genre_id) values (115, 10);
insert into movie_genre(movie_id, genre_id) values (143, 25);
insert into movie_genre(movie_id, genre_id) values (136, 13);
insert into movie_genre(movie_id, genre_id) values (126, 2);
insert into movie_genre(movie_id, genre_id) values (115, 16);


insert into movie_genre(movie_id, genre_id) values (126, 8);

insert into movies (id, title, release_date, poster, overview) values (144, 'Glass Onion - Knives Out', '12/23/2022', 'https://m.media-amazon.com/images/M/MV5BYmZlZDZkZjYtNzE5Mi00ODFhLTk2OTgtZWVmODBiZTI4NGFiXkEyXkFqcGdeQXVyMTE5MTg5NDIw._V1_.jpg', 'Famed Southern detective Benoit Blanc travels to Greece for his latest case.');
insert into movies (id, title, release_date, poster, overview) values (137, 'Ponniyin Selvan: Part I', '9/30/2022', 'https://m.media-amazon.com/images/M/MV5BZjZlNGRhNTQtZTY1Ni00MjdhLWJhYjEtN2NkMjVmNTAwMjZmXkEyXkFqcGdeQXVyMTEzNzg0Mjkx._V1_.jpg', 'Vandiyathevan sets out to cross the Chola land to deliver a message from the Crown Prince Aditha Karikalan. Kundavai attempts to establish political peace as vassals and petty chieftains plot against the throne. Unrest grips the land as a long-tailed comet arrives, signalling a time of turmoil.');
insert into movie_genre(movie_id, genre_id) values (126, 10);
insert into movies (id, title, release_date, poster, overview) values (116, 'Z-O-M-B-I-E-S 3', '7/15/2022', 'https://m.media-amazon.com/images/M/MV5BZDg4MjVhZDQtM2RiNC00NzZkLWI4MWMtMjkxNjMyZGM3ZmRmXkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_.jpg', 'Zed anticipates an athletic scholarship while Addison is gearing up for Seabrook`s international cheer-off competition. Then suddenly, extraterrestrial beings appear around Seabrook, causing more than friendly competition.');
insert into movie_genre(movie_id, genre_id) values (144, 5);
insert into movie_genre(movie_id, genre_id) values (137, 1);
insert into movie_genre(movie_id, genre_id) values (126, 20);
insert into movie_genre(movie_id, genre_id) values (116, 9);
insert into movie_genre(movie_id, genre_id) values (144, 6);
insert into movie_genre(movie_id, genre_id) values (137, 8);
insert into movie_genre(movie_id, genre_id) values (126, 23);
insert into movie_genre(movie_id, genre_id) values (116, 16);
insert into movie_genre(movie_id, genre_id) values (144, 8);
insert into movie_genre(movie_id, genre_id) values (137, 9);
insert into movie_genre(movie_id, genre_id) values (126, 25);
insert into movie_genre(movie_id, genre_id) values (116, 20);
insert into movie_genre(movie_id, genre_id) values (144, 17);
insert into movie_genre(movie_id, genre_id) values (137, 10);


insert into movie_genre(movie_id, genre_id) values (144, 25);
insert into movies (id, title, release_date, poster, overview) values (127, 'The Soccer Football Movie', '11/9/2022', 'https://m.media-amazon.com/images/M/MV5BNThjMzVlN2YtYzAwMi00YTkzLTk5NmMtNDIzZjhjNjI3ZDEzXkEyXkFqcGdeQXVyMTQyMTMwOTk0._V1_.jpg', 'Four young soccer superfans team up to help their idols regain their abilities after a scheming evil scientist steals their talent.');

insert into movies (id, title, release_date, poster, overview) values (117, 'Bob`s Burgers: The Movie', '8/5/2022', 'https://m.media-amazon.com/images/M/MV5BYzFhNDNkY2UtYjc3ZS00NzVkLTlhNzEtYmZiZGMzYmRjMjVhXkEyXkFqcGdeQXVyMjQwMDg0Ng@@._V1_.jpg', 'The Belchers try to save the restaurant from closing as a sinkhole forms in front of it, while the kids try to solve a mystery that could save their family`s restaurant.');
insert into movies (id, title, release_date, poster, overview) values (145, 'The Batman', '3/4/2022', 'https://m.media-amazon.com/images/M/MV5BMDdmMTBiNTYtMDIzNi00NGVlLWIzMDYtZTk3MTQ3NGQxZGEwXkEyXkFqcGdeQXVyMzMwOTU5MDk@._V1_.jpg', 'When a sadistic serial killer begins murdering key political figures in Gotham, Batman is forced to investigate the city`s hidden corruption and question his family`s involvement.');
insert into movie_genre(movie_id, genre_id) values (127, 3);
insert into movie_genre(movie_id, genre_id) values (137, 13);
insert into movie_genre(movie_id, genre_id) values (145, 1);
insert into movie_genre(movie_id, genre_id) values (117, 3);
insert into movie_genre(movie_id, genre_id) values (127, 5);

insert into movie_genre(movie_id, genre_id) values (145, 6);
insert into movie_genre(movie_id, genre_id) values (117, 2);
insert into movie_genre(movie_id, genre_id) values (127, 9);
insert into movies (id, title, release_date, poster, overview) values (138, 'Apollo 10 1/2: Les fusées de mon enfance', '4/1/2022', 'https://m.media-amazon.com/images/M/MV5BMzgyOWM2NjktNDdkOS00YzZhLTkxM2MtMjY0ODQxNTFkNzQ4XkEyXkFqcGdeQXVyMTA2ODkwNzM5._V1_.jpg', 'A coming-of-age story set in the suburbs of Houston, Texas in the summer of 1969, centered around the historic Apollo 11 moon landing.');
insert into movie_genre(movie_id, genre_id) values (145, 8);
insert into movie_genre(movie_id, genre_id) values (117, 5);
insert into movie_genre(movie_id, genre_id) values (127, 23);
insert into movie_genre(movie_id, genre_id) values (138, 3);
insert into movie_genre(movie_id, genre_id) values (145, 25);
insert into movie_genre(movie_id, genre_id) values (117, 6);

insert into movie_genre(movie_id, genre_id) values (138, 2);

insert into movie_genre(movie_id, genre_id) values (117, 8);
insert into movies (id, title, release_date, poster, overview) values (128, 'Space Jam: A New Legacy', '7/14/2021', 'https://m.media-amazon.com/images/M/MV5BZTAzN2ZlZTEtOTA5ZS00MGFjLTliYWMtYTQzYTFlYTIwZDVmXkEyXkFqcGdeQXVyNjY1MTg4Mzc@._V1_.jpg', 'A rogue artificial intelligence kidnaps the son of famed basketball player LeBron James, who then has to work with Bugs Bunny to win a basketball game.');
insert into movie_genre(movie_id, genre_id) values (138, 8);
insert into movies (id, title, release_date, poster, overview) values (146, 'Scream', '1/14/2022', 'https://m.media-amazon.com/images/M/MV5BYjExYTcwYmYtMWY2Zi00MGJlLTk3YjUtZTU1Zjg4MDc0Y2FjXkEyXkFqcGdeQXVyODE5NzE3OTE@._V1_.jpg', '25 years after a streak of brutal murders shocked the quiet town of Woodsboro, Calif., a new killer dons the Ghostface mask and begins targeting a group of teenagers to resurrect secrets from the town`s deadly past.');
insert into movie_genre(movie_id, genre_id) values (117, 16);
insert into movie_genre(movie_id, genre_id) values (128, 3);
insert into movie_genre(movie_id, genre_id) values (138, 9);
insert into movie_genre(movie_id, genre_id) values (146, 14);
insert into movie_genre(movie_id, genre_id) values (117, 17);
insert into movie_genre(movie_id, genre_id) values (128, 2);
insert into movie_genre(movie_id, genre_id) values (138, 13);
insert into movie_genre(movie_id, genre_id) values (146, 17);
insert into movie_genre(movie_id, genre_id) values (117, 25);
insert into movie_genre(movie_id, genre_id) values (128, 5);

insert into movie_genre(movie_id, genre_id) values (146, 25);

insert into movie_genre(movie_id, genre_id) values (128, 9);
insert into movies (id, title, release_date, poster, overview) values (139, 'A Man of Action', '11/30/2022', 'https://m.media-amazon.com/images/M/MV5BMzg0ZDdiOTEtODM4Ni00MGIwLThjNTMtM2RmNGYyMDgwYmMxXkEyXkFqcGdeQXVyMTA0MjU0Ng@@._V1_.jpg', 'In this drama inspired by the life of Lucio Urtubia, an anarchist targets one of the world`s biggest banks with an ingenious counterfeiting operation.');

insert into movies (id, title, release_date, poster, overview) values (118, 'Heathers: The Musical', '9/16/2022', 'https://m.media-amazon.com/images/M/MV5BOGQ1YmM5OWUtY2VmOS00NWU2LWE3NzQtNjY5ZDQ3OTZiYzQyXkEyXkFqcGdeQXVyNzkyMDA5MTc@._V1_.jpg', 'Veronica Sawyer does her best to survive her senior year while navigating the beautiful but cruel Heathers, the new to school Jason "J.D." Dean, and the constant pressure to fit in with everyone else.');
insert into movie_genre(movie_id, genre_id) values (128, 10);
insert into movie_genre(movie_id, genre_id) values (139, 4);
insert into movies (id, title, release_date, poster, overview) values (147, 'Black Panther: Wakanda Forever', '11/11/2022', 'https://m.media-amazon.com/images/M/MV5BNTM4NjIxNmEtYWE5NS00NDczLTkyNWQtYThhNmQyZGQzMjM0XkEyXkFqcGdeQXVyODk4OTc3MTY@._V1_.jpg', 'The people of Wakanda fight to protect their home from intervening world powers as they mourn the death of King T`Challa.');
insert into movie_genre(movie_id, genre_id) values (118, 5);
insert into movie_genre(movie_id, genre_id) values (128, 21);
insert into movie_genre(movie_id, genre_id) values (139, 6);
insert into movie_genre(movie_id, genre_id) values (147, 1);
insert into movie_genre(movie_id, genre_id) values (118, 16);
insert into movie_genre(movie_id, genre_id) values (128, 23);
insert into movie_genre(movie_id, genre_id) values (139, 8);
insert into movie_genre(movie_id, genre_id) values (147, 2);


insert into movie_genre(movie_id, genre_id) values (139, 13);
insert into movie_genre(movie_id, genre_id) values (147, 8);
insert into movies (id, title, release_date, poster, overview) values (119, 'Beauty and the Beast: A 30th Celebration', '12/15/2022', 'https://m.media-amazon.com/images/M/MV5BNDMzMDIwY2QtZTQxNy00ZjQwLWJhNzAtYmNmYzg1ZTQ5YTdhXkEyXkFqcGdeQXVyMzAxOTk1MjA@._V1_.jpg', 'Features live never-before-seen musical performances with brand-new sets and costumes inspired by the classic story, created to pay homage while also adding to the iconic story.');
insert into movies (id, title, release_date, poster, overview) values (129, 'King Richard', '2/3/2022', 'https://m.media-amazon.com/images/M/MV5BYTcyNmY4ZGEtYmE4Zi00ZDViLTlmYzMtMmQ4ZTM4OWNmZjQxXkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_.jpg', 'A look at how tennis superstars Venus and Serena Williams became who they are after the coaching from their father Richard Williams.');

insert into movie_genre(movie_id, genre_id) values (147, 10);
insert into movie_genre(movie_id, genre_id) values (119, 3);
insert into movie_genre(movie_id, genre_id) values (129, 4);
insert into movie_genre(movie_id, genre_id) values (147, 21);
insert into movie_genre(movie_id, genre_id) values (119, 2);
insert into movie_genre(movie_id, genre_id) values (129, 8);
insert into movie_genre(movie_id, genre_id) values (147, 25);
insert into movie_genre(movie_id, genre_id) values (119, 9);
insert into movie_genre(movie_id, genre_id) values (129, 23);

insert into movie_genre(movie_id, genre_id) values (119, 16);

insert into movies (id, title, release_date, poster, overview) values (148, 'Prey', '8/5/2022', 'https://m.media-amazon.com/images/M/MV5BMDBlMDYxMDktOTUxMS00MjcxLWE2YjQtNjNhMjNmN2Y3ZDA1XkEyXkFqcGdeQXVyMTM1MTE1NDMx._V1_.jpg', 'Naru, a skilled warrior of the Comanche Nation, fights to protect her tribe against one of the first highly-evolved Predators to land on Earth.');
insert into movie_genre(movie_id, genre_id) values (119, 20);
insert into movie_genre(movie_id, genre_id) values (148, 1);

insert into movie_genre(movie_id, genre_id) values (148, 2);
insert into movie_genre(movie_id, genre_id) values (148, 8);
insert into movie_genre(movie_id, genre_id) values (148, 14);
insert into movie_genre(movie_id, genre_id) values (148, 21);
insert into movie_genre(movie_id, genre_id) values (148, 25);

insert into movies (id, title, release_date, poster, overview) values (149, 'The Wonder', '11/16/2022', 'https://m.media-amazon.com/images/M/MV5BNDBmNzIwY2QtMjZhOC00YzlhLWIwNjMtZDdkZjY3OWUzZDI4XkEyXkFqcGdeQXVyMTAyMjQ3NzQ1._V1_.jpg', 'A tale of two strangers who transform each other`s lives, a psychological thriller, and a story of love pitted against evil.');
insert into movie_genre(movie_id, genre_id) values (149, 8);
insert into movie_genre(movie_id, genre_id) values (149, 17);
insert into movie_genre(movie_id, genre_id) values (149, 25);

insert into movies (id, title, release_date, poster, overview) values (150, 'Krigsseileren', '9/23/2022', 'https://m.media-amazon.com/images/M/MV5BMjA2Mzc4ZjMtZmQwNC00ZDI3LWEyYzQtNzczOGVhZjdkNzllXkEyXkFqcGdeQXVyNTY3MTY3MzE@._V1_.jpg', 'The sailor Alfred is in the middle of the Atlantic Ocean when World War II breaks out. Suddenly the sailors are in the front of the war, without any weapons.');
insert into movie_genre(movie_id, genre_id) values (150, 8);
insert into movie_genre(movie_id, genre_id) values (150, 26);

insert into movies (id, title, release_date, poster, overview) values (151, 'Im Westen nichts Neues', '10/28/2022', 'https://m.media-amazon.com/images/M/MV5BMjllNTNjZWItNDZiNy00ZWIxLWFkYzktYzMzN2EyYzRiODA3XkEyXkFqcGdeQXVyNTM2NTg3Nzg@._V1_.jpg', 'A young German soldier`s terrifying experiences and distress on the western front during World War I.');
insert into movie_genre(movie_id, genre_id) values (151, 1);
insert into movie_genre(movie_id, genre_id) values (151, 8);
insert into movie_genre(movie_id, genre_id) values (151, 26);

insert into movies (id, title, release_date, poster, overview) values (152, 'Devotion', '11/23/2022', 'https://m.media-amazon.com/images/M/MV5BMjI5NGJjMmEtODk4Yy00ZDRjLWE5ZGItMjJiNGM4NTI0NmZkXkEyXkFqcGdeQXVyNjk1Njg5NTA@._V1_.jpg', 'A pair of U.S. Navy fighter pilots risk their lives during the Korean War and become some of the Navy`s most celebrated wingmen.');
insert into movie_genre(movie_id, genre_id) values (152, 1);
insert into movie_genre(movie_id, genre_id) values (152, 8);
insert into movie_genre(movie_id, genre_id) values (152, 26);

insert into movies (id, title, release_date, poster, overview) values (153, 'Medieval', '11/8/2022', 'https://m.media-amazon.com/images/M/MV5BNmEyNjNkYTUtNTJkYi00MjRlLWIzZTgtNmIyNzVhODA5MWJlXkEyXkFqcGdeQXVyMTA3MDk2NDg2._V1_.jpg', 'The story of fifteenth century Czech icon and warlord Jan Zizka, who defeated armies of the Teutonic Order and the Holy Roman Empire.');
insert into movie_genre(movie_id, genre_id) values (153, 1);
insert into movie_genre(movie_id, genre_id) values (153, 8);
insert into movie_genre(movie_id, genre_id) values (153, 13);
insert into movie_genre(movie_id, genre_id) values (153, 26);

insert into movies (id, title, release_date, poster, overview) values (154, 'Black Crab', '3/18/2022', 'https://m.media-amazon.com/images/M/MV5BZjMzZmIyNjUtNWE3Zi00NjIyLWIyZTUtYzhmY2NlNWU3NTU3XkEyXkFqcGdeQXVyMDM2NDM2MQ@@._V1_.jpg', 'In a post-apocalyptic world, six soldiers on a covert mission must transport a mysterious package across a frozen archipelago. Noomi Rapace stars.');
insert into movie_genre(movie_id, genre_id) values (154, 1);
insert into movie_genre(movie_id, genre_id) values (154, 2);
insert into movie_genre(movie_id, genre_id) values (154, 8);
insert into movie_genre(movie_id, genre_id) values (154, 21);
insert into movie_genre(movie_id, genre_id) values (154, 25);
insert into movie_genre(movie_id, genre_id) values (154, 26);

insert into movies (id, title, release_date, poster, overview) values (160, 'Tár', '2/9/2023', 'https://m.media-amazon.com/images/M/MV5BM2I0ZDcyYzItMGEyNi00YWVhLTlmNTQtOWVlYjE1ZGVhNWM0XkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_.jpg', 'Set in the international world of Western classical music, the film centers on Lydia Tár, widely considered one of the greatest living composer-conductors and first-ever female music director of a major German orchestra.');
insert into movies (id, title, release_date, poster, overview) values (155, 'Sniper. The White Raven', '8/24/2022', 'https://m.media-amazon.com/images/M/MV5BNWMwOTgyNmMtYWNlYS00NGIyLTllOWYtZTVlNzU3N2ViZWQ5XkEyXkFqcGdeQXVyMzk3OTUyMDY@._V1_.jpg', 'After suffering a tragedy at the hand of invading soldiers in Donbas, an Ukrainian physics teacher seeks revenge. He sets his sights on an elite Russian sniper whose elimination could change the tide of the conflict.');
insert into movie_genre(movie_id, genre_id) values (160, 4);
insert into movie_genre(movie_id, genre_id) values (155, 8);
insert into movie_genre(movie_id, genre_id) values (160, 8);
insert into movie_genre(movie_id, genre_id) values (155, 26);
insert into movie_genre(movie_id, genre_id) values (160, 15);


insert into movies (id, title, release_date, poster, overview) values (156, 'Attack on Titan', '9/30/2022', 'https://m.media-amazon.com/images/M/MV5BN2MyODIwNjUtZjNiZi00NDkyLTg5N2UtOWNiY2RkZDcwNTE2XkEyXkFqcGdeQXVyMTg2OTI1Mzg@._V1_.jpg', 'As viable water is depleted on Earth, a mission is sent to Saturn`s moon Titan to retrieve sustainable H2O reserves from its alien inhabitants. But just as the humans acquire the precious resource, they are attacked by Titan rebels, who don`t trust that the Earthlings will leave in peace.');
insert into movies (id, title, release_date, poster, overview) values (161, 'Elvis', '6/24/2022', 'https://m.media-amazon.com/images/M/MV5BYzMzNTJjYmMtZTkxNS00MjI4LWI3YmQtOTQ4MDZjZDJlZjQyXkEyXkFqcGdeQXVyNjc0NzQzNTM@._V1_.jpg', 'The life of American music icon Elvis Presley, from his childhood to becoming a rock and movie star in the 1950s while maintaining a complex relationship with his manager, Colonel Tom Parker.');
insert into movie_genre(movie_id, genre_id) values (156, 1);
insert into movie_genre(movie_id, genre_id) values (161, 4);
insert into movie_genre(movie_id, genre_id) values (156, 2);
insert into movie_genre(movie_id, genre_id) values (161, 8);
insert into movie_genre(movie_id, genre_id) values (156, 21);
insert into movie_genre(movie_id, genre_id) values (161, 15);
insert into movie_genre(movie_id, genre_id) values (156, 26);


insert into movies (id, title, release_date, poster, overview) values (162, 'Meurtres sans ordonnance', '10/26/2022', 'https://m.media-amazon.com/images/M/MV5BMDQ5ZDE4ZDEtNDU5Yi00ZWRkLWExYTAtMDFmOGU5ZDU5MTFlXkEyXkFqcGdeQXVyMTA3MTI2ODc5._V1_.jpg', 'An infamous caregiver is implicated in the deaths of hundreds of hospital patients.');
insert into movies (id, title, release_date, poster, overview) values (157, 'Gulltransporten', '12/15/2022', 'https://m.media-amazon.com/images/M/MV5BMjAwODU1MWMtYWYxZS00YmRkLWIzMWQtYzVlZjNkYjE3OTQzXkEyXkFqcGdeQXVyMDMxMTgwOQ@@._V1_.jpg', 'He`s not the bravest of men, but he`s given a great responsibility and an enormous task - to get the whole Norwegian gold reserve away from the Germans during the invasion of Norway during the outbreak of WW2.');
insert into movie_genre(movie_id, genre_id) values (162, 4);
insert into movie_genre(movie_id, genre_id) values (157, 8);
insert into movie_genre(movie_id, genre_id) values (162, 6);
insert into movie_genre(movie_id, genre_id) values (157, 25);
insert into movie_genre(movie_id, genre_id) values (162, 8);
insert into movie_genre(movie_id, genre_id) values (157, 26);
insert into movie_genre(movie_id, genre_id) values (162, 25);


insert into movies (id, title, release_date, poster, overview) values (158, 'Operation Seawolf', '10/6/2022', 'https://m.media-amazon.com/images/M/MV5BNWU4N2I5MGYtMTJlNy00YzViLWFmZWMtOTg4MDk4OWNiMzBjXkEyXkFqcGdeQXVyMzQwMTY2Nzk@._V1_.jpg', 'In the last days of WWII, Germany, desperate for any last grasp to defeat the allied powers, formed together the German Navy and the last remaining U-Boats, for one last mission, to attack the United States Homeland.');
insert into movies (id, title, release_date, poster, overview) values (163, 'Johnny', '9/23/2022', 'https://m.media-amazon.com/images/M/MV5BMTkxOWIyNjItMzhkYS00NDMyLWIyNDctNjFkOTBlZDliY2EwXkEyXkFqcGdeQXVyMTEwMTY3NDI@._V1_.jpg', 'Love for the world and other people and about the fact that everyone deserves a second chance. When Patryk receives it from a priest Jan Kaczkowski does not even suspect how it will change his life.');
insert into movie_genre(movie_id, genre_id) values (158, 1);
insert into movie_genre(movie_id, genre_id) values (163, 4);
insert into movie_genre(movie_id, genre_id) values (158, 2);
insert into movie_genre(movie_id, genre_id) values (163, 8);
insert into movie_genre(movie_id, genre_id) values (158, 13);

insert into movie_genre(movie_id, genre_id) values (158, 17);
insert into movies (id, title, release_date, poster, overview) values (164, 'Plavkyně', '11/23/2022', 'https://m.media-amazon.com/images/M/MV5BOGZmMWM1NTItYzBhYi00YjEzLWI3OTQtNWM4ZDhjMDkxYWEwXkEyXkFqcGdeQXVyMTEzMTI1Mjk3._V1_.jpg', 'From war-torn Syria to the 2016 Rio Olympics, two young sisters embark on a harrowing journey as refugees, putting both their hearts and champion swimming skills to heroic use.');
insert into movie_genre(movie_id, genre_id) values (158, 25);
insert into movie_genre(movie_id, genre_id) values (164, 4);
insert into movie_genre(movie_id, genre_id) values (158, 26);
insert into movie_genre(movie_id, genre_id) values (164, 8);

insert into movie_genre(movie_id, genre_id) values (164, 23);
insert into movies (id, title, release_date, poster, overview) values (159, 'Die Wannseekonferenz', '4/7/2022', 'https://m.media-amazon.com/images/M/MV5BMzEyNWJlY2MtNDcwYi00NTFhLWIxZGEtOWY3NzJmNDE1NDhlXkEyXkFqcGdeQXVyMDAyMjM2OQ@@._V1_.jpg', 'On January 20, 1942, leading representatives of the German Nazi regime met in a villa in Berlin-Wannsee for a meeting that went down in history as the Wannsee Conference, at which the systematic murder of 11 million Jews was decided.');

insert into movie_genre(movie_id, genre_id) values (159, 8);
insert into movies (id, title, release_date, poster, overview) values (165, 'שלושה עשר חיים', '8/5/2022', 'https://m.media-amazon.com/images/M/MV5BNzI4YzkyMTYtYmQ1MC00NjYwLThkMDgtY2E1Njg1MTAzZWJhXkEyXkFqcGdeQXVyMDM2NDM2MQ@@._V1_.jpg', 'A rescue mission is assembled in Thailand where a group of young boys and their soccer coach are trapped in a system of underground caves that are flooding.');
insert into movie_genre(movie_id, genre_id) values (159, 13);
insert into movie_genre(movie_id, genre_id) values (165, 1);
insert into movie_genre(movie_id, genre_id) values (159, 26);
insert into movie_genre(movie_id, genre_id) values (165, 2);

insert into movie_genre(movie_id, genre_id) values (165, 4);
insert into movie_genre(movie_id, genre_id) values (165, 8);
insert into movie_genre(movie_id, genre_id) values (165, 25);

insert into movies (id, title, release_date, poster, overview) values (166, 'Navalny', '5/1/2022', 'https://m.media-amazon.com/images/M/MV5BZDcxZjVlYTMtNDRmYi00M2YyLTg2NjItNmZmMmVjYzgxNmRmXkEyXkFqcGdeQXVyNzI5MDE3MQ@@._V1_.jpg', 'Follows the man who survived an assassination attempt by poisoning with a lethal nerve agent in August 2020. During his months-long recovery he makes shocking discoveries about the attempt on his life and decides to return home.');
insert into movie_genre(movie_id, genre_id) values (166, 7);
insert into movie_genre(movie_id, genre_id) values (166, 4);

insert into movies (id, title, release_date, poster, overview) values (167, 'Argentina, 1985', '9/29/2022', 'https://m.media-amazon.com/images/M/MV5BMjhiYzUwZTYtYzU2MC00N2UwLTkwNmMtMGI1MTZjYzljNDZjXkEyXkFqcGdeQXVyNjk1Njg5NTA@._V1_.jpg', 'A team of lawyers takes on the heads of Argentina`s bloody military dictatorship during the 1980s in a battle against odds and a race against time.');
insert into movie_genre(movie_id, genre_id) values (167, 4);
insert into movie_genre(movie_id, genre_id) values (167, 6);
insert into movie_genre(movie_id, genre_id) values (167, 8);
insert into movie_genre(movie_id, genre_id) values (167, 13);

insert into movies (id, title, release_date, poster, overview) values (168, 'Fire of Love', '7/22/2022', 'https://m.media-amazon.com/images/M/MV5BOTMwNjMxOWQtYTEyOC00OTUyLTlhMTItOGFkOTJkMWM1NDQ5XkEyXkFqcGdeQXVyMTAyMjQ3NzQ1._V1_.jpg', 'Intrepid scientists and lovers Katia and Maurice Krafft died in a volcanic explosion doing the very thing that brought them together: unraveling the mysteries of volcanoes by capturing the most explosive imagery ever recorded.');
insert into movie_genre(movie_id, genre_id) values (168, 7);
insert into movie_genre(movie_id, genre_id) values (168, 4);

insert into movies (id, title, release_date, poster, overview) values (169, 'Gangubai Kathiawadi', '1/1/2022', 'https://m.media-amazon.com/images/M/MV5BODA0NjE5ZWEtNmUxZS00ZWRmLThjOGEtZjRmNThkZDU4OGFiXkEyXkFqcGdeQXVyODE5NzE3OTE@._V1_.jpg', 'Duped and sold to a brothel, a young woman fearlessly reclaims her power, using underworld connections to preside over the world she was once a pawn in.');
insert into movie_genre(movie_id, genre_id) values (169, 4);
insert into movie_genre(movie_id, genre_id) values (169, 6);
insert into movie_genre(movie_id, genre_id) values (169, 8);

insert into movies (id, title, release_date, poster, overview) values (170, 'Avatar - La via dell`acqua', '12/14/2022', 'https://m.media-amazon.com/images/M/MV5BYjhiNjBlODctY2ZiOC00YjVlLWFlNzAtNTVhNzM1YjI1NzMxXkEyXkFqcGdeQXVyMjQxNTE1MDA@._V1_.jpg', 'Jake Sully lives with his newfound family formed on the extrasolar moon Pandora. Once a familiar threat returns to finish what was previously started, Jake must work with Neytiri and the army of the Na`vi race to protect their home.');
insert into movies (id, title, release_date, poster, overview) values (180, 'Tár', '2/9/2023', 'https://m.media-amazon.com/images/M/MV5BM2I0ZDcyYzItMGEyNi00YWVhLTlmNTQtOWVlYjE1ZGVhNWM0XkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_.jpg', 'Set in the international world of Western classical music, the film centers on Lydia Tár, widely considered one of the greatest living composer-conductors and first-ever female music director of a major German orchestra.');
insert into movie_genre(movie_id, genre_id) values (170, 1);
insert into movies (id, title, release_date, poster, overview) values (190, 'Puss in Boots: The Last Wish', '12/21/2022', 'https://m.media-amazon.com/images/M/MV5BNjMyMDBjMGUtNDUzZi00N2MwLTg1MjItZTk2MDE1OTZmNTYxXkEyXkFqcGdeQXVyMTQ5NjA0NDM0._V1_.jpg', 'Puss in Boots discovers that his passion for adventure has taken its toll: he has burned through eight of his nine lives. Puss sets out on an epic journey to find the mythical Last Wish and restore his nine lives.');
insert into movie_genre(movie_id, genre_id) values (180, 4);
insert into movie_genre(movie_id, genre_id) values (170, 2);
insert into movie_genre(movie_id, genre_id) values (190, 3);
insert into movie_genre(movie_id, genre_id) values (180, 8);
insert into movie_genre(movie_id, genre_id) values (170, 10);
insert into movies (id, title, release_date, poster, overview) values (200, 'Puss in Boots: The Last Wish', '12/21/2022', 'https://m.media-amazon.com/images/M/MV5BNjMyMDBjMGUtNDUzZi00N2MwLTg1MjItZTk2MDE1OTZmNTYxXkEyXkFqcGdeQXVyMTQ5NjA0NDM0._V1_.jpg', 'Puss in Boots discovers that his passion for adventure has taken its toll: he has burned through eight of his nine lives. Puss sets out on an epic journey to find the mythical Last Wish and restore his nine lives.');
insert into movie_genre(movie_id, genre_id) values (190, 2);
insert into movie_genre(movie_id, genre_id) values (180, 15);
insert into movie_genre(movie_id, genre_id) values (170, 21);
insert into movie_genre(movie_id, genre_id) values (200, 3);
insert into movie_genre(movie_id, genre_id) values (190, 5);


insert into movie_genre(movie_id, genre_id) values (200, 2);
insert into movie_genre(movie_id, genre_id) values (190, 9);
insert into movie_genre(movie_id, genre_id) values (200, 5);
insert into movie_genre(movie_id, genre_id) values (190, 10);
insert into movies (id, title, release_date, poster, overview) values (181, 'Elvis', '6/24/2022', 'https://m.media-amazon.com/images/M/MV5BYzMzNTJjYmMtZTkxNS00MjI4LWI3YmQtOTQ4MDZjZDJlZjQyXkEyXkFqcGdeQXVyNjc0NzQzNTM@._V1_.jpg', 'The life of American music icon Elvis Presley, from his childhood to becoming a rock and movie star in the 1950s while maintaining a complex relationship with his manager, Colonel Tom Parker.');
insert into movie_genre(movie_id, genre_id) values (200, 9);
insert into movie_genre(movie_id, genre_id) values (190, 17);
insert into movie_genre(movie_id, genre_id) values (181, 4);
insert into movies (id, title, release_date, poster, overview) values (171, 'Everything Everywhere All at Once', '5/19/2022', 'https://m.media-amazon.com/images/M/MV5BYTdiOTIyZTQtNmQ1OS00NjZlLWIyMTgtYzk5Y2M3ZDVmMDk1XkEyXkFqcGdeQXVyMTAzMDg4NzU0._V1_.jpg', 'An aging Chinese immigrant is swept up in an insane adventure, in which she alone can save the world by exploring other universes connecting with the lives she could have led.');
insert into movie_genre(movie_id, genre_id) values (200, 10);
insert into movie_genre(movie_id, genre_id) values (190, 20);
insert into movie_genre(movie_id, genre_id) values (181, 8);
insert into movie_genre(movie_id, genre_id) values (171, 1);
insert into movie_genre(movie_id, genre_id) values (200, 17);

insert into movie_genre(movie_id, genre_id) values (181, 15);
insert into movie_genre(movie_id, genre_id) values (171, 2);
insert into movie_genre(movie_id, genre_id) values (200, 20);
insert into movies (id, title, release_date, poster, overview) values (191, 'Nope', '8/18/2022', 'https://m.media-amazon.com/images/M/MV5BMGIyNTI3NWItNTJkOS00MGYyLWE4NjgtZDhjMWQ4Y2JkZTU5XkEyXkFqcGdeQXVyNjY1MTg4Mzc@._V1_.jpg', 'The residents of a lonely gulch in inland California bear witness to an uncanny and chilling discovery.');

insert into movie_genre(movie_id, genre_id) values (171, 5);

insert into movie_genre(movie_id, genre_id) values (191, 14);
insert into movies (id, title, release_date, poster, overview) values (182, 'Fisherman`s Friends: One and All', '11/18/2022', 'https://m.media-amazon.com/images/M/MV5BM2Y5YzdmNDQtM2Q5ZC00YTE2LTllZWItZDcxMDAzZDFkMDdlXkEyXkFqcGdeQXVyMTQzNzQyODgz._V1_.jpg', 'Following the success of their first album, the Fisherman`s Friends struggle to adjust to their new-found fame and work towards a second album.');
insert into movie_genre(movie_id, genre_id) values (171, 10);
insert into movies (id, title, release_date, poster, overview) values (201, 'The Lost City', '3/25/2022', 'https://m.media-amazon.com/images/M/MV5BMmIwYzFhODAtY2I1YS00ZDdmLTkyYWQtZjI5NDIwMDc2MjEyXkEyXkFqcGdeQXVyODk4OTc3MTY@._V1_.jpg', 'A reclusive romance novelist on a book tour with her cover model gets swept up in a kidnapping attempt that lands them both in a cutthroat jungle adventure.');
insert into movie_genre(movie_id, genre_id) values (191, 17);
insert into movie_genre(movie_id, genre_id) values (182, 5);
insert into movie_genre(movie_id, genre_id) values (171, 21);
insert into movie_genre(movie_id, genre_id) values (201, 1);
insert into movie_genre(movie_id, genre_id) values (191, 21);
insert into movie_genre(movie_id, genre_id) values (182, 8);

insert into movie_genre(movie_id, genre_id) values (201, 2);
insert into movie_genre(movie_id, genre_id) values (191, 25);
insert into movie_genre(movie_id, genre_id) values (182, 15);
insert into movies (id, title, release_date, poster, overview) values (172, 'M3gan', '1/4/2023', 'https://m.media-amazon.com/images/M/MV5BOGYzYjI5Y2YtNTRkOC00YjdhLWI5MGYtMGU2ZDZlMmEyNGMyXkEyXkFqcGdeQXVyMTA3MDk2NDg2._V1_.jpg', 'A robotics engineer at a toy company builds a life-like doll that begins to take on a life of its own.');
insert into movie_genre(movie_id, genre_id) values (201, 5);


insert into movie_genre(movie_id, genre_id) values (172, 14);
insert into movie_genre(movie_id, genre_id) values (201, 20);
insert into movies (id, title, release_date, poster, overview) values (192, 'Glass Onion - Knives Out', '12/23/2022', 'https://m.media-amazon.com/images/M/MV5BYmZlZDZkZjYtNzE5Mi00ODFhLTk2OTgtZWVmODBiZTI4NGFiXkEyXkFqcGdeQXVyMTE5MTg5NDIw._V1_.jpg', 'Famed Southern detective Benoit Blanc travels to Greece for his latest case.');

insert into movies (id, title, release_date, poster, overview) values (183, 'Entergalactic', '9/30/2022', 'https://m.media-amazon.com/images/M/MV5BNTkwZGQzYmItYWQ1Ni00Mjk4LThmZDUtYjRiOTkzZmI2MGE0XkEyXkFqcGdeQXVyNjk1Njg5NTA@._V1_.jpg', 'Jabari, a charming, streetwear-clad artist on the cusp of real success. After a chance run-in with his cool new photographer neighbor, Meadow, Jabari has to figure out whether he can make space for love in his life.');
insert into movies (id, title, release_date, poster, overview) values (202, 'Shotgun Wedding', '1/27/2023', 'https://m.media-amazon.com/images/M/MV5BMDA5ZjdmYTEtYTBmZi00ZjFmLWFkNWUtMTIyMGYzZGNjZjkxXkEyXkFqcGdeQXVyMTQzNTA5MzYz._V1_.jpg', 'A couple`s extravagant destination wedding is hijacked by criminals. In the process of saving their families, they rediscover why they fell in love in the first place.');
insert into movie_genre(movie_id, genre_id) values (183, 3);
insert into movie_genre(movie_id, genre_id) values (172, 21);
insert into movie_genre(movie_id, genre_id) values (183, 5);
insert into movie_genre(movie_id, genre_id) values (202, 1);
insert into movie_genre(movie_id, genre_id) values (172, 25);
insert into movie_genre(movie_id, genre_id) values (183, 15);
insert into movie_genre(movie_id, genre_id) values (202, 5);

insert into movie_genre(movie_id, genre_id) values (192, 5);
insert into movie_genre(movie_id, genre_id) values (183, 20);
insert into movie_genre(movie_id, genre_id) values (202, 20);
insert into movies (id, title, release_date, poster, overview) values (173, 'Nope', '8/18/2022', 'https://m.media-amazon.com/images/M/MV5BMGIyNTI3NWItNTJkOS00MGYyLWE4NjgtZDhjMWQ4Y2JkZTU5XkEyXkFqcGdeQXVyNjY1MTg4Mzc@._V1_.jpg', 'The residents of a lonely gulch in inland California bear witness to an uncanny and chilling discovery.');
insert into movie_genre(movie_id, genre_id) values (192, 6);


insert into movie_genre(movie_id, genre_id) values (173, 14);
insert into movie_genre(movie_id, genre_id) values (192, 8);
insert into movies (id, title, release_date, poster, overview) values (184, 'Studio 666', '3/31/2022', 'https://m.media-amazon.com/images/M/MV5BMmU5NjEzNmUtOGFhMC00M2E0LWE1NjYtZGRhZDcxYTRjNTcyXkEyXkFqcGdeQXVyMDA4NzMyOA@@._V1_.jpg', 'Legendary rock band Foo Fighters move into an Encino mansion steeped in grisly rock and roll history to record their much anticipated 10th album.');
insert into movies (id, title, release_date, poster, overview) values (203, 'Bros', '9/30/2022', 'https://m.media-amazon.com/images/M/MV5BMzI4MDg3NDEtOTg1OC00MDdjLWEzY2QtMmFmMWNlNTcxZDIxXkEyXkFqcGdeQXVyMjMxOTE0ODA@._V1_.jpg', 'Two men with commitment problems attempt a relationship.');
insert into movie_genre(movie_id, genre_id) values (173, 17);
insert into movie_genre(movie_id, genre_id) values (192, 17);
insert into movie_genre(movie_id, genre_id) values (184, 5);
insert into movie_genre(movie_id, genre_id) values (203, 5);
insert into movie_genre(movie_id, genre_id) values (173, 21);
insert into movie_genre(movie_id, genre_id) values (192, 25);
insert into movie_genre(movie_id, genre_id) values (184, 14);
insert into movie_genre(movie_id, genre_id) values (203, 20);
insert into movie_genre(movie_id, genre_id) values (173, 25);

insert into movie_genre(movie_id, genre_id) values (184, 15);


insert into movies (id, title, release_date, poster, overview) values (193, 'Scream', '1/14/2022', 'https://m.media-amazon.com/images/M/MV5BYjExYTcwYmYtMWY2Zi00MGJlLTk3YjUtZTU1Zjg4MDc0Y2FjXkEyXkFqcGdeQXVyODE5NzE3OTE@._V1_.jpg', '25 years after a streak of brutal murders shocked the quiet town of Woodsboro, Calif., a new killer dons the Ghostface mask and begins targeting a group of teenagers to resurrect secrets from the town`s deadly past.');

insert into movies (id, title, release_date, poster, overview) values (174, 'Black Panther: Wakanda Forever', '11/11/2022', 'https://m.media-amazon.com/images/M/MV5BNTM4NjIxNmEtYWE5NS00NDczLTkyNWQtYThhNmQyZGQzMjM0XkEyXkFqcGdeQXVyODk4OTc3MTY@._V1_.jpg', 'The people of Wakanda fight to protect their home from intervening world powers as they mourn the death of King T`Challa.');
insert into movies (id, title, release_date, poster, overview) values (204, 'After Ever Happy', '9/23/2022', 'https://m.media-amazon.com/images/M/MV5BYWUwMjZmZGYtYjIyOS00YTY2LWFiMjMtNWYyMjdlNmUwY2FmXkEyXkFqcGdeQXVyMTUzNDkzNDY@._V1_.jpg', 'As a shocking truth about a couple`s families emerges, the two lovers discover they are not so different from each other. Tessa is no longer the sweet, simple, good girl she was when she met Hardin — any more than he is the cruel, moody boy she fell so hard for.');
insert into movie_genre(movie_id, genre_id) values (174, 1);
insert into movie_genre(movie_id, genre_id) values (193, 14);
insert into movies (id, title, release_date, poster, overview) values (185, 'Metal Lords', '4/8/2022', 'https://m.media-amazon.com/images/M/MV5BNjJjMzI1ZDctMDhmMy00Nzk2LTg5ZjgtNGIyN2QyNDQwMDU5XkEyXkFqcGdeQXVyMTMyNzMxNTcw._V1_.jpg', 'Two friends try to form a heavy metal band with a cellist for a Battle of the Bands.');
insert into movie_genre(movie_id, genre_id) values (204, 8);
insert into movie_genre(movie_id, genre_id) values (174, 2);
insert into movie_genre(movie_id, genre_id) values (193, 17);
insert into movie_genre(movie_id, genre_id) values (185, 5);
insert into movie_genre(movie_id, genre_id) values (204, 20);
insert into movie_genre(movie_id, genre_id) values (174, 8);
insert into movie_genre(movie_id, genre_id) values (193, 25);
insert into movie_genre(movie_id, genre_id) values (185, 15);

insert into movie_genre(movie_id, genre_id) values (174, 10);


insert into movies (id, title, release_date, poster, overview) values (205, 'Redeeming Love', '1/21/2022', 'https://m.media-amazon.com/images/M/MV5BMTMxMmRmMWUtNGNhZS00MWYxLTkwNzUtM2QwNzI4MGU1ZTI2XkEyXkFqcGdeQXVyNTQ3MjE4NTU@._V1_.jpg', 'Sold into prostitution as a child, Angel knows nothing but betrayal. Can her heart ever be mended? Based upon the novel by Francine Rivers.');
insert into movie_genre(movie_id, genre_id) values (174, 21);
insert into movies (id, title, release_date, poster, overview) values (194, 'Έγκλημα στον Νείλο', '2/10/2022', 'https://m.media-amazon.com/images/M/MV5BNjI4ZTQ1OTYtNTI0Yi00M2EyLThiNjMtMzk1MmZlOWMyMDQwXkEyXkFqcGdeQXVyMTEyMjM2NDc2._V1_.jpg', 'While on vacation on the Nile, Hercule Poirot must investigate the murder of a young heiress.');
insert into movies (id, title, release_date, poster, overview) values (186, 'Holiday Harmony', '11/24/2022', 'https://m.media-amazon.com/images/M/MV5BOGFiMzAwNmYtMDM1NS00M2EyLTg5NjAtZTA0MmVmOWNiZTdmXkEyXkFqcGdeQXVyMzU0MDMzNw@@._V1_.jpg', 'A likeable and talented underdog gets momentarily sidelined from chasing her musical dreams when her van breaks down in a welcoming small town just before Christmas.');
insert into movie_genre(movie_id, genre_id) values (205, 8);
insert into movie_genre(movie_id, genre_id) values (174, 25);
insert into movie_genre(movie_id, genre_id) values (194, 6);
insert into movie_genre(movie_id, genre_id) values (186, 5);
insert into movie_genre(movie_id, genre_id) values (205, 20);

insert into movie_genre(movie_id, genre_id) values (194, 8);
insert into movie_genre(movie_id, genre_id) values (186, 8);

insert into movies (id, title, release_date, poster, overview) values (175, 'Sonic the Hedgehog 2', '4/8/2022', 'https://m.media-amazon.com/images/M/MV5BODRlNTY5ZjktZjE0Ni00YjZhLTk3NTItYzk0ZjYxN2QxMWEzXkEyXkFqcGdeQXVyMjMwNDgzNjc@._V1_.jpg', 'When the manic Dr Robotnik returns to Earth with a new ally, Knuckles the Echidna, Sonic and his new friend Tails is all that stands in their way.');
insert into movie_genre(movie_id, genre_id) values (194, 17);
insert into movie_genre(movie_id, genre_id) values (186, 15);
insert into movies (id, title, release_date, poster, overview) values (206, 'Downton Abbey II: Eine neue Ära', '4/28/2022', 'https://m.media-amazon.com/images/M/MV5BZDdjZjM1YWItNWRmOS00OTEzLWJmYjAtOGQzNTAyNmEwNDhjXkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_.jpg', 'The Crawley family goes on a grand journey to the South of France to uncover the mystery of the dowager countess`s newly inherited villa.');
insert into movie_genre(movie_id, genre_id) values (175, 1);

insert into movie_genre(movie_id, genre_id) values (186, 20);
insert into movies (id, title, release_date, poster, overview) values (195, 'The Wonder', '11/16/2022', 'https://m.media-amazon.com/images/M/MV5BNDBmNzIwY2QtMjZhOC00YzlhLWIwNjMtZDdkZjY3OWUzZDI4XkEyXkFqcGdeQXVyMTAyMjQ3NzQ1._V1_.jpg', 'A tale of two strangers who transform each other`s lives, a psychological thriller, and a story of love pitted against evil.');

insert into movie_genre(movie_id, genre_id) values (206, 8);
insert into movie_genre(movie_id, genre_id) values (195, 8);
insert into movies (id, title, release_date, poster, overview) values (187, 'Rock Dog 3: Battle the Beat', '1/24/2023', 'https://m.media-amazon.com/images/M/MV5BNTAzODc1ZTgtZjRlZC00N2E4LWExNmQtODFkZGU1NTc2ZTBhXkEyXkFqcGdeQXVyMTU3NzMyMTY2._V1_.jpg', 'When the young performers on a music contest show admit they have never heard of Angus Scattergood, Bodi is compelled to join the show to restore the Rock Legend`s good name.');
insert into movie_genre(movie_id, genre_id) values (206, 20);
insert into movie_genre(movie_id, genre_id) values (195, 17);
insert into movie_genre(movie_id, genre_id) values (187, 3);

insert into movie_genre(movie_id, genre_id) values (175, 2);
insert into movie_genre(movie_id, genre_id) values (195, 25);
insert into movie_genre(movie_id, genre_id) values (187, 2);
insert into movies (id, title, release_date, poster, overview) values (207, 'Altri 365 giorni', '8/19/2022', 'https://m.media-amazon.com/images/M/MV5BMDMzMDQ1YTgtMWMzZC00ZGM4LThmNGYtODNiOWNmM2Y0ZGMyXkEyXkFqcGdeQXVyMTQyMTMwOTk0._V1_.jpg', 'Laura and Massimo`s relationship hangs in the balance as they try to overcome trust issues and jealousy while a tenacious Nacho works to push them apart.');
insert into movie_genre(movie_id, genre_id) values (175, 5);

insert into movie_genre(movie_id, genre_id) values (187, 5);
insert into movie_genre(movie_id, genre_id) values (207, 8);
insert into movie_genre(movie_id, genre_id) values (175, 9);
insert into movies (id, title, release_date, poster, overview) values (196, 'Weißes Rauschen', '12/8/2022', 'https://m.media-amazon.com/images/M/MV5BN2Y3ZmMxNjktNzIwZi00OWFkLWIyMWQtODllMDMyNDhkM2FkXkEyXkFqcGdeQXVyMTA3MTI2ODc5._V1_.jpg', 'Dramatizes a contemporary American family`s attempts to deal with the mundane conflicts of everyday life while grappling with the universal mysteries of love, death, and the possibility of happiness in an uncertain world.');
insert into movie_genre(movie_id, genre_id) values (187, 9);
insert into movie_genre(movie_id, genre_id) values (207, 20);
insert into movie_genre(movie_id, genre_id) values (175, 10);
insert into movie_genre(movie_id, genre_id) values (196, 5);
insert into movie_genre(movie_id, genre_id) values (187, 15);

insert into movie_genre(movie_id, genre_id) values (175, 21);
insert into movie_genre(movie_id, genre_id) values (196, 8);
insert into movie_genre(movie_id, genre_id) values (187, 20);
insert into movies (id, title, release_date, poster, overview) values (208, 'Przez moje okno', '2/4/2022', 'https://m.media-amazon.com/images/M/MV5BM2JkNDZkMzEtYmVjNi00ZDIzLThhMjgtMzlmNDNmMDM2ZGM5XkEyXkFqcGdeQXVyMTA2ODkwNzM5._V1_.jpg', 'Raquel`s longtime crush on her next-door neighbor turns into something more when he starts developing feelings for her, despite his family`s objections.');

insert into movie_genre(movie_id, genre_id) values (196, 14);

insert into movie_genre(movie_id, genre_id) values (208, 5);
insert into movies (id, title, release_date, poster, overview) values (176, 'Prey', '8/5/2022', 'https://m.media-amazon.com/images/M/MV5BMDBlMDYxMDktOTUxMS00MjcxLWE2YjQtNjNhMjNmN2Y3ZDA1XkEyXkFqcGdeQXVyMTM1MTE1NDMx._V1_.jpg', 'Naru, a skilled warrior of the Comanche Nation, fights to protect her tribe against one of the first highly-evolved Predators to land on Earth.');
insert into movie_genre(movie_id, genre_id) values (196, 17);
insert into movies (id, title, release_date, poster, overview) values (188, 'CODA', '8/13/2021', 'https://m.media-amazon.com/images/M/MV5BNGNmMzJjMTItODA0OC00ZWM0LWJmMTctMDg3MzM2M2Y5NTIyXkEyXkFqcGdeQXVyMDM2NDM2MQ@@._V1_.jpg', 'As a CODA (Child of Deaf Adults) Ruby is the only hearing person in her deaf family. When the family`s fishing business is threatened, Ruby finds herself torn between pursuing her love of music by wanting to go to Berklee College of Music and her fear of abandoning her parents.');
insert into movie_genre(movie_id, genre_id) values (208, 8);
insert into movie_genre(movie_id, genre_id) values (176, 1);

insert into movie_genre(movie_id, genre_id) values (188, 8);
insert into movie_genre(movie_id, genre_id) values (208, 20);
insert into movie_genre(movie_id, genre_id) values (176, 2);
insert into movies (id, title, release_date, poster, overview) values (197, 'See How They Run', '9/9/2022', 'https://m.media-amazon.com/images/M/MV5BNzU5OTNmZDYtZjA4OC00YmQyLTk4ZjctMzVlZTYyYTE3ODUwXkEyXkFqcGdeQXVyMjM4NTM5NDY@._V1_.jpg', 'In the West End of 1950s London, plans for a movie version of a smash-hit play come to an abrupt halt after a pivotal member of the crew is murdered.');
insert into movie_genre(movie_id, genre_id) values (188, 15);

insert into movie_genre(movie_id, genre_id) values (176, 8);
insert into movie_genre(movie_id, genre_id) values (197, 5);

insert into movies (id, title, release_date, poster, overview) values (209, 'Persuasion', '7/15/2022', 'https://m.media-amazon.com/images/M/MV5BZDg3MzdiYjAtZWQ0MC00MDY4LWE5ZWEtNjliNTE3ZDZjNTU3XkEyXkFqcGdeQXVyMTAyMjQ3NzQ1._V1_.jpg', 'Eight years after Anne Elliot was persuaded not to marry a dashing man of humble origins, they meet again. Will she seize her second chance at true love?');
insert into movie_genre(movie_id, genre_id) values (176, 14);
insert into movie_genre(movie_id, genre_id) values (197, 17);
insert into movies (id, title, release_date, poster, overview) values (189, 'Ryû to sobakasu no hime', '7/16/2021', 'https://m.media-amazon.com/images/M/MV5BOGU2Yjc0Y2YtMDU0MS00NTFiLTlkMGMtOTcxOWIzMjhkZmZkXkEyXkFqcGdeQXVyMDA4NzMyOA@@._V1_.jpg', 'Suzu is a shy high school student living in a rural village. For years, she has only been a shadow of herself. But when she enters "U", a massive virtual world, she escapes into her online persona as Belle, a globally-beloved singer.');
insert into movie_genre(movie_id, genre_id) values (209, 8);
insert into movie_genre(movie_id, genre_id) values (176, 21);

insert into movie_genre(movie_id, genre_id) values (189, 3);
insert into movie_genre(movie_id, genre_id) values (209, 20);
insert into movie_genre(movie_id, genre_id) values (176, 25);
insert into movies (id, title, release_date, poster, overview) values (198, 'Deep Water', '3/18/2022', 'https://m.media-amazon.com/images/M/MV5BNTE1M2NjNDgtYjQ2Ny00YTMzLWJiYWQtMTdmM2Q2YjA1MDg1XkEyXkFqcGdeQXVyODk4OTc3MTY@._V1_.jpg', 'A well-to-do husband who allows his wife to have affairs in order to avoid a divorce becomes a prime suspect in the disappearance of her lovers.');
insert into movie_genre(movie_id, genre_id) values (189, 2);


insert into movie_genre(movie_id, genre_id) values (198, 8);
insert into movie_genre(movie_id, genre_id) values (189, 8);
insert into movies (id, title, release_date, poster, overview) values (177, 'Moonfall', '3/24/2022', 'https://m.media-amazon.com/images/M/MV5BMTRiMzVmNzgtZWUwZS00YzkyLTg5NDYtYTc2MjdjM2ZjZWYyXkEyXkFqcGdeQXVyMTQyMTMwOTk0._V1_.jpg', 'A mysterious force knocks the moon from its orbit and sends it hurtling on a collision course toward earth.');
insert into movies (id, title, release_date, poster, overview) values (210, 'Terror on the Prairie', '6/14/2022', 'https://m.media-amazon.com/images/M/MV5BMmRhMmI4NmMtYTk1MC00ZWMzLWJjYzMtZGQ4YzAxZWRjYmQ1XkEyXkFqcGdeQXVyMzUzMDQxMzI@._V1_.jpg', 'On the Montana plains, a frontier woman must protect herself against a ruthless gang of outlaws hell-bent on revenge.');
insert into movie_genre(movie_id, genre_id) values (198, 17);
insert into movie_genre(movie_id, genre_id) values (189, 10);
insert into movie_genre(movie_id, genre_id) values (177, 1);
insert into movie_genre(movie_id, genre_id) values (210, 8);
insert into movie_genre(movie_id, genre_id) values (198, 25);
insert into movie_genre(movie_id, genre_id) values (189, 15);
insert into movie_genre(movie_id, genre_id) values (177, 2);
insert into movie_genre(movie_id, genre_id) values (210, 25);

insert into movie_genre(movie_id, genre_id) values (189, 16);
insert into movie_genre(movie_id, genre_id) values (177, 21);
insert into movie_genre(movie_id, genre_id) values (210, 27);
insert into movies (id, title, release_date, poster, overview) values (199, 'Luckiest Girl Alive', '10/7/2022', 'https://m.media-amazon.com/images/M/MV5BNzJlMTE3ODEtODRjOS00Zjg4LWE0ZTYtODAwMWMwNjFmZmQyXkEyXkFqcGdeQXVyMTUzMTg2ODkz._V1_.jpg', 'A woman in New York, who seems to have things under control, is faced with a trauma that makes her life unravel.');
insert into movie_genre(movie_id, genre_id) values (189, 21);


insert into movie_genre(movie_id, genre_id) values (199, 8);

insert into movies (id, title, release_date, poster, overview) values (178, 'Morbius', '4/1/2022', 'https://m.media-amazon.com/images/M/MV5BNTA3N2Q0ZTAtODJjNy00MmQzLWJlMmItOGFmNDI0ODgxN2QwXkEyXkFqcGdeQXVyMTM0NTUzNDIy._V1_.jpg', 'Biochemist Michael Morbius tries to cure himself of a rare blood disease, but he inadvertently infects himself with a form of vampirism instead.');
insert into movies (id, title, release_date, poster, overview) values (211, '1883: The Road West', '1/2/2022', 'https://m.media-amazon.com/images/M/MV5BZDBhN2E4YWUtMDY1NS00MWYyLWI4NmYtMjk5YzUyZTgzYTc2XkEyXkFqcGdeQXVyMjg2Mjc1MjE@._V1_.jpg', 'A behind-the-scenes look at the making of Taylor Sheridan`s highly anticipated Yellowstone prequel, `1883`.');
insert into movie_genre(movie_id, genre_id) values (199, 17);
insert into movie_genre(movie_id, genre_id) values (178, 1);
insert into movie_genre(movie_id, genre_id) values (211, 27);
insert into movie_genre(movie_id, genre_id) values (199, 25);
insert into movie_genre(movie_id, genre_id) values (178, 2);
insert into movies (id, title, release_date, poster, overview) values (220, 'Massive Talent', '6/16/2022', 'https://m.media-amazon.com/images/M/MV5BNDM2ODNiMWItOWRkNS00ODE3LWE2OGYtNTZkMDJkOWI1ODMxXkEyXkFqcGdeQXVyMjMxOTE0ODA@._V1_.jpg', 'In this action-packed comedy, Nicolas Cage plays Nick Cage, channeling his iconic characters as he`s caught between a superfan (Pedro Pascal) and a CIA agent (Tiffany Haddish).');


insert into movie_genre(movie_id, genre_id) values (178, 14);
insert into movie_genre(movie_id, genre_id) values (220, 1);
insert into movies (id, title, release_date, poster, overview) values (212, 'The Power of the Dog', '11/18/2021', 'https://m.media-amazon.com/images/M/MV5BZGRhYjE2NWUtN2FkNy00NGI3LTkxYWMtMDk4Yjg5ZjI3MWI2XkEyXkFqcGdeQXVyMTEyMjM2NDc2._V1_.jpg', 'Charismatic rancher Phil Burbank inspires fear and awe in those around him. When his brother brings home a new wife and her son, Phil torments them until he finds himself exposed to the possibility of love.');
insert into movie_genre(movie_id, genre_id) values (178, 21);
insert into movie_genre(movie_id, genre_id) values (220, 5);
insert into movie_genre(movie_id, genre_id) values (212, 8);
insert into movie_genre(movie_id, genre_id) values (178, 25);
insert into movie_genre(movie_id, genre_id) values (220, 6);
insert into movie_genre(movie_id, genre_id) values (212, 20);

insert into movie_genre(movie_id, genre_id) values (220, 25);
insert into movie_genre(movie_id, genre_id) values (212, 27);
insert into movies (id, title, release_date, poster, overview) values (179, 'Strange World', '11/23/2022', 'https://m.media-amazon.com/images/M/MV5BZTk1NzQwMWQtNzVmNS00MDc4LWE1MTktMmQyYzExYWMwZDQ4XkEyXkFqcGdeQXVyODc0OTEyNDU@._V1_.jpg', 'The legendary Clades are a family of explorers whose differences threaten to topple their latest and most crucial mission.');


insert into movie_genre(movie_id, genre_id) values (179, 3);
insert into movies (id, title, release_date, poster, overview) values (221, 'Glass Onion - Knives Out', '12/23/2022', 'https://m.media-amazon.com/images/M/MV5BYmZlZDZkZjYtNzE5Mi00ODFhLTk2OTgtZWVmODBiZTI4NGFiXkEyXkFqcGdeQXVyMTE5MTg5NDIw._V1_.jpg', 'Famed Southern detective Benoit Blanc travels to Greece for his latest case.');
insert into movies (id, title, release_date, poster, overview) values (213, 'Cry Macho', '10/28/2021', 'https://m.media-amazon.com/images/M/MV5BOGQ5OTBkNzAtYWQxYy00YjIxLWJkNTAtNTM2NDMxYzdkZDVmXkEyXkFqcGdeQXVyMTEyMjM2NDc2._V1_.jpg', 'A one-time rodeo star and washed-up horse breeder takes a job to bring a man`s young son home and away from his alcoholic mom. On their journey, the horseman finds redemption through teaching the boy what it means to be a good man.');
insert into movie_genre(movie_id, genre_id) values (179, 1);
insert into movie_genre(movie_id, genre_id) values (221, 5);
insert into movie_genre(movie_id, genre_id) values (213, 8);
insert into movie_genre(movie_id, genre_id) values (179, 2);
insert into movie_genre(movie_id, genre_id) values (221, 6);
insert into movie_genre(movie_id, genre_id) values (213, 25);
insert into movie_genre(movie_id, genre_id) values (179, 5);
insert into movie_genre(movie_id, genre_id) values (221, 8);
insert into movie_genre(movie_id, genre_id) values (213, 27);
insert into movie_genre(movie_id, genre_id) values (179, 9);
insert into movie_genre(movie_id, genre_id) values (221, 17);

insert into movie_genre(movie_id, genre_id) values (179, 10);
insert into movie_genre(movie_id, genre_id) values (221, 25);
insert into movies (id, title, release_date, poster, overview) values (214, 'Old Henry', '12/23/2021', 'https://m.media-amazon.com/images/M/MV5BM2ViYWUzODctMGU2ZS00NzRjLThmOTAtYTUyOTE3OTFkYmI2XkEyXkFqcGdeQXVyNjc3MjE2MTY@._V1_.jpg', 'An action western about a farmer who takes in an injured man with a satchel of cash. When a posse comes for the money, he must decide who to trust. Defending a siege, he reveals a gunslinging talent calling his true identity into question.');
insert into movie_genre(movie_id, genre_id) values (179, 21);

insert into movie_genre(movie_id, genre_id) values (214, 25);

insert into movies (id, title, release_date, poster, overview) values (222, 'The Batman', '3/4/2022', 'https://m.media-amazon.com/images/M/MV5BMDdmMTBiNTYtMDIzNi00NGVlLWIzMDYtZTk3MTQ3NGQxZGEwXkEyXkFqcGdeQXVyMzMwOTU5MDk@._V1_.jpg', 'When a sadistic serial killer begins murdering key political figures in Gotham, Batman is forced to investigate the city`s hidden corruption and question his family`s involvement.');
insert into movie_genre(movie_id, genre_id) values (214, 27);
insert into movie_genre(movie_id, genre_id) values (222, 1);

insert into movie_genre(movie_id, genre_id) values (222, 6);
insert into movies (id, title, release_date, poster, overview) values (215, 'Spirit Untamed', '8/4/2021', 'https://m.media-amazon.com/images/M/MV5BMDVlZTEwMTItNmE4Zi00ZGFhLWI4NjgtMDdiZTA5NDdmNWYyXkEyXkFqcGdeQXVyMTEyMjM2NDc2._V1_.jpg', 'Lucky Prescott`s life is changed forever when she moves from her home in the city to a small frontier town and befriends a wild mustang named Spirit.');
insert into movie_genre(movie_id, genre_id) values (222, 8);
insert into movie_genre(movie_id, genre_id) values (215, 3);
insert into movie_genre(movie_id, genre_id) values (215, 2);
insert into movie_genre(movie_id, genre_id) values (222, 25);
insert into movie_genre(movie_id, genre_id) values (215, 5);
insert into movie_genre(movie_id, genre_id) values (215, 9);

insert into movie_genre(movie_id, genre_id) values (215, 27);
insert into movies (id, title, release_date, poster, overview) values (223, 'Έγκλημα στον Νείλο', '2/10/2022', 'https://m.media-amazon.com/images/M/MV5BNjI4ZTQ1OTYtNTI0Yi00M2EyLThiNjMtMzk1MmZlOWMyMDQwXkEyXkFqcGdeQXVyMTEyMjM2NDc2._V1_.jpg', 'While on vacation on the Nile, Hercule Poirot must investigate the murder of a young heiress.');

insert into movie_genre(movie_id, genre_id) values (223, 6);
insert into movies (id, title, release_date, poster, overview) values (216, 'The Last Son', '12/10/2021', 'https://m.media-amazon.com/images/M/MV5BYjgyNGI2ZTktYzkyOS00ZjIwLTliNTItYzI1ZDlhZTA2NWU0XkEyXkFqcGdeQXVyMTA0MjcxOTI3._V1_.jpg', 'An outlaw attempts to end his evil family line.');
insert into movie_genre(movie_id, genre_id) values (223, 8);
insert into movie_genre(movie_id, genre_id) values (216, 1);
insert into movie_genre(movie_id, genre_id) values (223, 17);
insert into movie_genre(movie_id, genre_id) values (216, 8);

insert into movie_genre(movie_id, genre_id) values (216, 27);
insert into movies (id, title, release_date, poster, overview) values (224, 'The Bad Guys', '4/22/2022', 'https://m.media-amazon.com/images/M/MV5BMDhkYmU0MzctMWEzNy00ODg1LWI3ZjAtMGZlZjkzNWVmMzVjXkEyXkFqcGdeQXVyMTM1MTE1NDMx._V1_.jpg', 'To avoid prison, a gang of notorious animal criminals pretend to seek being rehabilitated, only for their leader to secretly find that he genuinely wants to change his ways.');

insert into movie_genre(movie_id, genre_id) values (224, 3);
insert into movie_genre(movie_id, genre_id) values (224, 2);
insert into movies (id, title, release_date, poster, overview) values (217, 'News of the World', '2/10/2021', 'https://m.media-amazon.com/images/M/MV5BMDNlNmVlNDItMjE3Yi00ZTA3LWIyOTktNDhhMGFlZjk5ZDQ0XkEyXkFqcGdeQXVyMDM2NDM2MQ@@._V1_.jpg', 'A Civil War veteran agrees to deliver a girl, taken by the Kiowa people years ago, to her aunt and uncle, against her will. They travel hundreds of miles and face grave dangers as they search for a place that either can call home.');
insert into movie_genre(movie_id, genre_id) values (224, 5);
insert into movie_genre(movie_id, genre_id) values (217, 1);
insert into movie_genre(movie_id, genre_id) values (224, 6);
insert into movie_genre(movie_id, genre_id) values (217, 2);
insert into movie_genre(movie_id, genre_id) values (224, 9);
insert into movie_genre(movie_id, genre_id) values (217, 8);

insert into movie_genre(movie_id, genre_id) values (217, 27);
insert into movies (id, title, release_date, poster, overview) values (225, 'Meurtres sans ordonnance', '10/26/2022', 'https://m.media-amazon.com/images/M/MV5BMDQ5ZDE4ZDEtNDU5Yi00ZWRkLWExYTAtMDFmOGU5ZDU5MTFlXkEyXkFqcGdeQXVyMTA3MTI2ODc5._V1_.jpg', 'An infamous caregiver is implicated in the deaths of hundreds of hospital patients.');

insert into movie_genre(movie_id, genre_id) values (225, 4);
insert into movie_genre(movie_id, genre_id) values (225, 6);
insert into movies (id, title, release_date, poster, overview) values (218, 'The Inglorious Serfs', '12/24/2020', 'https://m.media-amazon.com/images/M/MV5BOTE5OTg2ZjEtOWMzZi00ODM3LTg0YTMtM2UyMjI1Yjc2YjhhXkEyXkFqcGdeQXVyMjk1NzAxNg@@._V1_.jpg', 'What if Taras Shevchenko put down his pen and took a samurai sword into his hands?');
insert into movie_genre(movie_id, genre_id) values (225, 8);
insert into movie_genre(movie_id, genre_id) values (218, 1);
insert into movie_genre(movie_id, genre_id) values (225, 25);
insert into movie_genre(movie_id, genre_id) values (218, 2);

insert into movie_genre(movie_id, genre_id) values (218, 5);
insert into movies (id, title, release_date, poster, overview) values (226, 'Violent Night', '12/2/2022', 'https://m.media-amazon.com/images/M/MV5BYzg2NWNhOWItYjA3Yi00MzhhLTg4ZmItYzM3ZTIwN2U0ZGQ5XkEyXkFqcGdeQXVyMzEyMDQzNzY@._V1_.jpg', 'When a group of mercenaries attack the estate of a wealthy family, Santa Claus must step in to save the day (and Christmas).');
insert into movie_genre(movie_id, genre_id) values (218, 27);
insert into movie_genre(movie_id, genre_id) values (226, 1);

insert into movie_genre(movie_id, genre_id) values (226, 5);
insert into movies (id, title, release_date, poster, overview) values (219, 'Disturbing the Peace', '1/17/2020', 'https://m.media-amazon.com/images/M/MV5BZWJiNzExYjgtYWY5Yy00MGIyLWFjM2MtMzZmYTIyZWFiNGVmXkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_.jpg', 'A small-town marshal who hasn`t carried a gun since he left the Texas Rangers after a tragic shooting, must pick up his gun again to battle with a gang of outlaw bikers that has invaded the town to pull off a brazen and violent heist.');
insert into movie_genre(movie_id, genre_id) values (226, 6);
insert into movie_genre(movie_id, genre_id) values (219, 1);
insert into movie_genre(movie_id, genre_id) values (226, 10);
insert into movie_genre(movie_id, genre_id) values (219, 25);
insert into movie_genre(movie_id, genre_id) values (226, 25);

insert into movie_genre(movie_id, genre_id) values (219, 27);
insert into movies (id, title, release_date, poster, overview) values (227, 'Memory', '6/16/2022', 'https://m.media-amazon.com/images/M/MV5BOGI5N2FhNzktZjZlNi00MmRjLWE1MmUtNjRlNzQyOGMzYjNhXkEyXkFqcGdeQXVyMDA4NzMyOA@@._V1_.jpg', 'An assassin-for-hire finds that he`s become a target after he refuses to complete a job for a dangerous criminal organization.');

insert into movie_genre(movie_id, genre_id) values (227, 1);
insert into movie_genre(movie_id, genre_id) values (227, 6);
insert into movie_genre(movie_id, genre_id) values (227, 25);

insert into movies (id, title, release_date, poster, overview) values (228, 'DC League of Super-Pets', '7/29/2022', 'https://m.media-amazon.com/images/M/MV5BZTIyNzc3NzMtNGE5YS00Yjg5LTk5MDMtOTUxMzk1ZTBkOTgwXkEyXkFqcGdeQXVyODE5NzE3OTE@._V1_.jpg', 'Krypto the Super-Dog and Superman are inseparable best friends, sharing the same superpowers and fighting crime side by side in Metropolis. However, Krypto must master his own powers for a rescue mission when Superman is kidnapped.');
insert into movie_genre(movie_id, genre_id) values (228, 3);
insert into movie_genre(movie_id, genre_id) values (228, 1);
insert into movie_genre(movie_id, genre_id) values (228, 2);
insert into movie_genre(movie_id, genre_id) values (228, 5);
insert into movie_genre(movie_id, genre_id) values (228, 6);
insert into movie_genre(movie_id, genre_id) values (228, 9);
insert into movie_genre(movie_id, genre_id) values (228, 10);
insert into movie_genre(movie_id, genre_id) values (228, 21);

insert into movies (id, title, release_date, poster, overview) values (229, 'Enola Holmes 2', '11/4/2022', 'https://m.media-amazon.com/images/M/MV5BMDI1NWM1ZDItNDFhMi00YWRhLTg1YzItNTNhY2M2N2QzY2FkXkEyXkFqcGdeQXVyMTEyMjM2NDc2._V1_.jpg', 'Now a detective-for-hire, Enola Holmes takes on her first official case to find a missing girl as the sparks of a dangerous conspiracy ignite a mystery that requires the help of friends - and Sherlock himself - to unravel.');
insert into movie_genre(movie_id, genre_id) values (229, 1);
insert into movie_genre(movie_id, genre_id) values (229, 2);
insert into movie_genre(movie_id, genre_id) values (229, 6);
insert into movie_genre(movie_id, genre_id) values (229, 8);
insert into movie_genre(movie_id, genre_id) values (229, 17);





--
--
----ASSOCIATIVE ENTITY MOVIE-GENRE DATA
--
--
insert into user_genre (user_id, genre_id) values((select user_id from users where username='user'),(select genre_id from genre where genre_name = 'Comedy'));
insert into user_genre (user_id, genre_id) values((select user_id from users where username='user'),(select genre_id from genre where genre_name = 'Crime'));

COMMIT TRANSACTION;
