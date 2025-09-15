# SQL---Exploratory-Data-Analysis
📊 Exploratory Data Analysis (EDA) on global layoffs dataset to uncover trends by company, industry, country, and time. Includes SQL queries, insights, and results in Excel/CSV format.

## 📌 Project Overview
This project focuses on **Exploratory Data Analysis (EDA)** of global layoffs data.  
The goal is to uncover insights such as:
- Which companies had the highest layoffs?
- Industries and countries most affected.
- Trends over time (monthly, yearly).
- Relationship between funding stage, funds raised, and layoffs.

The dataset was first **cleaned** in a separate *Data Cleaning Project*, and the cleaned data was used here for deeper analysis.



## 📂 Dataset Information
- **Input Dataset:** `layoffs_cleaned.csv`  
- **Output Results:** `EDA_Results.xlsx` 

**Columns in dataset:**
- `company` → Company name  
- `location` → Company location  
- `industry` → Industry sector  
- `total_laid_off` → Number of employees laid off  
- `percentage_laid_off` → % of workforce laid off  
- `date` → Date of layoff event  
- `stage` → Company funding stage (e.g., Series A, Post-IPO)  
- `country` → Country of the company  
- `funds_raised_millions` → Total funds raised  



## 🛠️ Tools & Technologies
- **SQL** → Queries for analysis    
- **Excel/CSV** → Final outputs and visualization-ready data  



## 🔍 Key Analysis Performed
- Maximum layoffs and % layoffs recorded.  
- Companies with **100% workforce layoffs** (shutdowns).  
- Top companies by **total layoffs**.  
- Date range of dataset.  
- Layoffs aggregated by **industry** and **country**.  
- Yearly and monthly layoff trends.
- Average layoff percentage per Company
- Rolling totals of layoffs over time.  
- Funding stage analysis vs layoffs.  
- Top 5 companies per year with the most layoffs.  



## 📑 Results
- **Full results** are saved in [`Layoffs_EDA.xlsx`](EDA_Results.xlsx) with multiple sheets.  

Highlights:
- 📈 **Tech and Finance** industries were among the hardest hit.  
- 🌍 **United States** had the largest number of layoffs globally.  
- 🏢 Some companies shut down completely with **100% layoffs**.  
- 📅 Peak layoffs occurred in **2022–2023**.  
- 💰 Companies with higher funds raised still had significant layoffs, showing funding doesn’t always prevent job cuts.  

