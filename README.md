# E-Commerce Executive & Category Analytics

## 📊 Project Overview
Developed an interactive 2-page Power BI dashboard analyzing **$38M+** in e-commerce revenue to evaluate key financial drivers, order volume dynamics, and product category performance. 

- **Executive Dashboard:** High-level overview of Gross Sales, Net Sales, Profit Margins, AOV, UPT, and channel distribution.
- **Category & Brand Level Analytics:** Deep dive into product categories, top 10 brands, and YoY trends.

---

## 🔄 Data Pipeline Architecture
1. **Data Source:** Raw e-commerce dataset sourced from [Kaggle](https://www.kaggle.com/datasets/datascikhan/e-commerce-sales-and-customer-analytics/data?).
2. **Ingestion & Storage:** Imported raw files into a local **SQLite** database via **DBeaver**.
3. **Data Transformation (SQL):** Executed analytical SQL queries to clean data, join tables, and calculate core business metrics.
4. **Export & BI Visualization:** Generated the final **aggregated dataset** (available via [Google Drive Link](https://drive.google.com/file/d/19KYmsCEpWKqz-gnw1uSG7BmvpDeWcA1y/view?usp=sharing) and loaded it into **Power BI** to build interactive executive dashboards

---

## 🛠️ Tech Stack & Key Metrics
- **Tools:** Power BI, DAX, Power Query, SQL (SQLite / DBeaver).
- **Data Modeling:** Star Schema (with a dedicated Calendar dimension).
- **Key Metrics:** `Gross Sales YoY %`, `AOV`, `UPT (Units Per Transaction)`, `Profit Margin %`, `Net Sales`.

---

## 📁 Repository Structure
- `sql/` — Contains backend SQL transformation scripts and data preparation queries.
- `data/` — Processed analytical `.csv` dataset exported for dashboard ingestion.
- `Ecommerce_Analytics_v1.0.pbix` — The main Power BI interactive dashboard file.
