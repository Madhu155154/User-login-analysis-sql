--2-- For the business units quarterly analyasis, calculate how many sessions were at each quarter order by quarter from newest to oldest 
  --  Return first day of the quarter, user_cnt , sesion _cnt 

select  
datetrunc(QUARTER,min(login_timestamp)) as First_quarter_date,
datepart(quarter,login_timestamp) as quarter, count(USER_ID) as user_count , 
count(session_id) as sesion
from logins
group by  datepart(quarter,login_timestamp);

output: 
| First_Quarter_Date       | Quarter | User_Count | Sesion |
|--------------------------|---------|------------|--------|
| 2024-01-01 00:00:00.000  | 1       | 8          | 8      |
| 2024-04-01 00:00:00.000  | 2       | 8          | 8      |
| 2023-07-01 00:00:00.000  | 3       | 5          | 5      |
| 2023-10-01 00:00:00.000  | 4       | 7          | 7      |
