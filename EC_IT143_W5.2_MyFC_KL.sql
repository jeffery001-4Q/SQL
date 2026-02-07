/*****************************************************************************************************************
NAME:    EC_IT143_W5.2_MyFC_KL
PURPOSE: Answer analysis questions for the MyFC community data set.

MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     02/07/2026   Letura        Created script for EC_IT143 Week 5.2 assignment.

RUNTIME:
N/A

NOTES:
This script answers four analysis questions for the MyFC community data set using T-SQL.
******************************************************************************************************************/

USE MyFC;
GO

-- Q1 (Author: Letura):
-- How many players are in each position?

SELECT Position, COUNT(*) AS PlayerCount
FROM Players
GROUP BY Position;
GO

-- Q2 (Author: Letura):
-- How many players are on each team?

SELECT TeamName, COUNT(*) AS PlayerCount
FROM Players
GROUP BY TeamName
ORDER BY PlayerCount DESC;
GO

-- Q3 (Author: Jonathan Edward):
-- What is the average age of players for each position?

SELECT Position, AVG(CAST(Age AS decimal(10,2))) AS AvgAge
FROM Players
GROUP BY Position
ORDER BY AvgAge DESC;
GO

-- Q4 (Author: Letura):
-- Who are the oldest and youngest players?

SELECT 'Oldest' AS Category, PlayerName, Age
FROM Players
WHERE Age = (SELECT MAX(Age) FROM Players)

UNION ALL

SELECT 'Youngest' AS Category, PlayerName, Age
FROM Players
WHERE Age = (SELECT MIN(Age) FROM Players);
GO
