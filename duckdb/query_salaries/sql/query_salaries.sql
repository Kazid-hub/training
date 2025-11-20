-- Describe table
DESC data_jobs;

-- Select all
SELECT * FROM data_jobs;

-- Fully qualified examples
SELECT * FROM main.data_jobs;
SELECT * FROM data_jobs;

-- Limit
SELECT * FROM data_jobs LIMIT 5;

-- Select specified columns
SELECT
    work_year,
    job_title,
    salary_in_usd,
    company_location
FROM data_jobs;

-- Exclude columns
SELECT
    * EXCLUDE (salary, work_year)
FROM data_jobs;

-- Distinct examples
SELECT DISTINCT employment_type FROM data_jobs;
SELECT DISTINCT experience_level FROM data_jobs;

SELECT experience_level FROM data_jobs;