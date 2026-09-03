-- ============================================================
-- NYU Hospital Analytics Project
-- Admission and Discharge Analysis
-- Dataset: NYS SPARCS Hospital Inpatient Discharges 2024
-- Facility: NYU LANGONE HOSPITALS
-- ============================================================


-- 1. Type of Admission Analysis
-- Count each admission type and calculate its percentage
-- of total inpatient discharges.

SELECT
  `Type of Admission`,
  COUNT(*) AS total_admissions,
  ROUND(
    COUNT(*) / SUM(COUNT(*)) OVER() * 100,
    2
  ) AS percentage
FROM `gen-lang-client-0830416739.nyu_hospital_analytics.inpatient_discharges_2024_raw`
GROUP BY `Type of Admission`
ORDER BY total_admissions DESC;


-- 2. Patient Disposition Analysis
-- Analyze where patients went after discharge.

SELECT
  `Patient Disposition`,
  COUNT(*) AS total_patients,
  ROUND(
    COUNT(*) / SUM(COUNT(*)) OVER() * 100,
    2
  ) AS percentage
FROM `gen-lang-client-0830416739.nyu_hospital_analytics.inpatient_discharges_2024_raw`
GROUP BY `Patient Disposition`
ORDER BY total_patients DESC;


-- 3. Skilled Nursing Home by Age Group
-- Analyze the age distribution of patients discharged
-- to a Skilled Nursing Home.

SELECT
  `Age Group`,
  COUNT(*) AS total_patients
FROM `gen-lang-client-0830416739.nyu_hospital_analytics.inpatient_discharges_2024_raw`
WHERE `Patient Disposition` = 'Skilled Nursing Home'
GROUP BY `Age Group`
ORDER BY total_patients DESC;
