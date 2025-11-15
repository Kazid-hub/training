-- 05_filtering

-- 1. Filter på experience_level
SELECT *
FROM data_jobs
WHERE experience_level = 'SE';

-- 2. Filter på company_location
SELECT *
FROM data_jobs
WHERE company_location = 'US';

-- 3. Filter på salary > 150000
SELECT *
FROM data_jobs
WHERE salary_in_usd > 150000;

-- 4. Kombinera filter med AND
SELECT *
FROM data_jobs
WHERE experience_level = 'SE'
  AND salary_in_usd > 120000;

-- 5. OR-villkor
SELECT *
FROM data_jobs
WHERE company_location = 'US'
   OR company_location = 'CA';

-- 6. IN-operator
SELECT *
FROM data_jobs
WHERE experience_level IN ('SE', 'MI');

-- 7. NOT IN
SELECT *
FROM data_jobs
WHERE employment_type NOT IN ('FT', 'CT');

-- 8. LIKE (innehåller)
SELECT *
FROM data_jobs
WHERE job_title LIKE '%Engineer%';

-- 9. LIKE (börjar med)
SELECT *
FROM data_jobs
WHERE job_title LIKE 'Data%';

-- 10. LIKE (slutar med)
SELECT *
FROM data_jobs
WHERE job_title LIKE '%Scientist';

-- 11. BETWEEN
SELECT *
FROM data_jobs
WHERE salary_in_usd BETWEEN 100000 AND 150000;

-- 12. ORDER BY
SELECT *
FROM data_jobs
WHERE experience_level = 'SE'
ORDER BY salary_in_usd DESC;

-- 13. Kombinerad filter + sortering
SELECT *
FROM data_jobs
WHERE company_location = 'US'
  AND experience_level = 'SE'
  AND salary_in_usd > 120000
ORDER BY salary_in_usd DESC;