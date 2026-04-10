
# 🛍️ ShopFast Customer Retention Analysis

ShopFast is an e-commerce company. Over the last six months, revenue from repeat customers is down about 15% compared with the prior period.

## 📌 Project Overview
This project analyzes customer behavior, revenue trends and retention patterns for ShopFast, an e-commerce company. The goal is to identify key factors affecting customer retention and provide actionable business recommendations.

---

## 🎯 Objectives
- Analyze Monthly Active Users (MAU)
- Understand repeat vs one-time customer behavior
- Identify revenue-driving product categories
- Evaluate the impact of shipping time on customer satisfaction
- Provide data-driven recommendations for improving retention

---

## 📂 Project Structure
```
ShopFast-Analysis/
│
├── data/
│   ├── raw_data.csv
│   └── cleaned_data.csv
│
├── Analysis.ipynb     # Python code (Part 1 + Part 3 + Part 4)
│
├── SQL_queries.sql     # SQL analysis (Part 2)
│
├──executive_summary_report.pptx
└── README.md
```

## ▶️ How to Run the Project

### 🔹 Python (Part 1 & Part 3)

1. Install required libraries:
```
pip install pandas matplotlib seaborn
```

2. Open the Python file:
```
Analysis.py
```

3. Run the script:
- In VS Code / Jupyter Notebook → Run all cells  
- OR using terminal:
```
python Analysis.py
```

4. Output:
- Cleaned dataset will be generated and Charts will be displayed 

---

### 🔹 SQL (Part 2)

- SQL queries are available in:
```
queries.sql
```

- These queries calculate:
  - Monthly Active Users (MAU)
  - Revenue by Category
  - Customer Lifetime Value (CLV)

---

## 🗄️ SQL Engine Used

👉 I have used **MySQL**
### How to Run SQL Queries:

1. Open MySQL Workbench (or any MySQL client)
2. Import the datasets into tables:
   - `customers`
   - `orders`
   - `order_items`
   - `reviews`
3. Open `queries.sql`
4. Run each query to generate results

---

## 🧹 Part 1: Data Cleaning (Python)
Performed using Python (Pandas):

- Standardized date formats (`order_date`, `signup_date`)
- Filtered only **Completed orders**
- Removed duplicate records
- Converted numeric fields (`price`, `shipping_cost`)
- Handled missing values in reviews (flagging approach)
- Performed basic data quality checks (QA)

---

## 🧠 Part 2: SQL Analysis
SQL was used to compute key business metrics:

- 📊 **MAU (Monthly Active Users)**  
  → Count of distinct customers per month (Completed orders only)

- 💰 **Revenue by Category**  
  → Sum of `price + shipping_cost` grouped by category

- 👥 **Customer Lifetime Value (CLV)**  
  → Total spend per customer, averaged by acquisition channel

---

## 📈 Part 3: Visualization & Insights (Python)
Visualizations were created using Python (Matplotlib/Seaborn):

- MAU Trend (Customer engagement over time)
- Repeat vs One-time Customers (Retention behavior)
- Revenue by Category (Business performance)
- Shipping Time Distribution (Delivery performance)

---
## 🚀 Executive Summary & Recommendations
A **Executive Summary PPT** is included for non-technical stakeholders.

### Key Recommendations:
1. Improve shipping speed (target <10 days delivery)
2. Launch re-engagement campaigns for inactive users (45–60 days)
3. Focus on high-performing categories (Apparel & Books)
4. Strengthen loyalty programs for repeat customers

---
## 🛠️ Tools & Technologies
- Python (Pandas, Matplotlib, Seaborn)
- MySQL
- PowerPoint (Executive Summary)
- Excel (data review)

---

## 👩‍💻 Author
**Srimathy**  
Junior Data Analyst  

