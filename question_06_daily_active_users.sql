---6--- To Identify our best users - Return the users that had	a session on every single day since their first 
---     Login (make assumption if needed )


select user_id , min(cast(login_timestamp as date)) as first_login_date , 
datediff(day, min(cast(login_timestamp as date)), '2024-06-28')+1 as _days,
count( distinct cast(login_timestamp as date)) as no_login_days
from logins
group by user_id
Having datediff(day, min(cast(login_timestamp as date)), '2024-06-28')+1 = 
count( distinct cast(login_timestamp as date));

output: 

### Sample Output

| User_ID | First_Login_Date | _Days | No_Login_Days |
|---------|------------------|-------|----------------|
| 10      | 2024-06-25       | 4     | 4              |
