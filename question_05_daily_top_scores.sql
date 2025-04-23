-- 5 --- Display users that had the highest session score (max) for each day 
--- --- Return date , Username , score 

with a as 
(
select user_id , cast(login_timestamp as date) as login_date, sum(session_score) as score
from logins
group by user_id , cast(login_timestamp as date)
), 
b as 
(
select *, 
ROW_NUMBER() over(partition by login_date order by score) as rn
from a
) 
select *from b 
where rn =1

output: 

### Sample Output

| User_ID | Login_Date | Score | RN |
|---------|------------|-------|----|
| 1       | 2023-07-15 | 85    | 1  |
| 2       | 2023-07-22 | 90    | 1  |
| 3       | 2023-08-10 | 75    | 1  |

