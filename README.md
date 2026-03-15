# SQL-SanFranciscoFilmLocations

This project demonstrates basic SQL querying using a dataset of film shooting locations in San Francisco.

The dataset was imported from a CSV file into a SQLite database and queried using SQL.

## Dataset

The dataset contains information about films shot in San Francisco, including:

- Film title
- Release year
- Filming locations
- Production company
- Distributor
- Director
- Writer
- Actors

The original dataset comes from the Film Locations in San Francisco public dataset.

## Project Structure

SanFranciscoFilmLocations.csv  
Raw dataset containing film location information.

FilmLocations.db  
SQLite database created from the CSV dataset.

import_csv_to_sqlite.py  
Python script used to convert the CSV dataset into a SQLite database.

queries.sql  
SQL queries used to explore and retrieve information from the database.

README.md  
Project documentation.

## Example Queries

SELECT * FROM FilmLocations;

SELECT Title, Director, Writer
FROM FilmLocations;

SELECT Title, ReleaseYear, Locations
FROM FilmLocations
WHERE ReleaseYear >= 2001;

## Purpose

This project is a simple practice exercise to:

- learn basic SQL SELECT statements
- retrieve specific columns from a dataset
- filter query results using conditions

## Tools Used

- SQLite
- Python
- SQL
- VS Code
