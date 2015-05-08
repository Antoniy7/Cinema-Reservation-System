DROP TABLE IF EXISTS Movies;

CREATE TABLE Movies(
    id INTEGER PRIMARY KEY,
    name TEXT,
    rating NUMERIC
);

INSERT INTO Movies(name,rating)
VALUES('The Hunger Games:Catching Fire', 7.9);

INSERT INTO Movies(name,rating)
VALUES('Wreck-It Ralph', 7.8);

INSERT INTO Movies(name,rating)
VALUES('Her', 8.3);

DROP TABLE IF EXISTS Projections;

CREATE TABLE Projections(
    id INTEGER PRIMARY KEY,
    movie_id INTEGER,
    projection_type TEXT,
    projection_date DATE,
    FOREIGN KEY(movie_id) REFERENCES Movies(id)
);

INSERT INTO Projections(projection_type,projection_date)
VALUES('3D', '2014-04-01');

INSERT INTO Projections(projection_type,projection_date)
VALUES('2D', '2014-04-01');

INSERT INTO Projections(projection_type,projection_date)
VALUES('4DX', '2014-04-02');

INSERT INTO Projections(projection_type,projection_date)
VALUES('2D', '2014-04-05');

INSERT INTO Projections(projection_type,projection_date)
VALUES('3D', '2014-04-02');

INSERT INTO Projections(projection_type,projection_date)
VALUES('2D', '2014-04-02');

DROP TABLE IF EXISTS Reservations;

CREATE TABLE Reservations(
    id INTEGER PRIMARY KEY,
    username TEXT,
    projection_id INTEGER,
    row INTEGER,
    col INTEGER,
    FOREIGN KEY(projection_id) REFERENCES Projections(id)
);

INSERT INTO Reservations(username,row,col)
VALUES('RadoRado', 2, 1);

INSERT INTO Reservations(username,row,col)
VALUES('RadoRado', 3, 5);

INSERT INTO Reservations(username,row,col)
VALUES('RadoRado', 7, 8);

INSERT INTO Reservations(username,row,col)
VALUES('Ivo', 1, 1);

INSERT INTO Reservations(username,row,col)
VALUES('Ivo', 1, 2);

INSERT INTO Reservations(username,row,col)
VALUES('Mysterious', 2, 3);

INSERT INTO Reservations(username,row,col)
VALUES('Mysterious', 2, 4);
