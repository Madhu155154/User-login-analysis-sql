--7 --on what dates there were no logins at all ?
-- return : Login dates 

with a as ( 
select min(cast(login_timestamp as date)) as Min_date , cast('2024-06-28' as date) as Max_date 
from logins
union all
select dateadd(day,1,Min_date) as Min_date, Max_date from a
where Min_date <= Max_date
)
select *from a
where Min_date not in ( select  distinct cast(login_timestamp as date) as _date from logins)
option(maxrecursion 500)

output: 
range of dates 

### Sample Output

| Min_Date   | Max_Date   |
|------------|------------|
| 2023-07-16 | 2024-06-28 |
| 2023-07-17 | 2024-06-28 |

