# Project Report — Subscription Churn & Retention Radar

## 1. Project overview
This project analyzes subscription customer churn and retention using MySQL and Power BI. The goal is to identify customer groups that churn, understand possible churn indicators, measure revenue associated with churn, and prepare practical retention actions.

## 2. Business question
**Which customer segments churn, when do they leave, and how much revenue is at risk?**

## 3. Tools used
- MySQL Workbench — schema creation, SQL analysis, summary tables, window functions
- Power BI Desktop — interactive dashboard and visual storytelling
- Visual Studio Code — repository organization, SQL/Markdown editing, Git workflow
- GitHub — portfolio publication and version control

## 4. Data description
The supplied SQL creates synthetic sample records for customer IDs 1001–1500. `customers` is the customer master. Related tables store subscriptions, payment outcomes, usage, support tickets, churn flags, and month-level usage history. The data is generated with deterministic rules for demonstration and should not be presented as production or real customer data.

## 5. Schema and churn definition notes

| Table | Purpose |
|---|---|
| `customers` | Customer ID, name, signup date, plan, monthly fee |
| `subscriptions` | Subscription start/end date and status |
| `payments` | Payment date, amount, success/failure |
| `usage_events` | Usage sessions and minutes |
| `support_tickets` | Issue type and ticket status |
| `churn_flags` | Churn indicator, churn date, reason |
| `monthly_usage_history` | Synthetic month-level usage for cohort and LAG/LEAD analysis |

In the provided SQL, churn is defined as `subscription_status = 'Cancelled'`; those customers receive `is_churned = 1`, while other subscription records receive `0`. This is the project's operational definition, not a universal definition of churn.

## 6. SQL analysis completed / planned
The SQL file includes the following analysis patterns:
1. Total customers and basic exploration
2. Overall churn summary
3. Churn by subscription plan
4. Churned customers and monthly revenue at risk
5. Churn by payment status
6. Low-usage analysis
7. Risk-level counts
8. Monthly usage history and cohort retention
9. RFM-style payment recency, frequency, and total spend
10. `LAG()` / `LEAD()` to compare previous and next month usage
11. Customer risk score, risk band, and recommendation
12. Retained-customer count and monthly revenue

Run and validate the original SQL in sections before reporting numeric results. The SQL contains spelling inconsistencies and at least one incomplete count query; see `docs/SQL_REVIEW_NOTES.md`. Do not claim a numerical finding until the query runs successfully and the result is checked.

## 7. Risk scoring logic
The supplied `risklevel_symmary` query assigns points for risk indicators:
- Failed payment: 40 points
- Usage of 10 minutes or less: 30 points
- Open support ticket: 20 points
- One or fewer sessions: 10 points
- Already churned: score set to 100

The risk band logic in the source labels already-churned customers separately, labels customers with both failed payment and low usage as High Risk, customers with one of several warning signs as Medium Risk, and others as Low Risk. This is a rule-based demonstration, not a trained predictive model. Review the order of conditions and business definitions before drawing conclusions.

## 8. Retention and cohort analysis
`monthly_usage_history` creates up to six synthetic monthly observations per customer from their signup month, depending on the current date. `cohort_symmary` groups customers by signup month and compares active usage by activity month. Retention is calculated as active customers divided by cohort size. Since the dataset is synthetic and the source query uses simplified activity assumptions, describe the result as illustrative.

## 9. Power BI dashboard plan
### Page 1 — Summary Overview
Cards: Total Customers, Churned Customers, Retained Customers, Overall Churn Rate, Total Monthly Revenue, Churned Revenue at Risk. Charts: risk distribution and monthly retention trend where valid data exists.

### Page 2 — Customer Churn Analysis
Plan-wise churn rate, churned versus retained customers, payment failure analysis, low-usage analysis, churn by plan, and a high-risk customer table.

### Page 3 — Retention & Cohort Analysis
Retention by cohort month/month number, monthly usage trend, and previous/current/next usage comparison.

### Page 4 — Customer Risk & Revenue at Risk
Risk-level distribution, risk-score table, revenue at risk by plan, and recommended retention action by customer.

## 10. Manual implementation process
1. Open the original SQL file in MySQL Workbench.
2. Select the `churn_project` schema and execute the script in sections.
3. Resolve errors and verify row counts and summary tables.
4. Connect Power BI Desktop to MySQL database `churn_project`.
5. Import required tables and verify relationships using `customer_id`.
6. Add DAX measures from `power_bi/dax/measures.dax` one by one; create columns separately where indicated.
7. Build each dashboard page using `power_bi/DASHBOARD_BUILD_GUIDE.md`.
8. Validate KPI values against SQL outputs and ensure visuals do not double-count.
9. Save the dashboard as `Churn_Retention_Dashboard.pbix`.
10. Export the final report to PDF if required; store it in `reports/`.
11. Capture dashboard screenshots and add them to `screenshots/`.
12. Publish the source repository to GitHub following `docs/GITHUB_PUBLISH_STEPS.md`.

## 11. Business recommendations
Recommendations should be tied to measured results, not assumed results:
- Failed payments: investigate failed transactions and send payment reminders.
- Low usage: provide onboarding help, usage tips, or a suitable engagement offer.
- Open support tickets: prioritize resolution and follow-up.
- High-risk active customers: prioritize outreach based on risk score and monthly fee.
- Already churned customers: use a win-back campaign where appropriate.
- Plan-level patterns: investigate whether churn is concentrated in a particular plan before changing pricing or offers.

## 12. Limitations
- The source data is synthetic and uses deterministic patterns.
- Risk levels are based on manually specified rules, not machine learning.
- Churn definition is based on cancellation status.
- The provided SQL contains errors/typos that must be checked before final results are presented.
- Revenue at risk can mean different things. This report distinguishes churned-customer revenue from high-risk active-customer revenue; state which measure is used in each visual.

## 13. Conclusion
The project demonstrates an end-to-end analytics workflow: relational data modeling, SQL churn analysis, cohort retention, RFM-style analysis, window functions, risk scoring, and Power BI reporting. The final portfolio submission should include verified SQL outputs, dashboard screenshots, and a PDF report with actual findings added after running the queries.
