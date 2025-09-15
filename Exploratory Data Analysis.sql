-- Exploratory Data Analysis

SELECT *
FROM layoffs_staging3;

-- Looking at Percentage to see max values

SELECT MAX(total_laid_off),MAX(percentage_laid_off)
FROM layoffs_staging3;

-- It shows 100 percentage layoffs companies(shutdown) 

SELECT *
FROM layoffs_staging3
WHERE percentage_laid_off = 1
ORDER BY funds_raised_millions DESC;
-- if we order by funs_raised_millions we can see how big some of these companies were

-- Companies with the most Total Layoffs
SELECT company, SUM(total_laid_off)
FROM layoffs_staging3
GROUP BY company
ORDER BY 2 DESC;

-- by location
SELECT location, SUM(total_laid_off)
FROM layoffs_staging3
GROUP BY location
ORDER BY 2 DESC;

-- by industry
SELECT industry, SUM(total_laid_off)
FROM layoffs_staging3
GROUP BY industry
ORDER BY 2 DESC;

-- by country
SELECT country, SUM(total_laid_off)
FROM layoffs_staging3
GROUP BY country
ORDER BY 2 DESC;

-- by stage
SELECT stage, SUM(total_laid_off)
FROM layoffs_staging3
GROUP BY stage
ORDER BY 1 DESC;

-- by year
SELECT YEAR(date), SUM(total_laid_off)
FROM layoffs_staging3
GROUP BY YEAR(date)
ORDER BY 1 DESC;

-- Average percentage of total laid off per company
SELECT company, AVG(percentage_laid_off)
FROM layoffs_staging3
GROUP BY company
HAVING AVG(percentage_laid_off) IS NOT NULL
ORDER BY 2 DESC;

SELECT SUBSTRING(DATE,1,7) AS MONTH , SUM(total_laid_off)
FROM layoffs_staging3
WHERE SUBSTRING(DATE,1,7) IS NOT NULL
GROUP BY MONTH ;
                           
-- rolling total of comapnies with respective years                           
WITH Rolling_total AS
(
SELECT SUBSTRING(DATE,1,7) AS MONTH, SUM(total_laid_off) AS total_off
FROM layoffs_staging3
WHERE SUBSTRING(DATE,1,7) IS NOT NULL
GROUP BY MONTH
ORDER BY 1 ASC
)
SELECT MONTH , total_off
,SUM(total_off) OVER(order by MONTH) AS Rolling_total
FROM Rolling_Total;

SELECT company,YEAR(DATE), SUM(total_laid_off)
FROM layoffs_staging3
GROUP BY company, YEAR(DATE)
ORDER BY 3 DESC;

-- Companies with the most Layoffs(top 5)
WITH Company_Year (company, Years, total_laid_off) AS
(
SELECT company,YEAR(DATE), SUM(total_laid_off)
FROM layoffs_staging3
GROUP BY company, YEAR(DATE)
), Company_Year_Rank AS
(SELECT * , 
DENSE_RANK() OVER ( PARTITION BY years ORDER BY total_laid_off DESC) AS Ranking
FROM Company_Year
WHERE years is NOT NULL
)
SELECT *
FROM Company_year_Rank
WHERE Ranking <=5;




