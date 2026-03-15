SELECT * FROM FilmLocations;

SELECT Title, Director, Writer FROM FilmLocations;

SELECT Title, ReleaseYear, Locations FROM FilmLocations WHERE ReleaseYear>=2001;

SELECT FunFacts, Locations FROM FilmLocations;

SELECT Title, ReleaseYear, Locations FROM FilmLocations WHERE ReleaseYear<=2000;

SELECT Title, ProductionCompany, Locations, ReleaseYear FROM FilmLocations WHERE Writer<>"James Cameron";

SELECT COUNT(*) FROM FilmLocations;

SELECT COUNT(Locations) FROM FilmLocations WHERE Writer="James Cameron";

-- DISTINCT statement

SELECT DISTINCT Title FROM FilmLocations;

SELECT COUNT(DISTINCT ReleaseYear) FROM FilmLocations WHERE ProductionCompany="Warner Bros. Pictures";

-- LIMIT statement

SELECT * FROM FilmLocations LIMIT 25;

SELECT * FROM FilmLocations LIMIT 15 OFFSET 10;




