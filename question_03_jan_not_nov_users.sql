--3-- display user ids that login-in in january 2024 and did not login-in november 2023 

select distinct user_id from logins
where login_timestamp between '2024-01-01' and '2024-01-31'
and user_id not in (
select  distinct USER_ID
from logins
where login_timestamp between '2023-11-01' and '2023-11-30');

output:
user_id
1
3
5
