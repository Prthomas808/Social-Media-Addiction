-- Demographics & Usage

-- 1. What is the average daily usage by age group and gender?
	
-- For seperate genders
SELECT age, 
	   gender,
       Round(CAST(AVG(avg_daily_usage_hours) AS NUMERIC), 2) AS Average_Usage_Hours
FROM social_media_survey
GROUP BY age, gender
ORDER BY age, gender desc;

-- For both genders
SELECT Age, 
        Round(CAST(AVG(avg_daily_usage_hours) AS NUMERIC), 2) AS Average_Usage_Hours
FROM social_media_survey
GROUP BY age
ORDER BY age;

-- 2. Which academic level (High School, Undergraduate, Graduate) reports the highest average usage hours?

SELECT academic_level,
	   Round(CAST(AVG(avg_daily_usage_hours) AS NUMERIC), 2) AS Average_Usage_Hours
FROM social_media_survey
GROUP BY academic_level
ORDER BY Average_Usage_Hours DESC;
