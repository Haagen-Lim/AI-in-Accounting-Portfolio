# AI-Driven Financial & Forensic Analysis Portfolio

**Author:** Haagen Lim
**Education:** BCom (Accounting & Commercial Law), University of Auckland
**Focus:** Financial Modelling, Quantitative Analysis, and Audit Automation

## Project Overview
This repository contains Python-based workflows demonstrating how modern accounting can leverage AI and data science for risk assessment and financial forecasting. The objective is to move beyond manual spreadsheet analysis toward reproducible, scalable financial diagnostics.

### 📊 Key Analysis Modules

#### 1. Quantitative Market Analysis (Correlation & Risk)
* **Objective:** Assessed portfolio diversification benefits between high-growth tech stocks (NVDA vs. TSLA).
* **Methodology:** Calculated Pearson correlation coefficients on daily returns over a 5-year period.
* **Outcome:** identified a moderate correlation (0.47), suggesting that while both are "Big Tech," they offer distinct risk profiles for portfolio construction.

#### 2. Technical Forecasting (Golden Cross Detector)
* **Objective:** Programmed a trading signal detector to identify bullish market reversals.
* **Methodology:** Calculated 50-day and 200-day Simple Moving Averages (SMA) to spot "Golden Cross" intersection points.
* **Outcome:** Automated the detection of a major buy signal in mid-2025, validating trend analysis without manual charting.
  
#### 3. Forensic Audit Automation (Benford's Law)
* **Objective:** Detected anomalies in financial datasets to identify potential manipulation or pricing irregularities.
* **Methodology:** Applied Benford’s Law (First Digit Law) using `numpy` and `matplotlib` to compare actual vs. expected digit frequency.
* **Outcome:** Successfully flagged deviations in the leading digit '1' (>45% frequency vs 30% expected), simulating an "Audit Red Flag" for substantive testing.

#### 4. Materiality Assessment (Data Segmentation)
* **Objective:** Automated the "Audit Planning" phase by segmenting transactions into material ("Major") vs. immaterial ("Minor") categories.
* **Methodology:** Scripted a logic rule to flag high-value transactions (> $5,000) for substantive testing.
* **Outcome:** Instantly filtered 17,000+ transactions down to the critical ~800 high-risk items requiring auditor attention, reducing sampling time by 95%.

#### 5. Sales Forecasting (Advisory & Budgeting)
* **Objective:** Transitioned from historical reporting to forward-looking advisory by predicting future cash flow trends.
* **Methodology:** Aggregated daily sales data and trained a **Linear Regression** model (`sklearn`) to forecast revenue for the next 30 days.
* **Outcome:** Produced a visual trend line for "Going Concern" assessments, identifying a positive growth trajectory despite daily volatility.

#### 6. Automated Reconciliation (The "Matching" Problem)
* **Objective:** Solved a common accounting error where bank statements do not match internal ledgers due to missing transactions or duplicate order IDs.
* **Methodology:** Built a Python script using `pd.merge` with a **Composite Key** (Order ID + Sales Amount) to strictly reconcile 2,000+ rows instantly.
* **Outcome:** Identified 5 specific missing transactions that a standard VLOOKUP failed to catch due to duplicate keys.

---

### 🔧 Excel Automation & Workflow Optimisation (VBA)
While Python handles heavy data analysis, **Visual Basic for Applications (VBA)** is essential for automating day-to-day accounting workflows within Excel.

#### 7. One-Click Report Formatter [Single-Sheet Formatter (MakeItPretty)](MakeItPretty.bas)
* **Objective:** To eliminate the manual time spent cleaning and formatting raw transaction reports downloaded from accounting software (e.g., Xero, MYOB).
* **Methodology:** Wrote a VBA macro that interacts with the Excel Object Model to identify used ranges, apply conditional formatting, and lock viewpanes programmatically.
* **Outcome:** Created a "One-Click" solution that:
    * **Auto-Fits** all columns for immediate readability.
    * **Standardises Headers** with professional styling (Dark Blue/White).
    * **Enables Audit Features** (Filters & Freeze Panes) automatically.
    * **Result:** Reduces manual report preparation time by ~90% per file.

#### 8. Multi-File Consolidator [Multi-File Consolidator](Consolidator.bas)
* **Objective:** Solved the "Month-End" bottleneck of manually combining data from multiple departmental spreadsheets (e.g., Branch budgets).
* **Methodology:** Utilised VBA `Dir` loops and `FileDialog` to iterate through user-selected folders, extracting and appending data to a Master Ledger automatically.
* **Outcome:** Capable of merging 50+ Excel files in under 30 seconds, ensuring data accuracy and eliminating manual copy-paste errors.

#### 9. Automated Management Reporting [Automated Management Reporting](ReportToPDF.bas)
* **Objective:** To streamline the "Month-End Pack" creation process, where multiple financial statements (P&L, Balance Sheet, Cash Flow) need to be formatted and combined into a single client-ready PDF.
* **Methodology:** Programmed a script to apply consistent branding (Headers/Footers/Fonts) across all sheets and utilise the `ExportAsFixedFormat` function to merge selected sheets into one document.
* **Outcome:** Generates a professional, dated, and branded PDF management pack in <5 seconds, eliminating the need to manually print and merge separate tabs.

---

## 🛠 Tech Stack
* **Languages:** Python 3.10+
* **Libraries:** Pandas (Data Manipulation), Matplotlib (Visualisation), YFinance (Market Data).
* **Environment:** Google Colab / Jupyter Notebooks.

---
*Disclaimer: This project is for educational and portfolio purposes to demonstrate technical proficiency in financial data analysis.*
