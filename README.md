# 🛒 Consumer Behavior Analytics Project

> 📊 End-to-End Data Analytics Project | SQL + Python + Dashboard
> 🎯 Goal: Understand customer purchase behavior & generate actionable business insights

---

## 📌 Project Overview

This project analyzes **consumer shopping behavior** using structured data and delivers **business insights through an interactive dashboard**.

It covers the complete analytics lifecycle:
✔ Data Cleaning
✔ Data Analysis
✔ SQL Querying
✔ Business Insights
✔ Interactive Dashboard

The final output enables businesses to understand:

* Customer preferences
* Revenue drivers
* Seasonal trends
* Purchase behavior patterns

---

## 🧠 Business Problem

Businesses often struggle to answer:

* Which product category generates the most revenue?
* What factors influence customer purchases?
* How does seasonality affect buying behavior?
* Which customers are most valuable?

This project solves these using **data-driven insights**.

---

## 📂 Project Structure

```
consumer-behavior-project/
│
├── 📊 data/
│   └── shopping_behavior_updated.csv
│
├── 🗄️ database/
│   ├── shopping.db
│   └── shopping.sqbpro
│
├── 📓 notebooks/
│   └── 01_data_prep_ibynb
│
├── 📈 dashboard/
│   └── shopping_dashboard.html
│
├── 📷 assets/
│   ├── dashboard-preview.png
│   └── charts-preview.png
│
└── README.md
```

---

## 📊 Dataset Details

* 📁 File: `shopping_behavior_updated.csv`
* 📌 Records: **3,900**
* 📌 Features: **18 columns**

**Key Columns:**
Age • Gender • Category • Purchase Amount • Season • Rating • Subscription Status • Payment Method • Frequency of Purchase

---

## 🧹 Data Cleaning & Preparation

📓 Notebook: `01_data_prep_ibynb`

Steps performed:

* Handled missing values
* Standardized categorical variables
* Data type corrections
* Feature engineering
* Aggregations for dashboard

---

## 🗄️ SQL Analysis

📁 `shopping.db` & `shopping.sqbpro`

Used SQL for querying and KPI calculations:

```sql
SELECT category, SUM(purchase_amount)
FROM shopping
GROUP BY category;
```

---

## 📈 Interactive Dashboard

📁 `shopping_dashboard.html`

**Features:**
✔ KPI Cards
✔ Revenue Analysis
✔ Customer Segmentation
✔ Filter Panel (Category, Gender, Season, Subscription)
✔ Interactive Charts

---

## 📷 Dashboard Preview

 [Shopping Behavior Dashboard](file:///C:/Users/hp/Desktop/consumer-behavior-project/powerbi/shopping_dashboard.html)  

---

## 📊 Key Insights

💰 **Revenue Drivers** → Clothing generates highest revenue
👥 **Customer Behavior** → Frequent purchases (weekly/monthly)
💳 **Payment Trends** → Digital payments dominate
🌦️ **Seasonality** → Peak sales in Fall & Winter
📈 **Subscriptions** → Subscribers purchase more frequently

---

## 🛠️ Tech Stack

* Python (Pandas, NumPy)
* SQL
* HTML, CSS, JavaScript
* Chart.js
* Jupyter Notebook

---

## 🚀 How to Run

```bash
git clone https://github.com/your-username/consumer-behavior-project.git
cd consumer-behavior-project
jupyter notebook
```

Open dashboard manually:

```
shopping_dashboard.html
```

---

## 📌 Project Highlights

⭐ End-to-End Analytics Workflow
⭐ Real-world Dataset Simulation
⭐ Interactive Dashboard
⭐ SQL + Python Integration
⭐ Business-Oriented Insights

---

## 🎯 Future Improvements

* Add Machine Learning (Customer Segmentation)
* Deploy Dashboard (Streamlit / Power BI)
* Real-time data integration
* Predictive analytics

---

## 👨‍💻 Author

**Your Name** – Aspiring Data Analyst

📧 [reddyreddyre865@gmail.com](mailto:reddyreddyre865@gmail.com)
🔗 https://linkedin.com/in/your-profile
💻  G[reddyreddyre865-ops](https://github.com/reddyreddyre865-ops)  

---

## ⭐ Support

If you found this project useful, consider giving it a ⭐ on GitHub!
