use job_market;

#Total Number of Jobs
SELECT COUNT(*) AS total_jobs
FROM ds_salaries_v2;

#Average Salary Across All Jobs
SELECT ROUND(AVG(salary_in_usd), 2) AS avg_salary_usd
FROM ds_salaries_v2;

#Average Salary By Experience Level
SELECT experience_level, ROUND(AVG(salary_in_usd), 2) AS avg_salary
FROM ds_salaries_v2
GROUP BY experience_level
ORDER BY avg_salary DESC;

#Top 10 Highest-Paid Jobs
SELECT job_title, ROUND(AVG(salary_in_usd), 2) AS avg_salary_usd
FROM ds_salaries_v2
GROUP BY job_title
ORDER BY avg_salary_usd DESC
LIMIT 10;

#Average Salary By Company Size
SELECT company_size, ROUND(AVG(salary_in_usd), 2) AS avg_salary
FROM ds_salaries_v2
GROUP BY company_size
ORDER BY avg_salary DESC;

#Job Count By Work Setting (Remote vs On-Site)
SELECT 
  CASE 
    WHEN remote_ratio = 100 THEN 'Remote'
    WHEN remote_ratio = 0 THEN 'On-site'
    ELSE 'Hybrid'
  END AS work_setting,
  COUNT(*) AS job_count
FROM ds_salaries_v2
GROUP BY work_setting;










