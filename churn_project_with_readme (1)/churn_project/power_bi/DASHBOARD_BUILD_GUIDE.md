# Power BI dashboard build guide

Create the PBIX manually in Power BI Desktop. The file is not automatically created by this repository.

## Recommended report pages

### Page 1 — Summary Overview
**Purpose:** Show the overall customer and financial picture.

Cards:
- Total Customers
- Churned Customers
- Retained Customers
- Overall Churn Rate
- Total Monthly Revenue
- Monthly Revenue at Risk

Charts:
- Risk Level Distribution — donut or bar
- Monthly Retention Trend — line chart, only if the month-level history has enough valid periods

Suggested slicers: Plan Type, Signup Date, Risk Level (where available).

### Page 2 — Customer Churn Analysis
- Plan-wise Churn Rate — clustered bar chart
- Churned vs Retained Customers — donut chart
- Payment Failure Analysis — stacked column or bar chart
- Low Usage Analysis — bar chart
- Churn by Subscription Plan — clustered column chart
- High Churn Risk Customers — table with Customer ID, Customer Name, Plan Type, Monthly Fee, Risk Score, Risk Level, Recommendation

### Page 3 — Retention & Cohort Analysis
- Retention Percentage by Cohort Month and Month Number — line chart or matrix
- Cohort Month / Activity Month — use `cohort_symmary` if it exists and has correct results
- Usage change over time — line chart using `leadlag_symmary` (previous/current/next usage)

### Page 4 — Customer Risk & Revenue at Risk
- Risk Level Distribution — bar chart
- Risk Score by Customer — table or bar chart, sorted descending
- Revenue at Risk by Plan Type — bar chart
- High-risk customer list — table with actionable recommendation
- RFM — table or scatter-style segmentation, if you create RFM scores

## Build a visual
1. In Report view, select a visual from the Visualizations pane.
2. Drag the required fields from the Data pane into the visual's field wells (Axis, Values, Legend, Tooltips).
3. For a Table visual, drag columns such as `customer_id`, `customer_name`, `plan_type`, `monthly_fee`, `risk_score`, `risk_level`, and `recommendation`.
4. Add slicers by selecting the Slicer visual and dragging a field such as `plan_type`.
5. Use Format visual to set titles, data labels, currency formatting, and consistent colors.
6. Test each slicer and verify the numbers against MySQL queries.
7. Save the PBIX and take screenshots of each report page for `screenshots/`.

## Important relationship note
If `risklevel_symmary` is imported as a separate table, relate `risklevel_symmary[customer_id]` to `customers[customer_id]`. Then a table visual can show `risklevel_symmary[customer_id]` and `customers[customer_name]`, provided the relationship is active and correct. Alternatively, merge the tables in Power Query using `customer_id`. If you get a scalar-conversion DAX error, check whether you accidentally created a measure where a calculated column or new table was intended.

## Validation checklist
- [ ] Total customer count matches `SELECT COUNT(*) FROM customers;`
- [ ] Churn count matches `SELECT SUM(is_churned) FROM churn_flags;`
- [ ] Monthly revenue uses the intended definition (active customers only vs all customers).
- [ ] Revenue at risk definition is documented (usually sum of monthly fees for churned customers or high-risk active customers; do not mix the two).
- [ ] High-risk customer table shows names joined by customer ID, not just a count measure.
- [ ] Visuals are not double-counting customers due to many-to-many joins.
