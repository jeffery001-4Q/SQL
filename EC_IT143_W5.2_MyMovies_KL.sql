/*****************************************************************************************************************
FILE NAME:    EC_IT143_W5.2_MyMovies_KL.sql
PURPOSE:      Answer analysis questions for the MyMovies community data set.

ASSIGNMENT:   EC_IT143 Week 5.2 – My Communities Analysis: Create Answers
AUTHOR:       Letura

DESCRIPTION:
This script answers four analysis questions for the MyMovies community data set.
At least one question was created by another student.
******************************************************************************************************************/

USE MyMovies;
GO

/*****************************************************************************************************************
QUESTION 5
Author: Letura
Question: How many movies are in each genre?
******************************************************************************************************************/
SELECT Genre, COUNT(*) AS MovieCount
FROM Movies
GROUP BY Genre
ORDER BY MovieCount DESC;
GO


/*****************************************************************************************************************
QUESTION 6
Author: Letura
Question: What is the average rating per genre?
******************************************************************************************************************/
SELECT Genre, AVG(CAST(Rating AS DECIMAL(10,2))) AS AvgRating
FROM Movies
GROUP BY Genre
ORDER BY AvgRating DESC;
GO


/*****************************************************************************************************************
QUESTION 7
Author: Sarah Kim
Question: What is the oldest and newest movie release year?
******************************************************************************************************************/
SELECT 
    MIN(ReleaseYear) AS OldestYear,
    MAX(ReleaseYear) AS NewestYear
FROM Movies;
GO


/*****************************************************************************************************************
QUESTION 8
Author: Letura
Question: How many movies were released each year?
******************************************************************************************************************/
SELECT ReleaseYear, COUNT(*) AS MovieCount
FROM Movies
GROUP BY ReleaseYear
ORDER BY ReleaseYear DESC;
GO
