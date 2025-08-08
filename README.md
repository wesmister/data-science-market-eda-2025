# Data Science Job Market EDA – Salary, Skills & Remote Trends (2024–2025)

# Objective
Explore the U.S. data science job market using job listing data to uncover trends in salaries, required skills, company sizes, and remote work opportunities. Designed to inform job seekers and hiring teams about key market dynamics.

# Tools & Skills
- **Python (Pandas, Matplotlib, Seaborn)**: Data cleaning, exploratory data analysis, and visualizations
- **SQL (MySQL)**: Querying insights by company size, remote status, and region
- **Tableau**: Interactive dashboard showcasing trends by salary, job location, and more
- **Excel**: Initial data review and VLOOKUP for job title normalization

# Project Workflow
1. **Data Cleaning (Python)**
   - Cleaned null values, standardized job titles and location data
   - Used Regex to extract and categorize top-requested skills (e.g., Python, SQL, Tableau)

2. **Exploratory Analysis (Python + SQL)**
   - Salary distribution across remote vs. on-site roles
   - Salary trends by company size and region
   - Frequency analysis of required skills across listings
   - Time-based posting trends

3. **Dashboard Development (Tableau)**
   - Created an interactive dashboard showing:
     - Median salary by job type and remote status
     - Skill frequency word cloud
     - Distribution by company size and location
     - Job listing volume over time

# Key Insights
- **Remote roles had a lower salary ceiling** compared to on-site roles at top-paying companies  
- **Python, SQL, and Tableau** were the most requested skills across all company sizes  
- **Large companies offered higher median salaries** but were less likely to offer remote roles  
- **Tech-heavy states like California and New York** remained top locations, but **remote roles spiked nationwide** in early 2024  

# Business & Candidate Impact
These insights help job seekers prioritize top-paying roles by region and skill match, and allow companies to benchmark compensation strategies in a competitive market.

# Dashboard Preview

![Job Market Dashboard Screenshot](images/jobmarket_dashboard.png)

> 🔗 **[View Tableau Dashboard](dashboards/DataScience_JobMarket_Tableau.pdf)**  
> 🧾 **[SQL Analysis Scripts](sql/jobmarket_eda_queries.sql)**  

## 🔍 Folder Structure

