/* Create table about the people and what they do here */
CREATE TABLE Actors(actor_id INTEGER PRIMARY KEY,
                    first_name TEXT,
                    last_name TEXT,
                    age INTEGER,
                    gender TEXT);
                
INSERT INTO Actors VALUES (101,'Robert','DE Niro',79,'M');
INSERT INTO Actors VALUES (102,'Christian','Bale',49,'M');
INSERT INTO Actors VALUES (103,'Robert','Downey Jr',58,'M');
INSERT INTO Actors VALUES (104,'Elizabeth','Olsen',34,'F');
INSERT INTO Actors VALUES (105,'Caire','Danes',44,'F');
INSERT INTO Actors VALUES (106,'Kate','Winslet',47,'F');
INSERT INTO Actors VALUES (107,'Tim','Robbins',64,'M');
INSERT INTO Actors VALUES (108,'Anne','Hathaway',40,'F');
INSERT INTO Actors VALUES (109,'Ryan','Reynolds',46,'M');
INSERT INTO Actors VALUES (110,'Blake','Lively',35,'F');
INSERT INTO Actors VALUES (111,'Scarlett','Johansson',38,'F');
INSERT INTO Actors VALUES (112,'Michael','Caine',90,'M');



CREATE TABLE Movies(movie_id INTEGER PRIMARY KEY,
                    name TEXT,
                    movie_year NUMERIC,
                    runtime NUMERIC);
                    

INSERT INTO Movies VALUES (901,'The Godfather',1972,175);
INSERT INTO Movies VALUES (902,'The Shawshank Redemption',1994,142);
INSERT INTO Movies VALUES (903, 'The Dark Knight',2008,152);
INSERT INTO Movies VALUES (904,'The Intern',2015,121);
INSERT INTO Movies VALUES (905,'Titanic',1997,194);
INSERT INTO Movies VALUES (906,'Avengers: Age of Ultron',2015,141);
INSERT INTO Movies VALUES (907,'Stardust',2007,127);
INSERT INTO Movies VALUES (908,'Deadpool',2016,108);
INSERT INTO Movies VALUES (909,'Amsterdam',2022,134);
INSERT INTO Movies VALUES (910,'The Age of Adaline',2015,112);


CREATE TABLE Movie_Cast(id INTEGER PRIMARY KEY AUTO_INCREMENT,
                        movie_id INTEGER,
                        actor_id INTEGER,
                        role TEXT);
                        


INSERT INTO Movie_Cast(movie_id,actor_id,role) VALUES(901,101,'Vito Corleone');
INSERT INTO Movie_Cast(movie_id,actor_id,role) VALUES(902,107,'Andy Dufresne');
INSERT INTO Movie_Cast(movie_id,actor_id,role) VALUES(908,109,'Wade Wilson/ Deadpool');
INSERT INTO Movie_Cast(movie_id,actor_id,role) VALUES(905,106,'Rose DeWitt Bukater');
INSERT INTO Movie_Cast(movie_id,actor_id,role) VALUES(907,105,'Yvaine');
INSERT INTO Movie_Cast(movie_id,actor_id,role) VALUES(903,102,'Bruce Wayne/Batman');
INSERT INTO Movie_Cast(movie_id,actor_id,role) VALUES(906,103,'Tony Stark/ Ironman');
INSERT INTO Movie_Cast(movie_id,actor_id,role) VALUES(909,102,'Burt Berendsen');
INSERT INTO Movie_Cast(movie_id,actor_id,role) VALUES(910,110,'Adaline');
INSERT INTO Movie_Cast(movie_id,actor_id,role) VALUES(903,112,'Alfred Pennyworth');
INSERT INTO Movie_Cast(movie_id,actor_id,role) VALUES(906,111,'Natasha Romanoff/ Black widow');
INSERT INTO Movie_Cast(movie_id,actor_id,role) VALUES(909,101,'Gilbert Dillenbeck');
INSERT INTO Movie_Cast(movie_id,actor_id,role) VALUES(904,101,'Ben');
INSERT INTO Movie_Cast(movie_id,actor_id,role) VALUES(907,101,'Captain Shakespeare of the Caspartine');
INSERT INTO Movie_Cast(movie_id,actor_id,role) VALUES(906,104,'Wanda Maximoff/ Scarlet Witch');
INSERT INTO Movie_Cast(movie_id,actor_id,role) VALUES(904,108,'Jules');



select movie_cast.id,movies.name,movies.movie_year,actors.first_name,actors.last_name,movie_cast.role from movie_cast
join movies
on movie_cast.movie_id = movies.movie_id
join actors
on actors.actor_id = movie_cast.actor_id;

select movie_cast.id,movies.name,movies.movie_year,actors.first_name,actors.last_name,movie_cast.role from movie_cast
join movies
on movie_cast.movie_id = movies.movie_id
join actors
on actors.actor_id = movie_cast.actor_id
where actors.last_name = 'DE Niro'
order by movie_year;

select movie_year,count(*) from movies
group by movie_year;

select movie_cast.actor_id, actors.first_name,actors.last_name,count(*) from movie_cast
join actors
on movie_cast.actor_id = actors.actor_id
group by movie_cast.actor_id
order by count(*) desc;