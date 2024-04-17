create database TV_Show;
use TV_Show;

CREATE TABLE  Reviewers (
	ID INT(7) NOT NULL AUTO_INCREMENT, 
	first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    PRIMARY KEY(ID)
    );
    
INSERT INTO Reviewers (ID, first_name, last_name) 
VALUES (100101, 'Thomas', 'Stoneman');
INSERT INTO Reviewers (first_name, last_name) 
VALUES ('Wyatt', 'Skaggs'),
 ('Kimbra', 'Masters'),
 ('Domingo', 'Cortes'),
('Colt', 'Steele'),
 ('Pinkie', 'Petit'),
 ('Marlon', 'Crafford');
 
SELECT * FROM Reviewers;
DESCRIBE Reviewers;
 
 CREATE TABLE  Reviews (
	ID INT(7) NOT NULL AUTO_INCREMENT, 
	rating FLOAT(7,2) NOT NULL,
    series_id INT(4) NOT NULL,
    reviewer_id INT(4) NOT NULL,
    PRIMARY KEY(ID)
    );

INSERT INTO Reviews (ID, series_id, reviewer_id, rating) 
VALUES (100101, 1, 1, 8.0);
INSERT INTO Reviews (series_id, reviewer_id, rating) 
VALUES (1,2,7.5),(1,3,8.5),(1,4,7.7),(1,5,8.9),(2,1,8.1),(2,4,6.0),(2,3,8.0),(2,6,8.4),(2,5,9.9),(3,1,7.0),(3,6,7.5),(3,4,8.0),(3,3,7.1),(3,5,8.0),
 (4,1,7.5),(4,3,7.8),(4,4,8.3),(4,2,7.6),(4,5,8.5),(5,1,9.5),(5,3,9.0),(5,4,9.1),(5,2,9.3),(5,5,9.9),(6,2,6.5),(6,3,7.8),(6,4,8.8),(6,2,8.4),(6,5,9.1),
 (7,2,9.1),(7,5,9.7),(8,4,8.5),(8,2,7.8),(8,6,8.8),(8,5,9.3),(9,2,5.5),(9,3,6.8),(9,4,5.8),(9,6,4.3),(9,5,4.5),(10,5,9.9),(13,3,8.0),(13,4,7.2),
 (14,2,8.5),(14,3,8.9),(14,4,8.9);
 
  
SELECT * FROM Reviews;
DESCRIBE Reviews;

CREATE TABLE  Series (
	ID INT(7) NOT NULL AUTO_INCREMENT, 
	title VARCHAR(50) NOT NULL,
    released_year INT(7) NOT NULL,
    genre VARCHAR(50) NOT NULL,
    PRIMARY KEY(ID)
    );    

INSERT INTO series (ID, title, released_year, genre) 
VALUES (100101, 'Archer', 2009, 'Animation');
INSERT INTO series (title, released_year, genre) 
VALUES  ('Arrested Development', 2003, 'Comedy'), ("Bob's Burgers", 2011, 'Animation'), ('Bojack Horseman', 2014, 'Animation'),
("Breaking Bad", 2008, 'Drama'), ('Curb Your Enthusiasm', 2000, 'Comedy'), ("Fargo", 2014, 'Drama'), ('Freaks and Geeks', 1999, 'Comedy'),
('General Hospital', 1963, 'Drama'), ('Halt and Catch Fire', 2014, 'Drama'), ('Malcolm In The Middle', 2000, 'Comedy'),
('Pushing Daisies', 2007, 'Comedy'), ('Seinfeld', 1989, 'Comedy'), ('Stranger Things', 2016, 'Drama');

SELECT * FROM Series;
SELECT * FROM Reviews; 
SELECT * FROM Reviewers; 
							# TASKS
# 1). Retrieve the titles of all TV series along with the first and last names of the reviewers who have reviewed them. 
SELECT Title, first_name, last_name
FROM Series 
JOIN reviewers ON Series.ID = reviewers.ID ;  

# 2).  Find the titles of the TV series that have received a rating of 9.0 or higher, along with the corresponding reviewer names.
SELECT Rating, first_name, last_name, Title
FROM Reviews 
JOIN Series ON Reviews.ID = Series.ID 
JOIN reviewers ON Reviews.ID = reviewers.ID 
WHERE rating >= 9.0;

# 3). Calculate the average rating for each TV series and display the series title along with its average rating.
SELECT Title, Round(AVG(rating),2)
FROM Series 
JOIN Reviews ON Series.ID = Reviews.ID 
Group By Title;
                
# 4).  Identify the pairs of reviewers who have reviewed the same TV series and show the series title along with the pairs of reviewer names
SELECT first_name, last_name, Title
FROM Reviews 
JOIN Series ON Reviews.ID = Series.ID 
JOIN reviewers ON Reviews.ID = reviewers.ID;

# 5). Retrieve all TV series titles and their ratings, including those that haven't been reviewed.Display series titles even if there are no reviews
SELECT Title, rating
FROM Series
JOIN reviews ON Series.ID = reviews.ID; 

# 6).  List the titles of TV series, along with the names of the reviewers and their ratings, for series that have reviews. Include all series,
# even those without reviews.
SELECT Title, first_name, last_name, rating
FROM Series
JOIN reviews ON Series.ID = reviews.ID
JOIN Reviewers ON Series.ID = Reviewers.ID; 

# 7). Find the TV series titles and genres that were released after the year 2000 and have received a rating higher than 8.0.
SELECT Title, Genre, Released_year, Rating 
FROM Series 
JOIN Reviews ON Series.ID = Reviews.ID 
WHERE Released_year > 2000 and Rating > 8.0;

# 8). Count the number of reviews each reviewer has given and display the reviewer's first and last names along with the count.
SELECT * FROM Reviewers;
SELECT COUNT(first_name and last_name), first_name , COUNT(first_name and last_name), last_name FROM Reviewers
GROUP BY ID;

# 9). Retrieve the titles of TV series and their average ratings, ordered by average rating in descending order. 
SELECT Title, Round(AVG(Rating),2) AS Average_Rating
FROM Series 
JOIN Reviews ON Series.ID = Reviews.ID 
Group By Title
ORDER BY Average_Rating DESC;
                
# 10). Find the names of the reviewers who have reviewed TV series in the "Comedy" genre and display the series titles along with the reviewer names 
# and ratings                
SELECT first_name, last_name, title, rating 
FROM Reviewers 
JOIN Reviews ON Reviewers.ID = Reviews.ID 
JOIN Series ON Reviewers.ID = Series.ID
WHERE GENRE = 'Comedy'; 


  


