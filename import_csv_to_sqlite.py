import sqlite3
import csv

conn = sqlite3.connect("FilmLocations.db")
cur = conn.cursor()

cur.execute("""
DROP TABLE IF EXISTS FilmLocations
""")

cur.execute("""
CREATE TABLE FilmLocations (
    Title TEXT,
    ReleaseYear INTEGER,
    Locations TEXT,
    FunFacts TEXT,
    ProductionCompany TEXT,
    Distributor TEXT,
    Director TEXT,
    Writer TEXT,
    Actor1 TEXT,
    Actor2 TEXT,
    Actor3 TEXT
)
""")

with open("SanFranciscoFilmLocations.csv", "r", encoding="utf-8-sig") as f:
    reader = csv.DictReader(f)
    rows = []
    for row in reader:
        rows.append((
            row["Title"],
            int(row["Release Year"]) if row["Release Year"] else None,
            row["Locations"],
            row["Fun Facts"],
            row["Production Company"],
            row["Distributor"],
            row["Director"],
            row["Writer"],
            row["Actor 1"],
            row["Actor 2"],
            row["Actor 3"]
        ))

cur.executemany("""
INSERT INTO FilmLocations
(Title, ReleaseYear, Locations, FunFacts, ProductionCompany, Distributor, Director, Writer, Actor1, Actor2, Actor3)
VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)
""", rows)

conn.commit()
conn.close()

print("FilmLocations.db created successfully")