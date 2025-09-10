-- Overall Pattern 

-- Is there a trend between sleep hours per night and mental health score?
-- * Self‐rated mental health (1 = poor to 10 = excellent) *
SELECT 
	sleep_hours_per_night, 
	ROUND(CAST(AVG(mental_health_score) AS NUMERIC), 2) AS Average_mental_health_score
FROM social_media_survey
GROUP BY sleep_hours_per_night
ORDER BY sleep_hours_per_night;

-- What percentage of students are classified as highly addicted (e.g., Addiction_Score ≥ 7)?
SELECT COUNT(addicted_score)
FROM social_media_survey
WHERE addicted_score >= 7;

SELECT COUNT(student_id)
FROM social_media_survey;