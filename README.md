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

---

### 📥 Data Import Process

Data was inserted manually through SQL script into SQL Server. The table creation and sample data are available in the file:
