--08_ strings

-- UPPER - gör texten till stora bokstäver
SELECT 
    job_title, 
    UPPER(job_title) AS job_title_upper 
FROM data_jobs 
LIMIT 10;

-- LOWER - gör texten liten
SELECT
    job_title,
    LOWER(job_title) AS job_title_lower
FROM data_jobs
LIMIT 10;

-- LENGHT - räknar antal texken i en textsträng
SELECT
    job_title,
    LENGTH(job_title) AS title_length
FROM data_jobs
LIMIT 10;

--CONCAT - slår ihåp två eller flera stränger
SELECT
    job_title,
    company_location,
    job_title || ' in ' || company_location AS job_description
FROM data_jobs
LIMIT 10;

-- LEFT () - ta de första tecken i en text
SELECT
    job_title,
    LEFT(job_title, 5) AS first_5_letters
FROM data_jobs
LIMIT 10;

-- RIGHT () - ta de sista tecknen
SELECT
    job_title,
    RIGHT(job_title, 5) AS last_5_characters
FROM data_jobs
LIMIT 10;