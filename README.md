# Credit Card Transactions Analysis 💳

**End-to-end analysis** of credit card spending patterns across **Indian customers** using Python, SQL, and Power BI.

**Tech:** MySQL, Python (Pandas/Seaborn), Power BI



## 📊 Dataset Overview

**Dataset**: [Kaggle Credit Card Spending India](https://www.kaggle.com/datasets/rohanrao/credit-card-spending-habits-in-india)

- **Source**: Kaggle 'Analyzing Credit Card Spending Habits in India'
- **Size**: Multiple CSV files with transaction-level data
- **Key columns**: Customer ID, Transaction Amount, Spending Category, Month, City, Age Group

**Complete pipeline:** Raw data → SQL cleaning → EDA → Power BI dashboard

## 📁 Files (4 total)
- `Credit_Card.ipynb` — EDA & visualization  
- `Credit Card Cleaning.ipynb` — Data prep
- `Credit Card EDA.ipynb` — Analysis
- `Dashboard.png` — Power BI results

![Dashboard Preview](<Dashboard.png>)

## 🎯 Business Problem
**Identify high-value customers** and **spending patterns** to:
- Design targeted credit card offers
- Optimize rewards programs
- Increase customer lifetime value

## 🧹 Data Cleaning
✅ Handled missing values in transaction amounts
✅ Standardized city names and categories
✅ Converted dates to proper format
✅ Removed duplicate transactions
✅ Created Age Group and Spending Tier features


## 🔍 EDA Highlights
Top 5 Spending Categories:

Entertainment: 28%
Shopping: 22%
Travel: 18%
Dining: 15%
Groceries: 12%

High-spending cities: Mumbai, Delhi, Bangalore

## 💾 SQL Analysis
Key Queries:

Top spending customers by city
Monthly spending trends
Category-wise transaction volume
High-value customer segmentation
Average transaction value by age group


## 💡 Key Insights
💳 ₹4.07 Billion total spend across 26,052 transactions with an average of ₹1,56,411 per transaction

🧾 Bills is the highest spending category (₹90.7 Cr), while Travel is the least used with only 738 transactions

🥇 Silver cards dominate — highest in both transaction count (6,840) and total spend (₹106.9 Cr)

👩 Females drive 54% of revenue (₹2.2B) and are more active with 10.6% more transactions than males

🏙️ Mumbai, Bengaluru, Ahmedabad and Delhi are the top 4 cities — each contributing nearly equal spend (₹55–57 Cr)

🔍 Smaller cities punch above their weight — Thodupuzha and Nahan have the highest average spend per transaction (₹2.96L and ₹2.64L)

📍 Spend is highly concentrated — only 12 out of 986 cities exceed the average city spend

🏆 City-Category leaders: Mumbai (Bills, Grocery), Bengaluru (Food, Fuel), Ahmedabad (Entertainment), Chennai (Travel)

📅 January 2015 was the highest spend month (₹22.3 Cr) with a festive spike in December 2013 (+11.59% MoM)

👨 Gender spending difference: Females spend most on Bills, Males on Fuel

## 🛠 Solutions Delivered
✅ Customer segmentation dashboard (Power BI)
✅ SQL queries for production reporting
✅ Spending pattern recommendations
✅ High-value customer targeting strategy


💡 Business Solutions
1. Bills & Essentials — Maximize Revenue
Partner with utility companies, telecom providers for co-branded credit card offers

Offer cashback/rewards on Bills payments to increase card stickiness

Bills dominates spend — auto-pay features will drive recurring transactions

2. Travel — Grow the Weakest Category
Travel has only 738 transactions — massive untapped potential

Launch travel-specific reward points or airport lounge access on Signature/Platinum cards

Target Chennai customers (travel category leader) with premium travel campaigns

3. Silver Card — Upsell Opportunity
Silver leads in volume but is the entry-level card

Design upgrade campaigns → push Silver users to Signature/Platinum

Higher card tier = higher spend potential per customer

4. Female Customers — Priority Segment
Females drive 54% revenue — they are the most valuable segment

Create Bills-focused offers (their top category) to retain them

Female-preferred Silver cards should have targeted loyalty programs

5. Male Customers — Fuel Targeting
Males spend most on Fuel — partner with petrol stations (HPCL, IOCL, BPCL)

Offer fuel surcharge waivers to increase male card usage frequency

6. Top 4 Cities — Defend Market Share
Mumbai, Bengaluru, Ahmedabad, Delhi are near-equal — no city is safe

City-specific campaigns to pull ahead — e.g., Bengaluru tech crowd → Food & Fuel offers

7. Small Cities — Hidden Premium Market
Thodupuzha, Nahan, Alwar have the highest avg spend per transaction

These customers spend big but transact less — targeted premium card outreach can unlock frequency

8. Seasonal Campaigns
January spike and December festive jump confirm Q4-Q1 is peak season

Pre-load offers in November-December to capture festive spend early

Address May drop (-16.54%) with mid-year promotions

9. City-Category Targeting
City	Top Category	Action
Mumbai	Bills, Grocery	Utility + Supermarket tie-ups
Bengaluru	Food, Fuel	Restaurant + Fuel station offers
Ahmedabad	Entertainment	Movie/OTT platform partnerships
Chennai	Travel	Travel agency + airline deals
10. Spend Concentration Risk
12 cities out of 986 drive majority of revenue — over-dependence risk

Invest in Tier 2/3 city expansion using small-city high-avg-spend data as proof of concept
⭐ **Star if helpful!**
