# 🚀 SaaS Product Analytics Dashboard

## 📌 Project Overview

This project analyzes user behavior for a simulated SaaS product using **SQL** for data analysis and **Microsoft Power BI** for interactive dashboard development.

The goal was to evaluate product performance across three critical SaaS analytics dimensions:

* 📊 User engagement
* 🔻 Conversion funnel performance
* 🔥 Retention behavior

The project simulates a real-world product analytics workflow commonly used in SaaS and technology companies to identify growth opportunities and optimize user experience.

---

## 🧠 Business Problem

The product team wants to answer:

* How are users interacting with the platform?
* Where are users dropping off in the conversion funnel?
* Are users returning after signup?
* What are the main opportunities for improving growth?

---

## 🛠️ Tools Used

* 🗄️ MySQL
* 📊 Microsoft Power BI
* 📁 CSV Dataset
* 🧮 SQL (CTEs, joins, cohort analysis, aggregation)
* ⚙️ DAX

---

## 📂 Dataset

The dataset was custom-generated to simulate realistic SaaS product behavior.

### 👤 Users Table

Contains user profile information

**Columns:**

* user_id
* signup_date
* country
* device

**Rows:** 1000

---

### ⚡ Events Table

Tracks user product interactions

**Columns:**

* event_id
* user_id
* event_name
* event_date

**Event types:**

* login
* view_page
* create_task
* start_trial

**Rows:** ~8000

---

### 💳 Subscriptions Table

Tracks paid conversions

**Columns:**

* user_id
* subscription_date
* plan_type

**Rows:** ~200+

---

## 🔄 Project Workflow

### 1️⃣ Data Preparation

* Imported CSV files into MySQL
* Validated relationships
* Ensured logical event sequences
* Cleaned inconsistencies

---

### 2️⃣ SQL Analysis

Performed analysis across three areas:

#### 📈 Daily Active Users (DAU)

Tracked engagement trends over time.

#### 🔻 Conversion Funnel

Measured progression through:
**Login → View Page → Create Task → Trial → Subscription**

#### 🔥 Cohort Retention Analysis

Calculated retention by signup cohort to measure long-term engagement.

---

### 3️⃣ Dashboard Development

Built an interactive product analytics dashboard in Microsoft Power BI including:

* 📈 DAU trend line chart
* 🔻 Conversion funnel
* 🔥 Retention cohort heatmap
* 📊 KPI summary cards

---

## 🖼️ Dashboard Preview

### 📊 Full Dashboard

<img width="1160" height="648" alt="Dashboard" src="https://github.com/user-attachments/assets/806d529d-9db5-4ad7-9b06-db36ae7da2e9" />


### 📈 DAU

<img width="1112" height="587" alt="DAU" src="https://github.com/user-attachments/assets/dbe8f319-1725-44b1-b4d6-f05996ef15d0" />


### 🔻 Conversion Funnel

<img width="1055" height="577" alt="Funnel Chart" src="https://github.com/user-attachments/assets/d618adc5-ad21-4fe0-b51f-968268db432d" />


### 🔥 Retention Heatmap

<img width="1092" height="597" alt="Retention Heatmap" src="https://github.com/user-attachments/assets/9e036390-b7d8-4612-ae54-9ee6f0d4567c" />

---

## 📊 Key Insights

### 1️⃣ Moderate Overall Conversion

Conversion from engaged users (login) to paid users was approximately **17%**.

👉 This indicates moderate overall monetization performance.

---

### 2️⃣ Strong Trial-to-Paid Conversion

Approximately **40%** of trial users converted to paid subscriptions.

👉 This suggests the product effectively converts users once they reach the trial stage.

---

### 3️⃣ Activation Funnel Opportunity

A significant portion of users do not progress from engagement to trial.

👉 This highlights an opportunity to improve onboarding and activation.

---

### 4️⃣ Weak Long-Term Retention

Retention declines sharply within the first week and drops significantly after Day 7.

👉 This indicates weak habit formation and limited sustained engagement.

---

## 💡 Business Recommendations

### 🚀 Improve User Activation

* Optimize onboarding flows
* Add clearer trial prompts
* Reduce friction before trial signup

---

### ⚡ Increase Early Engagement

* Introduce product walkthroughs
* Encourage feature exploration
* Implement guided first-use experiences

---

### 🔥 Strengthen Retention

* Add engagement reminders
* Improve repeat-use incentives
* Deliver more immediate product value

---

## 🧠 Skills Demonstrated

### 🧮 SQL

* Complex joins
* CTEs
* Funnel analysis
* Cohort retention analysis
* Aggregations

---

### 📊 Power BI

* Data modeling
* DAX measures
* Matrix heatmaps
* Funnel visualizations
* Interactive dashboards

---

### 📈 Product Analytics

* Retention analysis
* Conversion optimization
* Behavioral analysis
* Insight generation

---

## 📁 Project Files

/README.md

/Raw_Data.xlsx

/sql_DAU.sql
/sql_Funnel.sql
/sql_Retention.sql

/dashboard.pbix
/01_dashboard.png
/02_DAU.png
/03_Funnel_Chart.png
/04_Retention_Heatmap.png




---

## 🎓 What I Learned

This project strengthened my understanding of:

* SaaS product metrics
* Cohort analysis
* Retention measurement
* Funnel optimization
* Turning raw behavioral data into actionable business insights

---

## 👤 Author

**Hasan Hamed**

---

