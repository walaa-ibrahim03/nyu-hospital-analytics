# nyu-hospital-analytics
Healthcare data analytics project using 2024 NYS SPARCS inpatient discharge data and Google BigQuery SQL.

nyu-hospital-analytics/
│
├── README.md
│
├── sql/
│   ├── 01_data_quality_checks.sql
│   ├── 02_demographic_analysis.sql
│   └── 03_admission_analysis.sql
│
├── documentation/
│   └── project_notes.md
│
└── images/




## Data Source

This project uses the **Hospital Inpatient Discharges (SPARCS De-Identified): 2024** dataset provided by the New York State Department of Health.

The dataset contains discharge-level information including patient characteristics, diagnoses, treatments, services, and charges.

**Official Source:**  
New York State Department of Health – Health Data NY
https://health.data.ny.gov/Health/Hospital-Inpatient-Discharges-SPARCS-De-Identified/sf4k-39ay/about_data

**Dataset:** Hospital Inpatient Discharges (SPARCS De-Identified): 2024

For this project, the dataset was filtered to:

- Facility Name: `NYU LANGONE HOSPITALS`
- Discharge Year: `2024`
- Records used: `50,456`

