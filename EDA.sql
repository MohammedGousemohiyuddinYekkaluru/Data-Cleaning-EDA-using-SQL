
-- Exploratory Data Analysis

SELECT *
FROM layoffs_staging2;

SELECT 
	MAX(total_laid_off),
    MAX(percentage_laid_off)
FROM layoffs_staging2;

-- Companies who laif off the whole staff

SELECT *
FROM layoffs_staging2
WHERE percentage_laid_off = 1
ORDER BY total_laid_off DESC;

SELECT *
FROM layoffs_staging2
WHERE percentage_laid_off = 1
ORDER BY funds_raised_millions DESC;

-- Which Company laid off the most

SELECT 
	company,
    SUM(total_laid_off)
FROM layoffs_staging2
GROUP BY company
ORDER BY 2 DESC;

-- laid off period (from 2020 - 2023)

SELECT 
	MIN(`date`),
    MAX(`date`)
FROM layoffs_staging2;

-- Which Industry laid off the most

SELECT 
	industry,
    SUM(total_laid_off)
FROM layoffs_staging2
GROUP BY industry
ORDER BY 2 DESC;

-- Which Country laid off the most

SELECT 
	country,
    SUM(total_laid_off)
FROM layoffs_staging2
GROUP BY country
ORDER BY 2 DESC;

-- In which Year liad off are most

SELECT 
	YEAR(`date`),
    SUM(total_laid_off)
FROM layoffs_staging2
GROUP BY YEAR(`date`)
ORDER BY 1;

-- In Which Stage laid off the most

SELECT 
	stage,
    SUM(total_laid_off)
FROM layoffs_staging2
GROUP BY stage
ORDER BY 2 DESC;

-- total laid off by month

SELECT
	SUBSTRING(`date`, 1, 7) AS `MONTH`,
    SUM(total_laid_off) AS total_off
FROM layoffs_staging2
WHERE SUBSTRING(`date`, 1, 7) IS NOT NULL
GROUP BY `MONTH`
ORDER BY `MONTH`;

-- Rolling Total

WITH Rolling_Total AS
(
SELECT
	SUBSTRING(`date`, 1, 7) AS `MONTH`,
    SUM(total_laid_off) AS total_off
FROM layoffs_staging2
WHERE SUBSTRING(`date`, 1, 7) IS NOT NULL
GROUP BY `MONTH`
ORDER BY `MONTH`
)

SELECT
	`MONTH`,
    total_off,
    SUM(total_off) OVER(ORDER BY `MONTH`) AS rolling_total
FROM Rolling_Total;