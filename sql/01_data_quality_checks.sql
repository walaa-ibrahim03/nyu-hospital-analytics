-- ============================================================
-- NYU Hospital Analytics Project
-- Data Quality Checks
-- Dataset: NYS SPARCS Hospital Inpatient Discharges 2024
-- Facility: NYU Langone Hospitals
-- Total rows: 50,456
-- ============================================================


-- 1. Check total number of rows
SELECT
  COUNT(*) AS total_rows
FROM `gen-lang-client-0830416739.nyu_hospital_analytics.inpatient_discharges_2024_raw`;


-- 2. Inspect unique Length of Stay values
-- This helped identify values that are not standard integers.
SELECT DISTINCT
  `Length of Stay`
FROM `gen-lang-client-0830416739.nyu_hospital_analytics.inpatient_discharges_2024_raw`
ORDER BY `Length of Stay`;


-- 3. Find Length of Stay values that cannot be converted to INT64
-- SAFE_CAST returns NULL when conversion is not possible.
-- Result: '120+' was the only non-integer value.
SELECT DISTINCT
  `Length of Stay`
FROM `gen-lang-client-0830416739.nyu_hospital_analytics.inpatient_discharges_2024_raw`
WHERE SAFE_CAST(`Length of Stay` AS INT64) IS NULL;


-- 4. Count records with Length of Stay = '120+'
-- Result: 58 records.
SELECT
  COUNT(*) AS total_120_plus
FROM `gen-lang-client-0830416739.nyu_hospital_analytics.inpatient_discharges_2024_raw`
WHERE `Length of Stay` = '120+';


-- 5. Check for missing Length of Stay values
-- Result: 0 NULL values.
SELECT
  COUNT(*) AS total_null_length
FROM `gen-lang-client-0830416739.nyu_hospital_analytics.inpatient_discharges_2024_raw`
WHERE `Length of Stay` IS NULL;




