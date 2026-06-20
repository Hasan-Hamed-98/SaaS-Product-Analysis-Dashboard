--  Section 3: Retention Analysis (Cohort-Based)
-- After users sign up, how long do they stay active?



-- Build the Base Table
SELECT
    u.user_id,
    u.signup_date,
    e.event_date,
    DATEDIFF(e.event_date, u.signup_date) AS day_number
FROM users u
JOIN events e 
    ON u.user_id = e.user_id
ORDER BY u.user_id, day_number;

-- This table tells after how many days from sign up
-- each event happened



-- Build Retention Table (Counts)
SELECT
    u.signup_date,
    DATEDIFF(e.event_date, u.signup_date) AS day_number,
    COUNT(DISTINCT u.user_id) AS active_users
FROM users u
JOIN events e 
    ON u.user_id = e.user_id
GROUP BY u.signup_date, day_number
ORDER BY u.signup_date, day_number;

-- This table shows cohort activities



-- Cohort Size Table
SELECT
    signup_date,
    COUNT(*) AS cohort_size
FROM users
GROUP BY signup_date
Order By signup_date;

-- This table shows the number of users
-- who signed up on the same day


SELECT
    t.signup_date,
    t.day_number,
    t.active_users,
    c.cohort_size,
    t.active_users / c.cohort_size AS retention_rate
FROM (
    SELECT
        u.signup_date,
        DATEDIFF(e.event_date, u.signup_date) AS day_number,
        COUNT(DISTINCT u.user_id) AS active_users
    FROM users u
    JOIN events e 
        ON u.user_id = e.user_id
    GROUP BY u.signup_date, day_number
) t
JOIN (
    SELECT
        signup_date,
        COUNT(*) AS cohort_size
    FROM users
    GROUP BY signup_date
) c
ON t.signup_date = c.signup_date
ORDER BY t.signup_date, t.day_number;

-- This table combines the Retention Table with the Cohort Size Table
-- to find the retention rate (out of cohort) per day_number

-- Despite reasonable initial engagement, the product struggles 
-- to retain users beyond the first week. 
-- This suggests that while users find initial value, 
-- the product may lack features or incentives 
-- that encourage continued usage.