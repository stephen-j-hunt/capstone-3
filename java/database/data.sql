BEGIN TRANSACTION;

INSERT INTO users (username,password_hash,role) VALUES ('user','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_USER');
INSERT INTO users (username,password_hash,role) VALUES ('admin','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_ADMIN');

insert into movies (movie_id, title, release_date, genre, poster) values (1, 'Parasites, Les', '7/14/2022', 'Comedy', 'http://dummyimage.com/149x100.png/ff4444/ffffff');
insert into movies (movie_id, title, release_date, genre, poster) values (2, 'Hero (Ying xiong)', '1/1/2023', 'Action|Adventure|Drama', 'http://dummyimage.com/247x100.png/dddddd/000000');
insert into movies (movie_id, title, release_date, genre, poster) values (3, 'Proposal, The', '8/13/2022', 'Comedy|Romance', 'http://dummyimage.com/117x100.png/5fa2dd/ffffff');
insert into movies (movie_id, title, release_date, genre, poster) values (4, 'Searching for Sugar Man', '7/13/2022', 'Documentary', 'http://dummyimage.com/163x100.png/ff4444/ffffff');
insert into movies (movie_id, title, release_date, genre, poster) values (5, 'Mask, The', '4/7/2023', 'Action|Comedy|Crime|Fantasy', 'http://dummyimage.com/196x100.png/cc0000/ffffff');
insert into movies (movie_id, title, release_date, genre, poster) values (6, 'Last Run', '4/7/2023', 'Action|Crime|Thriller', 'http://dummyimage.com/222x100.png/5fa2dd/ffffff');
insert into movies (movie_id, title, release_date, genre, poster) values (7, 'Cherry Orchard, The (Sakura no sono)', '9/5/2022', 'Drama', 'http://dummyimage.com/248x100.png/dddddd/000000');
insert into movies (movie_id, title, release_date, genre, poster) values (8, 'Gangs of Wasseypur', '1/17/2023', 'Crime|Drama', 'http://dummyimage.com/175x100.png/cc0000/ffffff');
insert into movies (movie_id, title, release_date, genre, poster) values (9, 'Penguins of Madagascar', '4/15/2022', 'Adventure|Animation|Children|Comedy', 'http://dummyimage.com/207x100.png/5fa2dd/ffffff');
insert into movies (movie_id, title, release_date, genre, poster) values (10, 'It''s Me, It''s Me (Ore Ore)', '7/1/2022', 'Comedy|Drama|Sci-Fi', 'http://dummyimage.com/201x100.png/5fa2dd/ffffff');
insert into movies (movie_id, title, release_date, genre, poster) values (11, 'Grave Encounters 2', '3/14/2023', 'Horror', 'http://dummyimage.com/158x100.png/ff4444/ffffff');
insert into movies (movie_id, title, release_date, genre, poster) values (12, 'Iron Monkey (Siu nin Wong Fei-hung ji: Tit Ma Lau)', '12/19/2022', 'Action|Comedy', 'http://dummyimage.com/186x100.png/5fa2dd/ffffff');
insert into movies (movie_id, title, release_date, genre, poster) values (13, 'Cleaner', '1/10/2023', 'Crime|Thriller', 'http://dummyimage.com/226x100.png/dddddd/000000');
insert into movies (movie_id, title, release_date, genre, poster) values (14, 'Adventures of Tarzan', '9/22/2022', 'Action|Adventure', 'http://dummyimage.com/245x100.png/cc0000/ffffff');
insert into movies (movie_id, title, release_date, genre, poster) values (15, 'Transporter 3', '7/30/2022', 'Action|Adventure|Crime|Thriller', 'http://dummyimage.com/221x100.png/ff4444/ffffff');
insert into movies (movie_id, title, release_date, genre, poster) values (16, 'Bedazzled', '11/27/2022', 'Comedy', 'http://dummyimage.com/134x100.png/ff4444/ffffff');
insert into movies (movie_id, title, release_date, genre, poster) values (17, 'Moliere', '1/16/2023', 'Drama', 'http://dummyimage.com/123x100.png/cc0000/ffffff');
insert into movies (movie_id, title, release_date, genre, poster) values (18, 'Best of the Best', '5/4/2022', 'Action', 'http://dummyimage.com/106x100.png/dddddd/000000');
insert into movies (movie_id, title, release_date, genre, poster) values (19, 'Honeymoon', '5/31/2022', 'Horror', 'http://dummyimage.com/138x100.png/5fa2dd/ffffff');
insert into movies (movie_id, title, release_date, genre, poster) values (20, 'Ping Pong', '6/28/2022', 'Documentary', 'http://dummyimage.com/175x100.png/5fa2dd/ffffff');

COMMIT TRANSACTION;
