# 🛍️ Consumer Behavior Analysis | End-to-End Data Analytics Project

> A complete data analytics pipeline analyzing customer shopping behavior using SQL, Python, and Power BI to uncover actionable business insights.

---

## 📌 Project Overview

This project explores **consumer purchasing behavior**, identifying patterns in:

* Customer spending
* Loyalty segmentation
* Payment preferences
* Discount impact on purchases

The goal is to simulate a **real-world data analyst workflow** — from raw data to business insights.

---

## 🧠 Key Insights

* 💎 High-tier loyalty customers contribute the highest revenue
* 💳 Certain payment + shipping combinations drive more transactions
* 🎯 Discounts increase order volume but may reduce average spend
* ⭐ Customer satisfaction varies across transaction types

---

## 🗂️ Project Structure

```
consumer-behavior-project/
│
├── data/
│   ├── raw/
│   │   └── shopping_behavior_updated.csv
│   │
│   └── processed/
│       ├── shopping.db
│       └── shopping.sqbpro
│
├── notebooks/
│   ├── 01_data_prep.ipynb
│   └── untitled.ipynb
│
├── sql/
│   ├── create.sql
│   └── analysis.sql
│
├── powerbi/
│   └── shopping_dashboard.html
│
└── README.md
```

---

## ⚙️ Tech Stack

* **Python** (Pandas, Data Cleaning)
* **SQL (SQLite)** – Data analysis
* **Power BI** – Dashboard visualization
* **Jupyter Notebook** – Exploration
* **DB Browser for SQLite (.sqbpro)**

---

## 🔄 Workflow

1. 📥 Raw data ingestion (`CSV`)
2. 🧹 Data cleaning & preprocessing (`Python`)
3. 🗄️ Database creation (`SQLite`)
4. 📊 SQL analysis (aggregations & insights)
5. 📈 Dashboard creation (`Power BI`)
6. 📌 Business insights & storytelling

---

## 🧮 Key SQL Analysis

### 1️⃣ Loyalty Tier Analysis

```sql
SELECT
    loyalty_tier,
    COUNT(*) AS customers,
    ROUND(AVG(purchase_amount), 2) AS avg_spend,
    ROUND(AVG(review_rating), 2) AS avg_rating,
    SUM(subscription_status) AS subscribers
FROM shopping
GROUP BY loyalty_tier
ORDER BY avg_spend DESC;
```

### 2️⃣ Payment & Shipping Behavior

```sql
SELECT
    preferred_payment_method,
    shipping_type,
    COUNT(*) AS transactions,
    ROUND(AVG(purchase_amount), 2) AS avg_amount
FROM shopping
GROUP BY preferred_payment_method, shipping_type;
```

### 3️⃣ Discount Impact

```sql
SELECT
    discount_applied,
    promo_code_used,
    COUNT(*) AS orders,
    ROUND(AVG(purchase_amount), 2) AS avg_purchase
FROM shopping
GROUP BY discount_applied, promo_code_used;
```

---

## 📊 Dashboard Preview
![alt text](<powerbi/Screenshot 2026-05-05 205957.png>)
![alt text](<powerbi/Screenshot 2026-05-05 210024.png>)

---

## 📁 Dataset

* Source: Simulated retail dataset
* Records: Customer transactions
* Features include:

  * Purchase Amount
  * Loyalty Tier
  * Payment Method
  * Discount Usage
  * Ratings

---

## 🚀 How to Run

```bash
git clone https://github.com/reddyreddyre865-ops/consumer-behavior-project.git
cd consumer-behavior-project
jupyter notebook notebooks/01_data_prep.ipynb
```

---

## 📌 Business Impact

This project demonstrates how data can:

* Increase revenue through customer segmentation
* Optimize discount strategies
* Improve customer satisfaction
* Support data-driven decision making

---

## 👨‍💻 Author

PATURU REDDY HIMAKUMAR
Aspiring Data Analyst
📫 LinkedIn: (Add your link)

---

## 💼 GitHub Portfolio Description

> End-to-end data analytics project analyzing consumer behavior using Python, SQL, and Power BI. Includes data cleaning, database design, advanced SQL analysis, and interactive dashboards with actionable business insights.

---

---

## ⭐ Support

If you like this project, give it a ⭐ on GitHub!
