--07_grouping_data
--. Antal rader per år
SELECT
    work_year,
    COUNT(*)AS n_rows
FROM data_jobs
GROUP BY work_year
ORDER BY work_year;
--1. Count rows per experience_level
SELECT
    experience_level,
    COUNT(*) AS total_rows
FROM data_jobs
GROUP BY experience_level;
--2. Counts rows per company_location orderded by counts desc
    SELECT
        company_location,
        COUNT(*) AS total_rows
    FROM data_jobs
    GROUP BY company_location
    ORDER BY total_rows DESC;
-- 3. Total salary per experience_level
SELECT
    experience_level,
    SUM(salary_in_usd) AS total_salary
FROM data_jobs
GROUP BY experience_level
ORDER BY total_salary DESC;
--04. Counts jobs per company_location
SELECT
    company_location,
    COUNT(*) AS job_count
FROM data_jobs
GROUP BY company_location
ORDER BY job_count DESC;
--05. Count distinct job_titles per company_location
SELECT
    company_location,
    COUNT(DISTINCT job_title) AS unique_job_titles
FROM data_jobs
GROUP BY company_location
ORDER BY unique_job_titles DESC;
--06. Average salary per exeperience_level
SELECT
    experience_level,
    AVG(salary_in_usd)AS avg_salary
FROM data_jobs
GROUP BY experience_level
ORDER BY avg_salary DESC;
--07. Min & Max salary per experience_level
SELECT
    exeprience_level,
    MIN(salary_in_usd)AS min_salary,
    MAX(salary_in_usd)AS max_salary,
FROM data_jobs
GROUP BY experience_level;
--08. Genomsnittslön per job_title (topp 10)
SELECT
    job_title,
    AVG(salary_in_usd)as avg_salary
FROM data_jobs
GROUP BY job_title
ORDER BY avg_salary DESC
LIMIT 10;