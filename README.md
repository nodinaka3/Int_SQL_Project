# Sales Analysis with SQL - Contoso Sales Data

## Overview
Analysis of customer behavior, retention, and lifetime value for an e-commerce company (contoso) using SQL & Business Intelligence to improve customer retention and maximize revenue.

## Business Questions

1. **Customer Segmentation**: Who are our most valuable Customers?
2. **Cohort Analysis**: How do different customer groups generate revenue?
3. **Customer Retention Analysis**: How many customers are retained over time?

## Analysis Approach
### 1. Customer Segmentation Analysis
 -  Categorized customers based on their total lifetime value (LTV)
 -  Assigned customers to High, Medium, and Low LTV segments
 -  Calculated key metrics: total revenue, average order value

 Query: [See `1 Customer Segmentation.sql`](/1%20Customer%20Segmentation.sql)

**Visualization:**
![Customer Segmentation](/Images/1_Customer_Segmentation.png)

**Key Findings:**
- High-value segments (25% of customers) contribute 66% of total revenue ($135.6M)
- Mid-value segments (50% of customers) generates 32.2% of total revenue ($66.3M)
- Low-value segments (25% of customers) accounts for only 2.2% of total revenue ($4.3M)

**Business Insights**:
- High-value customers (66% revenue): Offer premium membership program to 12,372 customers, as losing one customer in this segment results in a revenue loss of $10,960
- Mid-value customers (32.2% revenue): Create upgrade paths through personalized promotions, with potential $66.4M
- Low-Value Customers (2% of Revenue): Design re-engagement campaigns for 12,372 customers and price-sensitive promotions to increase purchase frequency. 
The aim should be on converting the $4.3M segment into mid-value customers through targeted offers.

### 2. Cohort Analysis
 -  Tracked revenue and customer count per cohorts
 -  Cohorts were grouped by year of first purchase
 -  Analysed customer retention at a cohort level

 Query: [See `2 Cohort analysis.sql`](/2%20Cohort_analysis.sql)

**Visualization:**
![Cohort Analysis](/Images/2_Cohort_Analysis.png)


**Key Findings:**
- Revenue per customer is highest for earlier cohorts and declines exponentially for newer cohorts
- Indicating that more recent customers are generating less value on a per-customer basis
- Although net revenue is decreasing, this is likely due to a larger customer base, which is not reflective of customer value.

**Business Insights**:
- Focus on improving customer retention and increasing revenue per customer for newer cohorts

### 3. Customer Retention
 -  Identified customers at risk of churning based on their purchase history
 -  Analysed last purchase patterns
 -  Calculated customer-specific metrics (churned, active)

 Query: [See `3 Customer Retention.sql`](/3%20Customer%20Retention.sql)

**Visualization:**
![Customer Retention](/Images/3_Customer_Retention.png)

**Key Findings:**
- Cohort churn stabilizes at ~90% after 2-3 years, indicating a predictable long-term retention pattern
- Retention rates are consistently low (8-10%) across all cohorts, suggesting retention issues are systematic rather than specific to certain years
- Newer cohorts (2022-2023) show similar churn trajectories, signalling that without intervention, future cohorts will follow the same pattern

**Business Insights**:
- Streghtening early engagement strategies to target the first 1-2 years with onboarding incentives, loyalty rewards, and personalized offers to improve long-term retention
- Re-engage high-value churned customers by focusing on targeted win-back campaigns rather than broad retention efforts, as reactivating valuable users may yield higher ROI
- Predict & preempt churn risk and use customer-specific warning indicators to proactively intervene with at-risk users before they lapse (apply machine learning models here)



## Strategic Recommendations

1. **Retain & Protect High-Value Customers**: Launch a premium loyalty program for the top 25% who drive 66% of revenue ($135.6M). Pair this with predictive churn models to proactively intervene with at-risk customers before they lapse, since losing one high-value customer costs ~$10,960.

2. **Accelerate Customer Growth Through Segmentation**: Create upgrade paths for mid-value customers ($66.3M potential) through personalized promotions, while running price-sensitive re-engagement campaigns to convert low-value customers ($4.3M) into mid-value ones.

3. **Fix Early-Stage Retention**: Address the systematic ~90% churn rate by strengthening the first 1-2 years of the customer journey with onboarding incentives, loyalty rewards, and targeted win-back campaigns — since all cohorts follow the same decline pattern regardless of acquisition year.



## Technical Details
- **Database:** PostgreSQL
- **Tools:** SQL, DBeaver, GitHub, VS Code
- **Visualizations:** Python (Matplotlib, Seaborn), Tableau