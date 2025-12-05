# AI-Driven Financial & Forensic Analysis Portfolio

**Author:** Haagen Lim
**Education:** BCom (Accounting & Commercial Law), University of Auckland
**Focus:** Financial Modelling, Quantitative Analysis, and Audit Automation

## Project Overview
This repository contains Python-based workflows demonstrating how modern accounting can leverage AI and data science for risk assessment and financial forecasting. The objective is to move beyond manual spreadsheet analysis toward reproducible, scalable financial diagnostics.

### 📊 Key Analysis Modules

#### 1. Forensic Audit Automation (Benford's Law)
* **Objective:** Detected anomalies in financial datasets to identify potential manipulation or pricing irregularities.
* **Methodology:** Applied Benford’s Law (First Digit Law) using `numpy` and `matplotlib` to compare actual vs. expected digit frequency.
* **Outcome:** Successfully flagged deviations in the leading digit '1' (>45% frequency vs 30% expected), simulating an "Audit Red Flag" for substantive testing.

#### 2. Quantitative Market Analysis (Correlation & Risk)
* **Objective:** Assessed portfolio diversification benefits between high-growth tech stocks (NVDA vs. TSLA).
* **Methodology:** Calculated Pearson correlation coefficients on daily returns over a 5-year period.
* **Outcome:** identified a moderate correlation (0.47), suggesting that while both are "Big Tech," they offer distinct risk profiles for portfolio construction.

#### 3. Technical Forecasting (Golden Cross Detector)
* **Objective:** Programmed a trading signal detector to identify bullish market reversals.
* **Methodology:** Calculated 50-day and 200-day Simple Moving Averages (SMA) to spot "Golden Cross" intersection points.
* **Outcome:** Automated the detection of a major buy signal in mid-2025, validating trend analysis without manual charting.

## 🛠 Tech Stack
* **Languages:** Python 3.10+
* **Libraries:** Pandas (Data Manipulation), Matplotlib (Visualisation), YFinance (Market Data).
* **Environment:** Google Colab / Jupyter Notebooks.

---
*Disclaimer: This project is for educational and portfolio purposes to demonstrate technical proficiency in financial data analysis.*
