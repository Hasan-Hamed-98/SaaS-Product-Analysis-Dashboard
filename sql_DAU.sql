-- Section 1: Daily Active Users DAU

-- Are users more active right after signup?
-- Does activity drop over time?
-- Are there peaks or unusual spikes?

SELECT
    event_date,
    COUNT(DISTINCT user_id) AS dau
FROM events
GROUP BY event_date
ORDER BY event_date;

-- DAU increases during the initial period as new users onboard,
-- then stabilizes, indicating consistent but limited long-term engagement.


SELECT ROUND(AVG(dau), 0) AS avg_dau
FROM (
	SELECT
    event_date,
    COUNT(DISTINCT user_id) AS dau
FROM events
GROUP BY event_date
ORDER BY event_date
)t;

-- Average DAU is 59 users


SELECT
    event_date,
    COUNT(DISTINCT user_id) AS dau,
    COUNT(*) AS total_events
FROM events
GROUP BY event_date
ORDER BY event_date;

-- January (growth phase): DAU increases as new users sign up
-- and start using the product
-- February (peak activity): Highest engagement — likely due to
-- accumulated active users
-- March (decline): Engagement drops as earlier cohorts become inactive