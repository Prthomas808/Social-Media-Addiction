-- Academic Impact

-- 1. Among students who answered “Yes” to Affects Academic Performance, 
--    what is their average daily usage compared to those who answered “No”?
SELECT 
	affects_academic_performance, 
	ROUND(CAST(AVG(avg_daily_usage_hours) AS NUMERIC), 2) AS Average_Usage_Hours
FROM social_media_survey
GROUP BY affects_academic_performance;

-- 2. Does average daily usage negatively correlate with sleep hours per night?

	-- Less than 3 hours of social media usage
SELECT 
	ROUND(CAST(AVG(avg_daily_usage_hours) AS NUMERIC), 2) AS Average_Usage_Hours,
	ROUND(CAST(AVG(sleep_hours_per_night) AS NUMERIC), 2) AS Average_Hours_Slept_Per_Night
FROM social_media_survey
WHERE avg_daily_usage_hours < 3
ORDER BY Average_Usage_Hours;

	-- More than 3 hours and Less than 6 hours of social media usage
SELECT 
	ROUND(CAST(AVG(avg_daily_usage_hours) AS NUMERIC), 2) AS Average_Usage_Hours,
	ROUND(CAST(AVG(sleep_hours_per_night) AS NUMERIC), 2) AS Average_Hours_Slept_Per_Night
FROM social_media_survey
WHERE avg_daily_usage_hours > 3 AND avg_daily_usage_hours < 6
ORDER BY Average_Usage_Hours;

	-- More than 6 hours hours of social media usage
SELECT 
	ROUND(CAST(AVG(avg_daily_usage_hours) AS NUMERIC), 2) AS Average_Usage_Hours,
	ROUND(CAST(AVG(sleep_hours_per_night) AS NUMERIC), 2) AS Average_Hours_Slept_Per_Night
FROM social_media_survey
WHERE avg_daily_usage_hours > 6
ORDER BY Average_Usage_Hours;