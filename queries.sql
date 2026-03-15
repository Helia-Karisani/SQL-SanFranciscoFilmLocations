SELECT * FROM FilmLocations;

SELECT Title, Director, Writer FROM FilmLocations;

SELECT Title, ReleaseYear, Locations FROM FilmLocations WHERE ReleaseYear>=2001;

SELECT FunFacts, Locations FROM FilmLocations;

SELECT Title, ReleaseYear, Locations FROM FilmLocations WHERE ReleaseYear<=2000;

SELECT Title, ProductionCompany, Locations, ReleaseYear FROM FilmLocations WHERE Writer<>"James Cameron";
