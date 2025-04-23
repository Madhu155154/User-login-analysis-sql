Consider the Current date as : 28-june-2024

1 -- Management wants to see all the users that did not login the past 5 months -- 

DECLARE @a DATE = '2024-06-28';

SELECT USER_ID, MAX(CAST(login_timestamp AS DATE)) AS last_login
FROM logins
GROUP BY USER_ID
HAVING MAX(CAST(login_timestamp AS DATE)) < DATEADD(MONTH, -5, @a);

-- using where cluase 

DECLARE @a DATE = '2024-06-28';

SELECT DISTINCT USER_ID 
FROM logins
WHERE USER_ID NOT IN (
    SELECT USER_ID 
    FROM logins
    WHERE CAST(login_timestamp AS DATE) > DATEADD(MONTH, -5, @a)
);

output: 

| USER_ID | Last_Login |
|---------|------------|
| 1       | 2024-01-10 |
| 2       | 2024-01-25 |
