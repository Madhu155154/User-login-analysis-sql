# 👤 User Login Activity Analysis (SQL Project)

This SQL project analyzes user login behavior over time to extract meaningful insights such as user engagement, session trends, and inactivity patterns.

---

### 📌 Problem Statement

Understanding user login activity is essential for measuring engagement, system usage, and retention. This project aims to support operational and strategic decisions by:

- Identifying users with extended inactivity
- Analyzing session trends over quarters
- Detecting consistently active users
- Pinpointing inactive days in the system

The goal is to transform raw login data into actionable insights for product, HR, and IT teams.

---

### 🎯 Project Goals

- Identify users who haven’t logged in for the past 5 months
- Analyze quarterly login session counts and track session growth
- Detect users who logged in during one period but missed others (e.g., Jan 2024 vs Nov 2023)
- Find users with the highest session score each day
- Identify power users who logged in every day since their first login
- Find dates when **no users** logged into the system

---

### 🧾 Dataset Description

The dataset contains **user and login records**, including login timestamps, session scores, and user metadata.

#### Tables:
- **`users`**: Contains basic user details
- **`logins`**: Contains login sessions with timestamps and scores

| Column Name     | Table   | Description                                 |
|-----------------|---------|---------------------------------------------|
| USER_ID         | Both    | Unique identifier for each user             |
| USER_NAME       | users   | Name of the user                            |
| USER_STATUS     | users   | User status (Active/Inactive)               |
| LOGIN_TIMESTAMP | logins  | Date and time of login                      |
| SESSION_ID      | logins  | Unique session ID                           |
| SESSION_SCORE   | logins  | Score based on session activity             |

#### Sample Row (from logins):

| USER_ID | CITY    | LOGIN_TIMESTAMP     | SESSION_ID | SESSION_SCORE |
|---------|---------|---------------------|------------|----------------|
| 1       | Delhi   | 2024-01-10 07:45:00 | 1011       | 86             |



Steps (if recreating):
1. Create the tables using the script
2. Insert records for `users` and `logins`
3. Run the analysis queries individually

---

### 📌 Key Insights

- Users inactive for the past 5 months were identified using both `GROUP BY` and `NOT IN` logic
- Session data grouped by quarter shows **engagement trends** and **percentage change** in usage
- Some users logged in only during specific periods like Jan 2024, skipping others like Nov 2023
- Users with the highest daily session scores were tracked using `ROW_NUMBER()`
- Power users were detected who logged in **every single day** since their first login
- Several dates were found with **no logins**, indicating possible downtime or inactive usage

---

### 📁 Folder Structure

| File Name                               | Description                                                       |
|----------------------------------------|-------------------------------------------------------------------|
| `create_tables_and_sample_data.sql`    | Script for creating tables and inserting user/login data          |
| `question_01_inactive_users.sql`       | Users who didn’t log in during the past 5 months                  |
| `question_02_quarterly_sessions.sql`   | Quarterly session and user counts                                 |
| `question_03_jan_not_nov_users.sql`    | Users active in Jan 2024 but not in Nov 2023                      |
| `question_04_quarterly_session_change.sql` | Quarterly session count + % change                             |
| `question_05_top_daily_scorers.sql`    | Users with highest session scores for each day                    |
| `question_06_consistent_daily_users.sql`| Users who logged in every day since their first login             |
| `question_07_no_login_dates.sql`       | Dates with no login activity                                      |
| `README.md`                            | Project documentation                                             |

---

### ✅ How to Use

1. Clone or download this repository
2. Open scripts in SQL Server Management Studio (SSMS) or Azure Data Studio
3. Run `create_tables_and_sample_data.sql` first
4. Run each `question_0X_*.sql` to view results



### 📥 Data Import Process

Data was inserted manually through SQL script into SQL Server. The table creation and sample data are available in the file:

### 👨‍💻 Author

**Madhu K**  
Business Analyst | SQL Developer | Power BI Enthusiast  
📬 [LinkedIn](#)  
🌐 [Portfolio Website](#) *(optional)*


