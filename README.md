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
│   └── processed/
│       └── shopping.db
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
├── shopping.sqbpro
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

### 🔹 Overall Dashboard

![Dashboard Overview](images/dashboard_overview.png)

### 🔹 Customer Segmentation

![Customer Segmentation](images/customer_segmentation.png)

### 🔹 Payment & Shipping Insights

![Payment Insights](images/payment_shipping.png)

> ⚠️ Replace above images with real screenshots from `powerbi/shopping_dashboard.html`

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
git clone https://github.com/your-username/consumer-behavior-project.git
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

**Your Name**
Aspiring Data Analyst
📫 LinkedIn: (Add your link)

---

## 💼 GitHub Portfolio Description

> End-to-end data analytics project analyzing consumer behavior using Python, SQL, and Power BI. Includes data cleaning, database design, advanced SQL analysis, and interactive dashboards with actionable business insights.

---

## 📄 Resume Bullet Points (Top 1%)

* Built an end-to-end data analytics pipeline using **Python, SQL, and Power BI** to analyze customer purchasing behavior
* Processed raw transactional data into a structured **SQLite database**
* Performed advanced SQL analysis on **customer segmentation, payment behavior, and discount impact**
* Developed an interactive **Power BI dashboard** to track KPIs and insights
* Delivered actionable insights to support **data-driven business decisions**

---

## 📸 Add Screenshots (Important)

1. Open `shopping_dashboard.html`
2. Take screenshots
3. Create folder: `images/`
4. Save as:

   * dashboard_overview.png
   * customer_segmentation.png
   * payment_shipping.png
5. Push to GitHub

---

## ⭐ Support

If you like this project, give it a ⭐ on GitHub!
