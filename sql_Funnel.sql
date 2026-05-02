-- Section 2: Funnel Analysis

-- Where are users dropping off?
-- login → view_page → create_task → start_trial → subscription

SELECT 'login' AS step, COUNT(DISTINCT user_id) AS total_users
FROM events WHERE event_name = 'login'
UNION
SELECT 'view_page', COUNT(DISTINCT user_id) AS total_users
FROM events WHERE event_name = 'view_page'
UNION
SELECT 'create_task', COUNT(DISTINCT user_id) AS total_users
FROM events WHERE event_name = 'create_task'
UNION
SELECT 'start_trial', COUNT(DISTINCT user_id) AS total_users
FROM events WHERE event_name = 'start_trial'
UNION
SELECT 'subscription', COUNT(DISTINCT user_id) AS total_users
FROM subscriptions;

-- The biggest drop is start_trial → subscription 
-- Dropped down to 40% of users who started trial


WITH funnel AS (
	SELECT 'login' AS step, COUNT(DISTINCT user_id) AS total_users
	FROM events WHERE event_name = 'login'
	UNION
	SELECT 'view_page', COUNT(DISTINCT user_id) AS total_users
	FROM events WHERE event_name = 'view_page'
	UNION
	SELECT 'create_task', COUNT(DISTINCT user_id) AS total_users
	FROM events WHERE event_name = 'create_task'
	UNION
	SELECT 'start_trial', COUNT(DISTINCT user_id) AS total_users
	FROM events WHERE event_name = 'start_trial'
	UNION
	SELECT 'subscription', COUNT(DISTINCT user_id) AS total_users
	FROM subscriptions
)
SELECT 
    step,
    total_users,
    total_users / LAG(total_users) 
		OVER (ORDER BY FIELD(step, 'login','view_page'
        ,'create_task','start_trial','subscription')
			) AS conversion_rate
FROM funnel;


-- While trial-to-paid conversion is strong (~40%), 
-- overall conversion from engaged users is moderate (~17%), 
-- indicating that a significant portion of users do not reach 
-- the trial stage. This suggests an opportunity to optimize 
-- the activation funnel (e.g., encouraging users to start a trial), 
-- in addition to improving long-term retention.