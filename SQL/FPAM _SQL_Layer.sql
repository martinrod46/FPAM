
-- Create Football Performance Analytics Model DB 

CREATE DATABASE FPAM;
USE FPAM

-- Create Raw Table

CREATE TABLE matches (
	match_id INT PRIMARY KEY,
	match_date DATE,
	home_team VARCHAR(50),
	away_team VARCHAR(50),
	home_goals INT,
	away_goals INT
	);


-- Insert Sample Data

INSERT INTO matches VALUES
(1, '2024-01-01', 'TeamA', 'TeamB', 2, 1),
(2, '2024-01-05', 'TeamC', 'TeamB', 0, 0),
(3, '2024-01-10', 'TeamB', 'TeamB', 1, 3),
(4, '2024-01-15', 'TeamA', 'TeamB', 4, 2),
(5, '2024-01-20', 'TeamB', 'TeamB', 2, 2),
(6, '2024-01-25', 'TeamC', 'TeamB', 1, 0),
(7, '2024-02-01', 'TeamA', 'TeamB', 3, 3),
(8, '2024-02-05', 'TeamC', 'TeamB', 1, 2),
(9, '2024-02-10', 'TeamB', 'TeamB', 0, 1),
(10, '2024-02-15', 'TeamA', 'TeamB', 2, 0);

