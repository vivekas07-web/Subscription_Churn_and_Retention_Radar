# Subscription Churn & Retention Radar

An end-to-end data analytics portfolio project that uses **MySQL** to prepare and analyze subscription data and **Power BI** to present churn, retention, customer risk, and revenue-at-risk insights.

> **Data notice:** The included customer records are synthetic demonstration data. They are not real customer records, and results must not be described as real-world business findings.

## Business question

**Which customer segments churn, when do they leave, and how much revenue is at risk?**

## Project goals

- Measure customer churn and retention.
- Compare churn across subscription plans.
- Explore possible churn indicators such as failed payments, low usage, and support issues.
- Estimate monthly fees associated with churned customers and high-risk active customers.
- Analyze signup cohorts and month-to-month usage patterns.
- Assign rule-based customer risk levels and suggest retention actions.
- Present the findings through an interactive Power BI dashboard.

## Tools

- **MySQL / MySQL Workbench** — database schema, SQL queries, analysis and summary tables.
- **Power BI Desktop** — report pages, visuals, slicers and DAX measures.
- **Visual Studio Code** — edit SQL, documentation and project files.
- **Git / GitHub** — version control and portfolio publishing.

## Repository layout

```text
churn_project/
├── README.md
├── .gitignore
├── churn_project.code-workspace
├── data/
│   ├── churn_customers_500.csv
│   └── exports/
├── docs/
│   ├── GITHUB_PUBLISH_STEPS.md
│   ├── PROJECT_STRUCTURE.md
│   ├── SQL_REVIEW_NOTES.md
│   └── Subscription_Churn_Project_Summary.pdf
├── power_bi/
│   ├── chrun and retention.pbix
│   ├── POWER_BI_CONNECTION.md
│   ├── DASHBOARD_BUILD_GUIDE.md
│   ├── dax/measures.dax
│   └── dashboard_assets/
├── reports/
│   └── PROJECT_REPORT.md
├── screenshots/
└── sql/
    └── sql_query.sql
```

The Power BI file included in this archive is a project artifact; open it in Power BI Desktop to verify its current state. If it is only a starter or needs updating, follow the dashboard guide and save the final report as `Churn_Retention_Dashboard.pbix`.

## Data model

The SQL script is intended to create and populate a `churn_project` schema. Its main tables include:

| Table | Purpose |
|---|---|
| `customers` | Customer ID, name, signup date, plan and monthly fee |
| `subscriptions` | Subscription dates and status |
| `payments` | Payment amounts and success/failure outcomes |
| `usage_events` | Individual usage activity |
| `support_tickets` | Support issues and ticket status |
| `churn_flags` | Churn indicator, churn date and reason |
| `monthly_usage_history` | Synthetic monthly usage history for cohort and LAG/LEAD analysis |
| Summary tables | Derived churn, plan, payment, usage, risk, cohort and retention outputs |

Exact table names depend on which SQL sections have been executed successfully. Some source summary table names contain spelling variations such as `symmary`; see `docs/SQL_REVIEW_NOTES.md` and check the actual tables with `SHOW TABLES;`.

## Churn and risk definitions

- **Churn:** In the supplied SQL, a subscription with status `Cancelled` is assigned `is_churned = 1`; other statuses are assigned `0`.
- **Churned revenue at risk:** The sum of monthly fees associated with churned accounts. This is not automatically the same as recognized revenue or lifetime revenue.
- **High-risk active revenue:** Monthly fees associated with customers classified as high risk who are still active. Keep this separate from churned-customer fees.
- **Risk score:** A rule-based score using indicators such as failed payment, low usage, open support tickets and low session count. It is an illustrative business rule, not a trained machine-learning prediction.
- **Retention:** The cohort SQL estimates active usage by signup cohort and activity month. Because the data and activity assumptions are synthetic, treat the retention output as illustrative.

## SQL analysis included / intended

1. Database and table exploration.
2. Overall churn rate and churned/retained customer counts.
3. Plan-wise churn comparison.
4. Monthly fee associated with churned accounts and revenue at risk by plan.
5. Payment-failure analysis.
6. Low-usage analysis.
7. Customer risk-level distribution and customer risk scores.
8. Signup-cohort retention.
9. RFM-style recency, frequency and spend analysis.
10. `LAG()` / `LEAD()` usage comparisons.
11. Risk-based retention recommendations.
12. Retained customers and associated monthly fees.

**Important:** Run the SQL in sections and validate each result before using numbers in a presentation. Known review points are documented in `docs/SQL_REVIEW_NOTES.md`; for example, an incomplete `COUNT(*)` statement needs a `FROM` clause, and the script may not be safe to rerun unchanged if tables already exist.

## Set up the project

### 1. Open in VS Code

1. Extract the ZIP.
2. Open the extracted `churn_project` folder in VS Code.
3. Read this README and `docs/SQL_REVIEW_NOTES.md`.

### 2. Set up MySQL

1. Start MySQL Server and open MySQL Workbench.
2. Open `sql/sql_query.sql`.
3. Check the active schema and existing tables before running the script. If the schema already contains tables, do not blindly rerun all `CREATE TABLE` statements.
4. Execute the script section by section, stopping to fix any error before continuing.
5. Verify the tables and row counts, for example:

```sql
USE churn_project;
SHOW TABLES;
SELECT COUNT(*) AS customer_count FROM customers;
SELECT SUM(is_churned) AS churned_customers FROM churn_flags;
```

6. Compare the output with the SQL analysis and only report figures that execute successfully.

### 3. Connect Power BI to MySQL

1. Open Power BI Desktop.
2. Select **Home → Get data → More → MySQL database**.
3. Enter your local server (commonly `localhost`), port if requested (commonly `3306`), and database `churn_project`.
4. Choose **Import** for this beginner project and enter your MySQL credentials in the prompt. Never commit passwords to GitHub.
5. Select the tables that actually exist and contain validated data.
6. In Model view, check relationships on `customer_id`. `customers[customer_id]` should normally be the unique/one side of relationships.
7. Add measures individually from `power_bi/dax/measures.dax`, adapting names only when the imported schema differs.
8. Follow `power_bi/DASHBOARD_BUILD_GUIDE.md` and `power_bi/POWER_BI_CONNECTION.md`.

### 4. Suggested dashboard pages

- **Page 1 — Summary Overview:** total customers, churned and retained customers, churn rate, total monthly fees, revenue-at-risk cards and risk distribution.
- **Page 2 — Customer Churn Analysis:** churn by plan, payment failures, low usage and a customer-level risk table.
- **Page 3 — Retention & Cohort Analysis:** retention by signup cohort and month, plus usage changes over time.
- **Page 4 — Customer Risk & Revenue at Risk:** risk levels, risk scores, monthly fees at risk by plan and recommended actions.

Verify each visual against a corresponding SQL result. Avoid double-counting when joining one-to-many tables such as payments, usage events and support tickets. Use distinct customer counts or pre-aggregate those tables where appropriate.

## Suggested retention actions

Recommendations should be based on verified results, not assumptions:

- **Failed payments:** check payment failures and send appropriate payment reminders.
- **Low usage:** offer onboarding guidance or relevant usage tips.
- **Open support issues:** prioritize ticket resolution and follow-up.
- **High-risk active customers:** prioritize outreach using risk level and monthly fee.
- **Already churned customers:** consider a suitable win-back campaign.
- **Plan differences:** investigate a confirmed plan-level pattern before changing prices or offers.

## Limitations and validation

- The included sample data is synthetic and generated using deterministic rules.
- The risk score is manually rule-based, not a trained predictive model.
- Cohort history is limited and retention assumptions are simplified.
- SQL contains known typos and at least one incomplete query; review notes are provided.
- Monthly fees for churned customers and fees from high-risk active customers are different metrics.
- Do not publish numerical findings until the SQL queries run and results are checked.
- The included `.pbix` should be opened and validated in Power BI Desktop; the presence of a file does not guarantee all visuals or data connections are current on another computer.

## Project report and supporting documentation

- `reports/PROJECT_REPORT.md` — editable report draft.
- `docs/Subscription_Churn_Project_Summary.pdf` — project summary PDF.
- `docs/SQL_REVIEW_NOTES.md` — known SQL caveats and checks.
- `power_bi/POWER_BI_CONNECTION.md` — connection instructions.
- `power_bi/DASHBOARD_BUILD_GUIDE.md` — dashboard layout and validation checklist.
- `power_bi/dax/measures.dax` — starter DAX measures.
- `docs/GITHUB_PUBLISH_STEPS.md` — GitHub publishing steps.

## Before submission

- [ ] Run and validate the required SQL sections.
- [ ] Confirm database table names and row counts.
- [ ] Validate DAX measures against SQL results.
- [ ] Check that the PBIX opens and its visuals refresh correctly.
- [ ] Add screenshots of completed dashboard pages to `screenshots/`.
- [ ] Update the report with verified figures and conclusions.
- [ ] Export the final report PDF if required.
- [ ] Remove credentials and any private information before publishing to GitHub.

## Conclusion

This project demonstrates a complete beginner-friendly analytics workflow: relational data preparation, SQL-based churn and retention analysis, cohort and usage analysis, rule-based customer risk scoring, and Power BI dashboard reporting. Its value is in the workflow and reproducible analysis; any business conclusion must be supported by validated query results.
