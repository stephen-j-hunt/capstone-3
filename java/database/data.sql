BEGIN TRANSACTION;

INSERT INTO users (username,password_hash,role) VALUES ('user','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_USER');
INSERT INTO users (username,password_hash,role) VALUES ('admin','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_ADMIN');

insert into movies (id, title, release_date, poster, overview) values (1, 'Dancer Upstairs, The', '7/14/2022', 'https://dummyimage.com/100x150.png/cc0000/ffffff', 'curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi');
insert into movies (id, title, release_date, poster, overview) values (2, 'Why We Fight', '7/17/2022', 'https://dummyimage.com/100x150.png/5fa2dd/ffffff', 'sit amet lobortis sapien sapien non mi integer ac neque duis bibendum morbi non quam');
insert into movies (id, title, release_date, poster, overview) values (3, 'Hairspray', '5/9/2022', 'https://dummyimage.com/100x150.png/cc0000/ffffff', 'ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla integer pede');
insert into movies (id, title, release_date, poster, overview) values (4, 'Idiot, The (Hakuchi)', '1/6/2023', 'http://dummyimage.com/100x150.png/ff4444/ffffff', 'pede justo eu massa donec dapibus duis at velit eu est congue elementum in hac habitasse platea');
insert into movies (id, title, release_date, poster, overview) values (5, 'Belle époque', '9/5/2022', 'http://dummyimage.com/100x150.png/ff4444/ffffff', 'lorem ipsum dolor sit amet consectetuer adipiscing elit proin risus praesent lectus vestibulum quam sapien');
insert into movies (id, title, release_date, poster, overview) values (6, 'Twilight of a Womans Soul (Sumerki zhenskoi dushi)', '1/19/2023', 'http://dummyimage.com/100x150.png/dddddd/000000', 'a libero nam dui proin leo odio porttitor id consequat in consequat ut nulla sed accumsan');
insert into movies (id, title, release_date, poster, overview) values (7, 'Murder Ahoy', '1/30/2023', 'http://dummyimage.com/100x150.png/cc0000/ffffff', 'cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque');
insert into movies (id, title, release_date, poster, overview) values (8, 'Mac and Me', '2/17/2023', 'http://dummyimage.com/100x150.png/5fa2dd/ffffff', 'augue vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia');
insert into movies (id, title, release_date, poster, overview) values (9, 'Scandal (Shubun)', '12/13/2022', 'http://dummyimage.com/100x150.png/cc0000/ffffff', 'lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi eu orci mauris lacinia sapien quis');
insert into movies (id, title, release_date, poster, overview) values (10, 'Dug''s Special Mission', '10/27/2022', 'http://dummyimage.com/100x150.png/ff4444/ffffff', 'diam cras pellentesque volutpat dui maecenas tristique est et tempus semper est quam pharetra magna');
--insert into movies (id, title, genre, release_date, poster, overview) values (11, 'The Biggest Bundle of Them All', 'Comedy|Crime', '11/8/2022', 'http://dummyimage.com/140x100.png/5fa2dd/ffffff', 'etiam faucibus cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi cras non');
--insert into movies (id, title, genre, release_date, poster, overview) values (12, 'Eddie Izzard: Glorious', 'Comedy', '10/29/2022', 'http://dummyimage.com/222x100.png/5fa2dd/ffffff', 'eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis');
--insert into movies (id, title, genre, release_date, poster, overview) values (13, 'Shadow of the Thin Man', 'Comedy|Crime|Mystery', '8/29/2022', 'http://dummyimage.com/137x100.png/dddddd/000000', 'ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis');
--insert into movies (id, title, genre, release_date, poster, overview) values (14, 'South Pacific', 'Musical|Romance|War', '7/3/2022', 'http://dummyimage.com/243x100.png/ff4444/ffffff', 'libero rutrum ac lobortis vel dapibus at diam nam tristique tortor eu');
--insert into movies (id, title, genre, release_date, poster, overview) values (15, 'Control', 'Crime|Sci-Fi|Thriller', '2/3/2023', 'http://dummyimage.com/100x100.png/cc0000/ffffff', 'sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam');
--insert into movies (id, title, genre, release_date, poster, overview) values (16, 'Rollover', 'Drama', '12/26/2022', 'http://dummyimage.com/179x100.png/dddddd/000000', 'sed sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci');
--insert into movies (id, title, genre, release_date, poster, overview) values (17, 'Dead Souls', 'Horror', '12/19/2022', 'http://dummyimage.com/146x100.png/ff4444/ffffff', 'velit donec diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum primis in faucibus orci');
--insert into movies (id, title, genre, release_date, poster, overview) values (18, 'I Hate Mondays, (Nie lubie poniedzialku)', 'Comedy', '7/28/2022', 'http://dummyimage.com/156x100.png/cc0000/ffffff', 'vel est donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis');
--insert into movies (id, title, genre, release_date, poster, overview) values (19, 'Frankie Starlight', 'Drama|Romance', '12/7/2022', 'http://dummyimage.com/189x100.png/ff4444/ffffff', 'ut erat curabitur gravida nisi at nibh in hac habitasse platea dictumst');
--insert into movies (id, title, genre, release_date, poster, overview) values (20, 'Wildcats', 'Comedy', '2/17/2023', 'http://dummyimage.com/108x100.png/ff4444/ffffff', 'vivamus tortor duis mattis egestas metus aenean fermentum donec ut mauris eget');


--GENRE DATA
insert into genre (genre_id, genre_name) values (1, 'crime');
insert into genre (genre_id, genre_name) values (2, 'drama');
insert into genre (genre_id, genre_name) values (3, 'thriller');
insert into genre (genre_id, genre_name) values (4, 'comedy');
insert into genre (genre_id, genre_name) values (5, 'musical');
insert into genre (genre_id, genre_name) values (6, 'romance');
insert into genre (genre_id, genre_name) values (7, 'horror');
insert into genre (genre_id, genre_name) values (8, 'mystery');
insert into genre (genre_id, genre_name) values (9, 'sci-fi');
insert into genre (genre_id, genre_name) values (10, 'fantasy');
insert into genre (genre_id, genre_name) values (11, 'documentary');
--
--
----ASSOCIATIVE ENTITY MOVIE-GENRE DATA
insert into movie_genre(movie_id, genre_id) values ((select id from movies where title = 'Dancer Upstairs, The'), (select genre_id from genre where genre_name = 'crime'));
insert into movie_genre(movie_id, genre_id) values ((select id from movies where title = 'Dancer Upstairs, The'), (select genre_id from genre where genre_name = 'drama'));
insert into movie_genre(movie_id, genre_id) values ((select id from movies where title = 'Why We Fight'), (select genre_id from genre where genre_name = 'thriller'));
insert into movie_genre(movie_id, genre_id) values ((select id from movies where title = 'Hairspray'), (select genre_id from genre where genre_name = 'comedy'));
insert into movie_genre(movie_id, genre_id) values ((select id from movies where title = 'Idiot, The (Hakuchi)'), (select genre_id from genre where genre_name = 'drama'));
insert into movie_genre(movie_id, genre_id) values ((select id from movies where title = 'Belle époque'), (select genre_id from genre where genre_name = 'romance'));
insert into movie_genre(movie_id, genre_id) values ((select id from movies where title = 'Twilight of a Womans Soul (Sumerki zhenskoi dushi)'), (select genre_id from genre where genre_name = 'drama'));
insert into movie_genre(movie_id, genre_id) values ((select id from movies where title = 'Murder Ahoy'), (select genre_id from genre where genre_name = 'comedy'));
insert into movie_genre(movie_id, genre_id) values ((select id from movies where title = 'Mac and Me'), (select genre_id from genre where genre_name = 'fantasy'));
insert into movie_genre(movie_id, genre_id) values ((select id from movies where title = 'Scandal (Shubun)'), (select genre_id from genre where genre_name = 'drama'));
--
--

COMMIT TRANSACTION;
