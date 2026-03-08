# Retail Sales Analysis

## Project Summary
Analyzed retail sales data using SQL (MySQL), Microdoft Excel (data preparation), and Tableau Public to uncover revenue drivers, customer segmentation opportunities, and seasonal planning insights. This project demonstrates how structured analysis turns transactional data into specific business recommendations for inventory, marketing, and capacity planning.

**Dataset:** [Retail Sales Dataset by Mohammad Talib](https://www.kaggle.com/datasets/mohammadtalib786/retail-sales-dataset)

**Tableau Public Interactive Visualization:** [Retail Sales Analysis Dashboard](https://public.tableau.com/app/profile/deanna.irinco/viz/RetailSalesPerformanceDashboard_17719788524440/RetailSalesPerformanceDashboard)

Skills: SQL aggregation, data validation, data visualization, business interpretation

## Data Preparation

The original dataset from Kaggle was already clean. The following steps were performed in Microsoft Excel to validate and enrich the data for analysis:

1. **Validation Checks**
   - Checked for duplicate transactions.
   - Verified that `Total_Amount` matches the `Quantity × Price_per_Unit`.
   - Confirmed that the `Date` column is in a consistent date format.
   - Checked for spelling errors in all categorical columns (`Gender`, `Product_Category`).
2. **Enrichment**
   - Added an `Age_Group` column based on `Age` to categorize customers (Under 25, 26-34, 35-44,45-54, 55+).
   - Extracted `Month` from the `Date` column to analyze monthly and seasonal trends.


## Business Questions
1. Which product categories generate the most revenue?
2. Which product categories sell best to different genders or age groups?
3. How does revenue vary by month?
4. Are there seasonal trends in sales?


----------------------------------------------------------------------------------------------------

# Query & Insights

## **Query 1**

<img width="348" height="145" alt="Q1" src="https://github.com/user-attachments/assets/c292adf5-69ab-478e-9e8b-fda3258d2827" />

**Result:**

<img width="222" height="93" alt="Q1R" src="https://github.com/user-attachments/assets/21e87999-46fe-4277-ae99-c3a6ac2d0d43" />


**Insight:**
- **Electronics** lead the market with the highest total revenue
- **Clothing** is close behind. This is another core driver of income
- **Beauty** contributes slightly less but still remains a valuable part revenue
- Electronics ($156K) and Clothing ($155K) are nearly tied. This is a 0.8% revenue gap despite different customer profiles. Beauty ($143K) trails but still contributes 31% of total sales. No single category dominates sales, this suggests that there is a stable demand across categories.


## **Query 2**
<img width="382" height="167" alt="Q2" src="https://github.com/user-attachments/assets/1e07276a-d273-42b0-8644-56cb7fac51ac" />



**Result**

<img width="250" height="126" alt="Screenshot 2026-03-04 at 3 04 34 PM" src="https://github.com/user-attachments/assets/fede4536-92ab-4ef2-b1bc-8d7291c2188e" />

**Insight:**
- **Total revenue by gender**: Female=232,840, Male=223,160 → spending is almost equal (F: 51%, M: 49%)
- **Females**: Spend most on Clothing, followed by Electronics
- **Males**: Spend most on Electronics, followed by Clothing
- Both genders spend similar amounts across all three categories, showing that neither gender focuses on only one type of product
- The similar total revenue from males and females suggests that cross-gender promotions could potentially work, such as promotional bundles that include both Electronics and Clothing.


## **Query 3**

<img width="361" height="176" alt="Q3" src="https://github.com/user-attachments/assets/896ba906-0e4c-4e89-bf1a-68022332a635" />



**Result:**

<img width="264" height="266" alt="Q3R" src="https://github.com/user-attachments/assets/061f877b-54ef-4199-a25c-1a6b17fc698d" />



**Insight:**
- **Under 25**: Beauty dominates → younger shoppers more likely focus on self-care
- **26–34**: Clothing dominates → fits lifestyle of working adults who update wardrobes more often
- **35–44 & 55+**: Electronics lead → higher spending capacity and interest in practical and durable goods
- Distinct preferences across age groups suggest that targeted promotions would work better than generalized ones


## **Query 4**

<img width="313" height="152" alt="Q4" src="https://github.com/user-attachments/assets/2af3fe42-dfb0-4931-b167-4af1afd288e6" />


**Result**

<img width="163" height="215" alt="Q4R" src="https://github.com/user-attachments/assets/6349c14b-bfce-42b7-b471-e614ec3b005b" />

**Insight:**
- **Highest month:** May (Q2), followed by October–December (Q4).
- **Lowest months:** March and September.
- **May ($53K) beats even December.** There is an unexpected Q2 peak suggesting that there is an untapped spring campaign potential. October-December confirm holiday strength, while March/September lag. Two distinct peaks (not just holiday) enable year-round planning


## **Query 5**

<img width="542" height="248" alt="Q5" src="https://github.com/user-attachments/assets/091ae1b5-5c3a-4a51-b28a-2ab95f18b6d9" />

**Result**

<img width="171" height="98" alt="Q5R" src="https://github.com/user-attachments/assets/4f9091b3-fcbb-4e74-a514-5beb9ac1dd03" />

**Insight:**
- **Q4 (Oct–Dec)** is the strongest quarter. This is a clear evidence of holiday season peaks
- **Q2 (Apr–Jun)** follows closely. This is possibly linked to spring collections and midyear promotions
- **Q1 (January–March)** maintains solid performance. This suggests a steady post-holiday recovery period
- **Q3 (Jul–Sep)** lags behind. This is likely due to slower consumer activity in summer months
- Q4 ($126K) leads by just 2% over Q2 ($124K). This is an unusually strong non-holiday performance. Q3 ($96K) is the clear opportunity (20% below average). Balanced peaks mean the business can smooth revenue through targeted Q3 initiatives.

# Business Strategic Recommendations

1. **Product Prioritization**

  Electronics ($157K) and Clothing ($156K) contribute 68% of revenue despite near-equal performance.
  
  **Action:** 
  - Allocate 35% marketing budget to each (Beauty: 30%)
  - Test Electronics/Clothing bundles
    
  _Source: Query 1_



2. **Customer Segmentation Strategy**

  High Potential Targets
  
  <img width="615" height="225" alt="Screenshot 2026-03-04 at 3 54 52 PM" src="https://github.com/user-attachments/assets/bf12fbe9-f809-4cae-be6b-a7ca333d7193" />

  _Source: Query 2 & 3_



  
3. **Inventory & Capacity Planning**

<img width="551" height="236" alt="Screenshot 2026-03-04 at 10 29 51 PM" src="https://github.com/user-attachments/assets/d3a1e36a-f35e-49c2-8bfd-07615317084b" />

   
   _Source: Query 4 & 5_

# Future Analysis Opportunities
**With more data, I would further explore the following:**
1. **Marketing**
   - Compare revenue before and after discount periods
   - Online and in-store revenue patterns
2. **Product**
   - Identify frequently co-purchased items (Clothing & Beauty bundles)
3. **Customer Retention**
   - Track if customers return monthly and calculate retention rates by demographics
   - Measure total spend per customer to prioritize high value segments
   - Rank customers by Recency, Frequency, Monetary value for targeted campaigns
