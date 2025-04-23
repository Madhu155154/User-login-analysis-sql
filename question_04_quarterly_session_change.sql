--4-- Add to query from 2 the percentage change in session from last quarter. 
-- Return:first day of quarter, session_cnt , session_cnt_prev, session_percentage_change. 

with a as 
(
select  
datetrunc(QUARTER,min(login_timestamp)) as First_quarter_date,
datepart(quarter,login_timestamp) as quarter, count(USER_ID) as user_count , 
count(session_id) as sesion
from logins
group by  datepart(quarter,login_timestamp)
)
select *, 
lag(sesion,1)  over( order by First_quarter_date ) as Prev_session , 
(sesion - lag(sesion,1)  over( order by First_quarter_date ))*100.0 
/ lag(sesion,1)  over( order by First_quarter_date )
as session_percentage_change 
from a

 Output : 

| First_Quarter_Date       | Quarter | User_Count | Sesion | Prev_Session | Session_Percentage_Change |
|--------------------------|---------|------------|--------|--------------|----------------------------|
| 2023-07-01 00:00:00.000  | 3       | 5          | 5      | NULL         | NULL                       |
| 2023-10-01 00:00:00.000  | 4       | 7          | 7      | 5            | 40.000000000000            |
| 2024-01-01 00:00:00.000  | 1       | 8          | 8      | 7            | 14.285714285714            |
| 2024-04-01 00:00:00.000  | 2       | 8          | 8      | 8            | 0.000000000000             |
