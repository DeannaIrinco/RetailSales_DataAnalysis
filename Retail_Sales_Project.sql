-- Retail Sales Analysis using Core SQL Aggregations
-- Skills Used: SELECT, WHERE, GROUP BY, ORDER BY, ALIASING (AS), SUM, CASE

-- I first explored the dataset structure and variables to understand what information was available for analysis. 
-- This allowed me to identify key fields which are critical for answering business questions

-- Questions I aimed to answer:
-- (1) Which product categories generate the most revenue?
-- (2) Which products sell best to different genders or age groups?
-- (3) How does revenue vary by month?
-- (4) Are there seasonal trends in sales?

-- Q1: Revenue by Product Category
SELECT 
	Product_Category,
	SUM(Total_Amount) as total_revenue
FROM retail_sales_dataset
GROUP BY Product_Category
ORDER BY total_revenue DESC;

-- Q2: Revenue by Gender and Product Category
SELECT
	Gender,
    Product_Category,
	SUM(Total_Amount) AS total_revenue
FROM retail_sales_dataset
GROUP BY Gender, Product_Category
ORDER BY Gender, total_revenue DESC;

-- Q3: Revenue by Age Group, Product Category
SELECT 
	Age_Group,
    Product_Category,
	SUM(Total_Amount) AS total_revenue
FROM retail_sales_dataset
GROUP BY Age_Group, Product_Category
ORDER BY Age_Group, total_revenue DESC;


-- Q4: Monthly Revenue Trend
SELECT 
	Month, 
	SUM(Total_Amount) as total_revenue
FROM retail_sales_dataset
GROUP BY Month
ORDER BY total_revenue DESC;

-- Q5: Quarterly Revenue Trend
SELECT
    CASE
        WHEN Month IN ('January','February','March') THEN 'Q1'
        WHEN Month IN ('April','May','June') THEN 'Q2'
        WHEN Month IN ('July','August','September') THEN 'Q3'
        WHEN Month IN ('October','November','December') THEN 'Q4'
    END AS Quarter,
    SUM(Total_Amount) AS quarterly_revenue
FROM retail_sales_dataset
GROUP BY Quarter
ORDER BY quarterly_revenue DESC;