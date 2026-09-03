-- ============================================================
-- NYU Hospital Analytics Project
-- Demographic Analysis
-- Dataset: NYS SPARCS Hospital Inpatient Discharges 2024
-- Facility: NYU LANGONE HOSPITALS
-- ============================================================


-- 1. Age Group Analysis
-- Count discharge records by age group and calculate
-- each group's percentage of total discharges.

SELECT
  `Age Group`,
  COUNT(*) AS total_patients,
  ROUND(
    COUNT(*) / SUM(COUNT(*)) OVER() * 100,
    2
  ) AS percentage
FROM `gen-lang-client-0830416739.nyu_hospital_analytics.inpatient_discharges_2024_raw`
GROUP BY `Age Group`
ORDER BY total_patients DESC;


-- 2. Gender Analysis
-- Count discharge records by gender and calculate
-- each group's percentage of total discharges.

SELECT
  `Gender`,
  COUNT(*) AS total_patients,
  ROUND(
    COUNT(*) / SUM(COUNT(*)) OVER() * 100,
    2
  ) AS percentage
FROM `gen-lang-client-0830416739.nyu_hospital_analytics.inpatient_discharges_2024_raw`
GROUP BY `Gender`
ORDER BY total_patients DESC;



SELECT
  `Patient Disposition`,
  COUNT(*) AS total_patients,
  ROUND
  (COUNT(*)/ SUM(COUNT(*)) OVER() * 100 ,2) AS percentage
FROM `gen-lang-client-0830416739.nyu_hospital_analytics.inpatient_discharges_2024_raw`
GROUP BY `Patient Disposition`
ORDER BY total_patients DESC;


SELECT `Patient Disposition` , `Age Group`,
  COUNT(*)AS total_patients
  
FROM `gen-lang-client-0830416739.nyu_hospital_analytics.inpatient_discharges_2024_raw`

WHERE `Patient Disposition` = 'Skilled Nursing Home'


GROUP BY `Age Group`

ORDER BY total_patients DESC;


