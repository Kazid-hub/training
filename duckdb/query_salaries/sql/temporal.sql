--09_temporal_data
-- CAST - skapaett datum frpn en text
SELECT
    '2024-01-01' AS oirignal_text,
    CAST ('2024-01-01' AS DATE) AS casted_date;

-- EXTRACT - plocka ut delar från datum')
SELECT
    CAST ('2024-01-01' AS DATE) AS full_date,
    EXTRACT(year FROM CAST('2024-01-01' AS DATE))AS year_part,
    EXTRACT(month FROM CAST('2024-01-01' AS DATE))AS month_part,
    EXTRACT(day FROM CAST('2024-01-01' AS DATE))AS day_part;

-- DATE_DIFF - räkna skillnaden i dagar mellan två datum
SELECT
    DATE_DIFF('day',
        CAST('2024-01-01' AS DATE),
        CAST('2024-01-15' AS DATE)
        ) AS days_difference;

-- CURRENT _TIMESTAMP - hämtar nuvarande datum + tid (timestamp)
SELECT
    CURRENT_TIMESTAMP AS now_timestamp;

-- DATE () plockar ut bara datumdelen från ett timestamp
SELECT
    CURRENT_TIMESTAMP AS full_timestamp,
    DATE(CURRENT_TIMESTAMP) AS date_only;

-- MAKE_DATE() - skapa ett datum av år, månad och dag
SELECT
    MAKE_DATE(2024, 5, 17) AS examples_date;

-- FORMAT - gör om ett datum (byggt från work_year) till text i olika format
SELECT
    work_year,
    MAKE_DATE(work_year, 1, 1) AS work_date,
    FORMAT(CAST(MAKE_DATE(work_year, 1, 1) AS VARCHAR), '%Y-%m-%d') AS date_yyyy_mm_dd,
    FORMAT(CAST(MAKE_DATE(work_year, 1, 1) AS VARCHAR), '%A') AS weekday_name,
    FORMAT(CAST(MAKE_DATE(work_year, 1, 1) AS VARCHAR), '%d %B %Y') AS pretty_date
FROM data_jobs
LIMIT 10;
-- DATE_TRUNC – klippa datum till månad/år
-- DATE_TRUNC – klippa datum till månad/år (använder work_year som datum)
SELECT
    work_year,
    MAKE_DATE(work_year, 1, 1) AS work_date,
    DATE_TRUNC('month', MAKE_DATE(work_year, 1, 1)) AS month_start,
    DATE_TRUNC('year', MAKE_DATE(work_year, 1, 1)) AS year_start
FROM data_jobs
LIMIT 10;
