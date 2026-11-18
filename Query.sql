SELECT *
FROM Top_200_Richest_Person_in_the_World;

-- What are the names, ages and net worths of the billionaires?
SELECT 
	name,
	age,
	networth_billion_US_dollars
FROM Top_200_Richest_Person_in_the_World;

-- Who are the first 10 billionaires in the dataset?
SELECT TOP 10 *
FROM Top_200_Richest_Person_in_the_World;

--Which countries are represented in the dataset?
SELECT DISTINCT country
FROM Top_200_Richest_Person_in_the_World;

-- Which industries are represented among the world's richest people?
SELECT DISTINCT industry
FROM Top_200_Richest_Person_in_the_World;

-- Who are the billionaires younger than 40 years?
SELECT *
FROM Top_200_Richest_Person_in_the_World
WHERE age < 40
ORDER BY age DESC;

-- Who are the billionaires with a net worth greater than $100 billion?
SELECT *
FROM Top_200_Richest_Person_in_the_World
WHERE networth_billion_US_dollars > 100;

-- Who are the billionaires from Nigeria?
SELECT *
FROM Top_200_Richest_Person_in_the_World
WHERE country = 'Nigeria';

-- Who are the billionaires aged between 40 and 60?
SELECT *
FROM Top_200_Richest_Person_in_the_World
WHERE age BETWEEN 40 AND 60
ORDER BY age ASC;

-- Who are the billionaires from the United States, China and India?
SELECT *
FROM Top_200_Richest_Person_in_the_World
WHERE country IN ('United States', 'China', 'India');

-- Who are the billionaires whose names begin with the letter A?
SELECT *
FROM Top_200_Richest_Person_in_the_World
WHERE name LIKE 'a%';

-- Who are the billionaires aged above 60 with a net worth greater than $50 billion?
SELECT *
FROM Top_200_Richest_Person_in_the_World
WHERE age > 60 AND networth_billion_US_dollars > 50;

-- Who are the billionaires from Nigeria or South Africa?
SELECT *
FROM Top_200_Richest_Person_in_the_World
WHERE country IN ('Nigeria', 'South Africa');

-- Who is the richest person in the dataset?
SELECT 
	TOP 1 *
FROM Top_200_Richest_Person_in_the_World
ORDER BY networth_billion_US_dollars DESC;

-- Who is the youngest billionaire?
SELECT 
	TOP 1 *
FROM Top_200_Richest_Person_in_the_World
ORDER BY networth_billion_US_dollars ASC;

-- Who are the five oldest billionaires?
SELECT 
	TOP 5 *
FROM Top_200_Richest_Person_in_the_World
ORDER BY age DESC;

-- Who are the ten wealthiest billionaires?
SELECT 
	TOP 10 *
FROM Top_200_Richest_Person_in_the_World
ORDER BY networth_billion_US_dollars DESC;

-- How many billionaires are represented in the dataset?
SELECT 
	COUNT(DISTINCT name) AS total_count
FROM Top_200_Richest_Person_in_the_World;

-- What is the combined net worth of all 200 billionaires?
SELECT 
	SUM(networth_billion_US_dollars) AS total_networth
FROM Top_200_Richest_Person_in_the_World;

-- What is the average net worth of the billionaires?
SELECT 
	AVG(networth_billion_US_dollars) AS AVG_networth
FROM Top_200_Richest_Person_in_the_World;

-- Which billionaires networth is above average?
SELECT * 
FROM Top_200_Richest_Person_in_the_World
WHERE networth_billion_US_dollars > 
	(SELECT 
	AVG(networth_billion_US_dollars) AS AVG_networth
FROM Top_200_Richest_Person_in_the_World)

-- What is the average age of the billionaires?
SELECT 
	AVG(age) AS AVG_networth
FROM Top_200_Richest_Person_in_the_World;

-- What is the highest net worth recorded?
SELECT 
	MAX(networth_billion_US_dollars) AS highest_networth
FROM Top_200_Richest_Person_in_the_World;

-- What is the lowest net worth recorded?
SELECT 
	MIN(networth_billion_US_dollars) AS lowest_networth
FROM Top_200_Richest_Person_in_the_World;

-- What is the age difference between the oldest and youngest billionaires?
SELECT
	MAX(age) - MIN(age) AS age_difference
FROM Top_200_Richest_Person_in_the_World;

-- How many billionaires does each country have?
SELECT
	country,
	COUNT(country) AS country_count
FROM Top_200_Richest_Person_in_the_World
GROUP BY country

-- Which industry has the highest number of billionaires?
SELECT top 1 industry,
	SUM(networth_billion_US_dollars) AS total_networth
FROM Top_200_Richest_Person_in_the_World
GROUP BY industry
ORDER BY total_networth DESC;

-- What is the average net worth of billionaires in each country?
SELECT 
	country,
	AVG(networth_billion_US_dollars) AS avg_networth
FROM Top_200_Richest_Person_in_the_World
GROUP BY country
ORDER BY avg_networth DESC;

-- What is the total net worth of billionaires in each industry?
SELECT 
	industry,
	SUM(networth_billion_US_dollars) AS total_networth
FROM Top_200_Richest_Person_in_the_World
GROUP BY industry
ORDER BY total_networth DESC;

-- Which country has the oldest average billionaire population?
SELECT 
	TOP 1 country,
	AVG(age) AS avg_age
FROM Top_200_Richest_Person_in_the_World
GROUP BY country
ORDER BY avg_age DESC;

-- Which industry has the highest average billionaire age?
SELECT 
	TOP 1 industry,
	AVG(age) AS avg_age
FROM Top_200_Richest_Person_in_the_World
GROUP BY industry
ORDER BY avg_age DESC;

-- Which countries have at least five billionaires in the dataset?
SELECT 
	country,
	COUNT(country) AS country_count
FROM Top_200_Richest_Person_in_the_World
GROUP BY country
HAVING COUNT(country) >= 5
ORDER BY country_count DESC;

-- Which industry has the wealthiest billionaire?
SELECT 
	TOP 1 industry,
	SUM(networth_billion_US_dollars) AS total_networth
FROM Top_200_Richest_Person_in_the_World
GROUP BY industry
ORDER BY total_networth DESC;

-- Which country has the highest combined billionaire wealth?
SELECT
	TOP 1 country,
	SUM(networth_billion_US_dollars) AS total_networth
FROM Top_200_Richest_Person_in_the_World
GROUP BY country
ORDER BY total_networth DESC;

-- Which country has the highest average billionaire net worth?
SELECT
	TOP 1 country,
	AVG(networth_billion_US_dollars) AS avg_networth
FROM Top_200_Richest_Person_in_the_World
GROUP BY country
ORDER BY avg_networth DESC;

-- Which industries have at least 10 billionaires?
SELECT 
	industry,
	COUNT(industry) AS billonnaira_count
FROM Top_200_Richest_Person_in_the_World
GROUP BY industry
HAVING COUNT(industry) >= 10
ORDER BY billonnaira_count DESC;

-- How many billionaires have a net worth above $50 billion?
SELECT	
	COUNT(*) AS billionnaira_count
FROM Top_200_Richest_Person_in_the_World
WHERE networth_billion_US_dollars > 50;

-- What percentage of the dataset is made up of billionaires younger than 50?
SELECT 
	COUNT(*) AS all_count
FROM Top_200_Richest_Person_in_the_World
WHERE age < 50

SELECT COUNT(*) all_count
FROM Top_200_Richest_Person_in_the_World

SELECT 
	((SELECT 
	COUNT(*) AS all_count
FROM Top_200_Richest_Person_in_the_World
WHERE age < 50) * 100) / 
	(SELECT COUNT(*) AS all_count
FROM Top_200_Richest_Person_in_the_World) AS billionnaira_percentage

-- Who has a net worth between $50 billion and $100 billion?
SELECT *
FROM Top_200_Richest_Person_in_the_World
WHERE networth_billion_US_dollars BETWEEN 50 AND 100;

-- What is the total wealth of billionaires aged below 50?
SELECT 
	SUM(networth_billion_US_dollars) AS total_wealth
FROM Top_200_Richest_Person_in_the_World
WHERE age < 50;

-- Which country has the highest number of billionaires below age 40?
SELECT 
	TOP 1 country,
	COUNT(country) AS total_country
FROM Top_200_Richest_Person_in_the_World
WHERE age < 40
GROUP BY country
ORDER BY total_country DESC;

-- Which industry contributes the most to the combined wealth of the top 200?
SELECT 
	TOP 1 industry,
	SUM(networth_billion_US_dollars) AS total_wealth
FROM Top_200_Richest_Person_in_the_World
GROUP BY industry
ORDER BY total_wealth DESC;

-- What is the difference between 
-- the richest and poorest billionaire in the dataset?
SELECT 
	MAX(networth_billion_US_dollars) - MIN(networth_billion_US_dollars) AS wealth_difference
FROM Top_200_Richest_Person_in_the_World;

-- What is the average net worth of billionaires aged above 70?
SELECT 
	AVG(networth_billion_US_dollars) AS avg_wealth
FROM Top_200_Richest_Person_in_the_World
WHERE age > 70;

-- What is the percantege of the average net worth of billionaires aged above 70?
SELECT
	((SELECT 
	AVG(networth_billion_US_dollars) AS avg_wealth
FROM Top_200_Richest_Person_in_the_World
WHERE age > 70) * 100) / ( 
	SELECT 
	AVG(networth_billion_US_dollars) AS avg_wealth
FROM Top_200_Richest_Person_in_the_World) AS avg_percentage

-- Which billionaires belong to industries with more than 10 representatives?
SELECT 
	industry,
	COUNT(*) AS industry_count
FROM Top_200_Richest_Person_in_the_World
GROUP BY industry
HAVING COUNT(industry) > 10;

