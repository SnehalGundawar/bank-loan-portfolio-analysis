Bank Loan Portfolio Analysis

SQL • Python • Power BI • Excel

An end-to-end Bank Loan Portfolio Analysis project that uses SQL,
Python, Excel, and Power BI to examine loan applications, funding,
repayments, loan quality, and portfolio segments.

Portfolio project: Demonstrates practical data-analytics skills
across data exploration, SQL analysis, KPI development, visualization,
dashboarding, and business reporting.

📌 Project Overview

The goal of this project is to build a Bank Loan Report that
provides a clear view of lending activity and portfolio performance.

The analysis is organized into three dashboards:

Summary --- Key portfolio KPIs, Good vs. Bad Loans, and
loan-status analysis.

Overview --- Trends and portfolio breakdowns by month, state,
loan term, employment length, purpose, and home ownership.

Details --- A detailed view of loan and borrower information.

The dashboard structure and analytical requirements are based on the
supplied project problem statement and query documentation.
fileciteturn1file0L13-L23

🎯 Business Problem

A lending organization needs to monitor its loan portfolio and
understand:

Loan application volume

Amount funded

Amount received from borrowers

Average interest rate

Average debt-to-income ratio (DTI)

Good vs. Bad Loan performance

Monthly lending trends

Geographic distribution

Loan-term distribution

Employment length

Loan purpose

Home-ownership patterns

The purpose of the analysis is to support data-driven portfolio
monitoring and lending decisions.

📊 Key Portfolio Metrics

The supplied dataset contains 38,576 loan applications.

KPI                                Result

Total Loan Applications        38,576
Total Funded Amount         $435.76M
Total Amount Received       $473.07M
Average Interest Rate          12.05%
Average DTI                    13.33%
Good Loan Applications         33,243
Good Loan Percentage           86.18%
Bad Loan Applications           5,333
Bad Loan Percentage            13.82%
Fully Paid Loans               32,145
Current Loans                   1,098
Charged Off Loans               5,333

Good vs. Bad Loan Definition

For this project:

Good Loans = Fully Paid + Current

Bad Loans = Charged Off

This classification follows the supplied project requirements and is
used for descriptive portfolio analysis, not for a production
credit-scoring model.

📊 Dashboard 1 --- Summary

The Summary dashboard brings the most important portfolio KPIs into one
view.

Loan KPIs

Total Loan Applications

Month-to-Date (MTD) Applications

Month-over-Month (MoM) comparison

Total Funded Amount

MTD Funded Amount

MoM change in funded amount

Total Amount Received

MTD Amount Received

MoM change in amount received

Average Interest Rate

MTD Average Interest Rate

MoM change in interest rate

Average DTI

MTD Average DTI

MoM change in DTI

Good Loan KPIs

Good Loan Percentage

Good Loan Applications

Good Loan Funded Amount

Good Loan Amount Received

Bad Loan KPIs

Bad Loan Percentage

Bad Loan Applications

Bad Loan Funded Amount

Bad Loan Amount Received

Loan Status Analysis

Loan statuses are compared using:

Applications

Funded Amount

Amount Received

Average Interest Rate

Average DTI

MTD Funded Amount

MTD Amount Received

📈 Dashboard 2 --- Overview

The Overview dashboard focuses on portfolio trends and segmentation.

1. Monthly Trends

Chart: Line Chart

Measures:

Total Loan Applications

Total Funded Amount

Total Amount Received

Purpose: Understand how lending activity changes over time.

2. Regional Analysis

Chart: Filled Map

Analyzes loan metrics by state.

Purpose: Understand the geographic distribution of lending activity.

3. Loan Term Analysis

Chart: Donut Chart

Compares:

36-month loans

60-month loans

Using:

Applications

Funded Amount

Amount Received

4. Employment Length Analysis

Chart: Bar Chart

Compares lending metrics across employment-length categories.

5. Loan Purpose Analysis

Chart: Bar Chart

Analyzes lending activity across purposes including:

Debt consolidation

Credit card

Home improvement

Major purchase

Medical

Small business

Other

6. Home Ownership Analysis

Chart: Treemap

Analyzes lending activity across:

Mortgage

Rent

Own

Other

📋 Dashboard 3 --- Details

The Details dashboard provides a consolidated view of the underlying
loan portfolio.

It is designed to let users explore loan-level information, borrower
characteristics, and loan performance rather than relying only on
high-level KPIs.

🗄️ SQL Analysis

SQL was used to reproduce the business requirements and calculate
portfolio metrics.

The SQL analysis covers:

Total loan applications

MTD and PMTD applications

MTD and PMTD funded amount

MTD and PMTD amount received

MTD and PMTD average interest rate

MTD and PMTD average DTI

Good Loan percentage

Good Loan applications

Good Loan funded amount

Good Loan received amount

Bad Loan percentage

Bad Loan applications

Bad Loan funded amount

Bad Loan received amount

Loan-status analysis

Monthly trends

State-level analysis

Loan-term analysis

Employment-length analysis

Loan-purpose analysis

Home-ownership analysis

Filtered segmentation using grade and state

Example SQL

SELECT
    loan_status,
    COUNT(id) AS Total_Loan_Applications,
    SUM(total_payment) AS Total_Amount_Received,
    SUM(loan_amount) AS Total_Funded_Amount,
    AVG(int_rate * 100) AS Interest_Rate,
    AVG(dti * 100) AS DTI
FROM Bank_Loan_Data
GROUP BY loan_status;

🐍 Python Analysis

Python was used for exploratory data analysis and visualization.

The notebook includes:

Data loading and inspection

Dataset structure and data types

Descriptive statistics

KPI calculations

Loan-status analysis

Good vs. Bad Loan analysis

Monthly trend analysis

State-level analysis

Loan-term analysis

Employment-length analysis

Loan-purpose analysis

Home-ownership analysis

Data visualization

Libraries Used

Pandas --- Data manipulation and aggregation

NumPy --- Numerical analysis

Matplotlib --- Visualization

Seaborn --- Statistical visualization

Plotly --- Interactive visualization

📊 Power BI Dashboard

Power BI was used to convert the analysis into an interactive reporting
layer.

The dashboard includes:

Portfolio KPIs

Good vs. Bad Loan performance

Loan-status analysis

Monthly trends

State-level distribution

Loan-term analysis

Employment-length analysis

Loan-purpose analysis

Home-ownership analysis

Interactive filtering

Power BI files are available in the powerbi/ folder.

💡 Analytical Findings

The analysis highlights several characteristics of the supplied loan
portfolio.

Portfolio Quality

33,243 applications are classified as Good Loans, representing
86.18% of applications.

5,333 applications are classified as Bad Loans, representing
13.82%.

Funding by Purpose

Debt consolidation is the largest loan-purpose segment by funded
amount in the supplied analysis.

Geographic Distribution

California has the highest funded amount among states in the
supplied results.

Loan-Term Distribution

36-month loans represent a larger share of funded amount than
60-month loans in the supplied analysis.

These are descriptive findings from the supplied dataset. They should
not be interpreted as evidence of causation or as proof that a
particular state, purpose, term, or borrower characteristic creates
higher or lower credit risk.

🧠 Domain Context

Loan data can support lending organizations in areas such as:

Risk assessment

Portfolio management

Credit-risk management

Customer insights

Profitability analysis

Fraud detection

Regulatory reporting

Lending decision support

Market research

Customer retention

The lending process generally involves application, review, identity
verification, credit assessment, income verification, DTI assessment,
employment verification, risk assessment, approval or denial, agreement,
disbursement, repayment, and ongoing monitoring.

This domain context helps explain why the selected KPIs and portfolio
dimensions are relevant.

🛠️ Technology Stack

Technology                          Purpose

SQL / T-SQL                     KPI calculations, aggregation,
filtering, and segmentation

Python                          Exploratory data analysis and
visualization

Pandas                          Data manipulation and aggregation

NumPy                           Numerical analysis

Matplotlib / Seaborn            Data visualization

Plotly                          Interactive visualization

Power BI                        Interactive dashboards and
reporting

Excel                           Source dataset

Jupyter Notebook                Python analysis

📁 Repository Structure

bank-loan-portfolio-analysis/
│
├── README.md
├── requirements.txt
├── LICENSE
├── .gitignore
│
├── data/
│   └── financial_loan_data.xlsx
│
├── notebooks/
│   └── Bank_Loan_Analysis.ipynb
│
├── sql/
│   └── Bank_Loan_Data.sql
│
├── powerbi/
│   ├── Bank_Loan_Analysis.pbix
│   └── Bank_Loan_Analysis.pbit
│
└── docs/
    ├── case_study.md
    └── data_dictionary.md

🚀 How to Run

Python

1. Clone the repository

git clone https://github.com/YOUR_USERNAME/bank-loan-portfolio-analysis.git
cd bank-loan-portfolio-analysis

2. Install dependencies

pip install -r requirements.txt

3. Launch Jupyter Notebook

jupyter notebook

Open:

notebooks/Bank_Loan_Analysis.ipynb

The notebook is configured to use the dataset stored inside the
repository rather than a personal Windows file path.

SQL

Open:

sql/Bank_Loan_Data.sql

Run the queries in a SQL Server / T-SQL environment against the loan
dataset.

Power BI

Open:

powerbi/Bank_Loan_Analysis.pbix

using Power BI Desktop.

📌 Skills Demonstrated

Data Analytics

Exploratory Data Analysis

KPI development

Segmentation

Trend analysis

Descriptive statistics

Business-question analysis

SQL

SELECT / WHERE

GROUP BY

Aggregate functions

CASE statements

Date functions

Conditional segmentation

Portfolio KPI calculations

Python

Pandas

NumPy

Data inspection

Aggregation

Visualization

Exploratory analysis

Power BI

KPI reporting

Interactive dashboards

Filters and slicers

Trend visualization

Geographic visualization

Portfolio segmentation

Business Understanding

Lending portfolio monitoring

Loan-quality analysis

Risk-oriented segmentation

Funding analysis

Borrower segmentation

Data-driven reporting

🔬 Future Improvements

The current project is primarily descriptive. Possible next steps
include:

Charged-off rate by loan grade

Charged-off rate by loan purpose

Charged-off rate by state

Risk segmentation using interest rate and DTI

Cohort-based repayment analysis

Portfolio profitability analysis

Loan-level loss analysis

Customer segmentation

Predictive default modeling

Automated Power BI refresh

Executive risk-monitoring dashboard

These additions would extend the project from descriptive reporting
toward diagnostic and predictive analytics.

⚠️ Limitations

The analysis is primarily descriptive and does not establish
causality.

Good/Bad Loan classification follows the supplied project
definition.

The project is not a production credit-risk model.

Total amount received should not be treated directly as profit
because loans differ in status, age, payment history, and associated
costs.

Additional validation and statistical modeling would be required
before applying the results to real lending decisions.

📚 Source & Attribution

The project requirements, SQL query reference, and domain-knowledge
material were supplied as part of a Data Tutorials project/tutorial
resource.

The supplied materials define the Bank Loan Report requirements,
including the Summary, Overview, and Details dashboards, Good/Bad Loan
definitions, KPI calculations, and required visual analyses.

Reference: Data Tutorials --- Bank Loan Report project
https://www.youtube.com/@datatutorials1

This repository is presented as a portfolio implementation and
learning project based on those requirements. The source material is
acknowledged rather than presenting the original project specification
as independently authored.

👩‍💻 Portfolio Workflow

Business Requirements
        ↓
Domain Understanding
        ↓
Data Exploration
        ↓
SQL Analysis
        ↓
Python EDA
        ↓
Power BI Dashboard
        ↓
Business Insights

The project demonstrates the ability to move from a business question to
data analysis, visualization, and decision-oriented reporting.
