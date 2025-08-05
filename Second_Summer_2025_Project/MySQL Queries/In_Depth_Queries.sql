CREATE DATABASE job_market;
USE job_market;

#Define the schema
CREATE TABLE ds_salaries (
    work_year INT,
    experience_level VARCHAR(20),
    employment_type VARCHAR(20),
    job_title VARCHAR(255),
    salary INT,
    salary_currency VARCHAR(10),
    salary_in_usd INT,
    employee_residence VARCHAR(100),
    remote_ratio INT,
    company_location VARCHAR(100),
    company_size VARCHAR(20)
);

#Best Paying Roles at Lower-Experience Level
SELECT 
    experience_level,
    job_title,
    ROUND(AVG(salary_in_usd), 2) AS avg_salary
FROM ds_salaries_v2
WHERE experience_level IN ('Entry-level', 'Mid-level')
GROUP BY experience_level, job_title
ORDER BY avg_salary DESC
LIMIT 10;

#Top-Paying Regions/Locations
SELECT 
    company_location,
    ROUND(AVG(salary_in_usd), 2) AS avg_salary
FROM ds_salaries_v2
GROUP BY company_location
ORDER BY avg_salary DESC
LIMIT 10;

