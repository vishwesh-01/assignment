select Current Industry/Domain from data where Current Salary > avg(Current Salary);

SELECT Name, 
       "Years of Experience", 
       "Current Job Position",
       "Current Industry/Domain"
FROM data
WHERE "Years of Experience" > 5
  AND "Ever Changed Occupation?" = 'No'
ORDER BY "Years of Experience" DESC;

SELECT "Current Industry/Domain" AS Department,
       COUNT(*) AS total_employees,
       SUM(CASE WHEN "Current Status" = 'Unemployed' OR "Current Status" = 'Jobless' THEN 1 ELSE 0 END) AS left_employees,
       ROUND(100.0 * SUM(CASE WHEN "Current Status" = 'Unemployed' OR "Current Status" = 'Jobless' THEN 1 ELSE 0 END) / COUNT(*), 2) AS attrition_rate
FROM data
GROUP BY "Current Industry/Domain"
ORDER BY attrition_rate DESC
LIMIT 3;

SELECT ROUND(AVG(CAST("Current Job Satisfaction Level" AS FLOAT)), 2) AS avg_satisfaction_left
FROM data
WHERE "Current Status" IN ('Unemployed', 'Jobless');

SELECT "Current Industry/Domain" AS Department,
       COUNT(*) AS employee_count
FROM data
GROUP BY "Current Industry/Domain"
ORDER BY COUNT(*) ASC
LIMIT 1;
