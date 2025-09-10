-- Mental Health & Relationships

-- * Self‐rated mental health (1 = poor to 10 = excellent) *
-- * Social Media Addiction Score (1 = low to 10 = high) *

-- 1. What is the relationship between mental health score and addiction score?
SELECT 
	ROUND(CAST(AVG(mental_health_score) AS NUMERIC)) AS Average_mental_health_score, 
	ROUND(CAST(AVG(addicted_score) AS NUMERIC)) AS Average_addicted_score
FROM social_media_survey
GROUP BY addicted_score
ORDER BY Average_addicted_score;

-- 2. Do students in relationships report more conflicts over social media than singles?
SELECT
	COUNT(relationship_status),
	relationship_status,
	ROUND(CAST(AVG(conflicts_over_social_media)AS NUMERIC)) AS Number_of_relationship_conflicts
FROM social_media_survey
GROUP BY relationship_status;