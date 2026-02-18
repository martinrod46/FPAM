# ⚽ Team Performance & Match Outcome Prediction

📌 Project Overview

This project simulates a real-world sports analytics pipeline designed to:

- Transform raw match data into structured team-level analytics
- Engineer performance features (points, goal difference, recent form)

Prepare data for machine learning prediction (Home Win / Draw / Away Win)

The goal is to replicate how a real data team would design, build, and automate a sports performance model using SQL Server and Python.

🎯 Business Problem

Sports analytics companies, betting platforms, and performance analysts need to answer:

Can we estimate match outcome probabilities based on recent team performance?

To answer this, we:

Structure match data properly

Convert match-level data into team-level records

Calculate performance metrics

Build rolling statistics (Last 5 matches)

Prepare data for predictive modeling

🏗 Project Architecture

The project is built in layers, following real industry standards.

🔹 Phase 1 — Data Modeling (SQL Server)
Raw Layer

Table: matches

Stores match-level data.

Column	Description
match_id	Unique match identifier
match_date	Date of the match
home_team	Home team name
away_team	Away team name
home_goals	Goals scored by home team
away_goals	Goals scored by away team
🔹 Phase 2 — Enrichment Layer

View: vw_matches_enriched

Adds match result classification:

'H' → Home Win

'D' → Draw

'A' → Away Win

Business logic:

CASE 
    WHEN home_goals > away_goals THEN 'H'
    WHEN away_goals > home_goals THEN 'A'
    ELSE 'D'
END

🔹 Phase 3 — Team-Level Transformation (Critical Step)

Each match is converted into two team-level records using UNION ALL.

View: vw_team_matches

This structure allows us to calculate:

Points per team

Goals for

Goals against

Opponent tracking

Points system:

Win = 3

Draw = 1

Loss = 0

This mirrors how real sports analytics datasets are structured.

🔹 Phase 4 — Performance Metrics

View: vw_team_matches_stats

Adds:

Goal difference

Match-level team performance indicators

This prepares the data for advanced feature engineering.

🔹 Phase 5 — Rolling Performance (Next Step)

We calculate:

Points in last 5 matches

Goal difference in last 5 matches

Average goals scored (last 5)

Average goals conceded (last 5)

Using SQL window functions:

ROW_NUMBER()

SUM() OVER (PARTITION BY ...)

ROWS BETWEEN ...

This simulates real-world feature engineering.

🔹 Phase 6 — Python Integration (Planned)

Using Python:

Pull real match data from an API

Insert into SQL Server

Recompute features automatically

Train a logistic regression model

Predict probabilities for:

Home Win

Draw

Away Win

🛠 Technologies Used

SQL Server

T-SQL (Views, CASE, UNION ALL, Window Functions)

Python (planned phase)

REST API integration (planned phase)