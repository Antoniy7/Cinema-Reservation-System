DROP TABLE IF EXISTS Movies;

CREATE TABLE Movies(
  movie_id INTEGER PRIMARY KEY,
  movie_name TEXT,
  movie_rating FLOAT
);

DROP TABLE IF EXISTS Projections;

CREATE TABLE Projections(
  projection_id INTEGER PRIMARY KEY,
  projection_movie_id INTEGER,
  projection_type TEXT,
  projeciton_date DATE,
  projection_time INTEGER,
  FOREIGN KEY(projection_movie_id) REFERENCES Movies(movie_id)
);

DROP TABLE IF EXISTS Reservations;

CREATE TABLE Reservations(
  reservation_id INTEGER PRIMARY KEY,
  user_name TEXT,
  row INTEGER,
  col INTEGER,
  reservation_projection_id INTEGER,
  FOREIGN KEY(reservation_projection_id) REFERENCES Projections(projection_id)
);

