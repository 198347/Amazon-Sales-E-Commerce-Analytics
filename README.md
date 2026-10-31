# 🛒 Amazon E-Commerce Sales Analytics Dashboard

End-to-end data analysis project analyzing **128,975+ e-commerce sales records** from an Amazon dataset (`amazon.data.csv`)[cite: 1]. This project covers the complete data lifecycle—from initial data cleansing in Excel and Power Query to relational database architecture in Microsoft SQL Server, DAX modeling in Power Pivot, and interactive visualization in Power BI Desktop[cite: 1].

---

## 🛠️ Tech Stack & Architecture

* **Data Acquisition & Pre-processing:** Microsoft Excel, Power Query (`[new-date]` standardization, quality audit, deduplication)[cite: 1]
* **Database & Staging Layer:** Microsoft SQL Server (`Amazon_Sales_DB`, SQL Views `[dbo].[vw_Amazon_Sales_Clean]`)[cite: 1]
* **Data Modeling & Time Intelligence:** Power Pivot, DAX Engine (Contiguous Date Dimension `Dim_Date`)[cite: 1]
* **Visualization & Reporting:** Power BI Desktop (Multi-page interactive UI/UX layout)[cite: 1]

---

## 📊 Project Lifecycle & Implementation Stages

### 1. Data Acquisition & Pre-processing (Excel & Power Query)
* Ingested **128,975 raw sales order lines**[cite: 1].
* Cleaned temporal anomalies, handled missing headers, and created a standardized date field `[new-date]`[cite: 1].
* Performed data quality audits by stripping redundant duplicate rows[cite: 1].

### 2. Relational Database Staging (Microsoft SQL Server)
* Migrated pre-cleaned staging data into a dedicated database instance named `Amazon_Sales_DB`[cite: 1].
* Validated records using SQL validation scripts (`SELECT TOP 200`)[cite: 1].
* Engineered the optimized consumption view `[dbo].[vw_Amazon_Sales_Clean]`[cite: 1].

### 3. Data Modeling & Power Pivot Prototyping
* **Contiguous Date Dimension (`Dim_Date`):** Created dynamically using DAX, linked directly to the primary key column `[new-date]`[cite: 1].
* **Relational Schema:** Established an active **One-to-Many (1:\*) relationship** with single-direction filtering from `Dim_Date` [Date] to `vw_Amazon_Sales_Clean` [new-date][cite: 1].

### 4. DAX Measure Repository (`_All_Measures`)
Centralized business logic and time-intelligence calculations[cite: 1]:
* **Total Revenue:** `Total Revenue = SUM('vw_Amazon_Sales_Clean'[Amount])`[cite: 1]
* **Total Orders:** `Total Orders = DISTINCTCOUNT('vw_Amazon_Sales_Clean'[Order ID])`[cite: 1]
* **Total Quantity:** `Total Quantity = SUM('vw_Amazon_Sales_Clean'[Qty])`[cite: 1]
* **Average Order Value (AOV):** `Average Order Value = DIVIDE([Total Revenue], [Total Orders], 0)`[cite: 1]
* **Sales Same Period Last Year (SPLY):** `Sales SPLY = CALCULATE([Total Revenue], SAMEPERIODLASTYEAR('Dim_Date'[Date]))`[cite: 1]
* **YoY Sales Growth %:** `YoY Sales Growth % = DIVIDE([Total Revenue] - [Sales SPLY], [Sales SPLY], 0)`[cite: 1]

### 5. Power BI Dashboard Layout
* **Page 1 (Executive Summary):** KPI cards (Revenue, Orders, Quantity, AOV), monthly revenue trend line chart, and Easy Ship vs. Merchant fulfillment split donut chart[cite: 1].
* **Page 2 (Operations & Categories):** Top product categories bar chart, order status distribution (Delivered, Cancelled, Pending), courier shipping performance, and interactive slicers[cite: 1].

---## 🖼️ Dashboard Preview

### 1. Executive Summary
![Executive Summary](images/executive_summary.png)

### 2. Operations & Categories Analytics
![Operations Analytics](images/operations& category.png)

## 🚀 How to Use / View
1. Clone or download this repository.
2. Review the detailed documentation file (`Amazon_Sales_Full_Project_Documentation.docx`)[cite: 1].
3. Open the Power BI report or SQL scripts to explore the underlying models and queries.

---
*Created by[محمد ابراهيم الحنفى احمد] as a Graduation Project.*
