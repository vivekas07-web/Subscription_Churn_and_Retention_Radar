# SQL review notes

The file `sql/original_sql_from_chat.sql` is a preserved copy of the uploaded SQL. These are review points to check while running it; the source file has not been silently rewritten.

1. **Incomplete count statement:** `SELECT COUNT(*) AS total_records;` has no `FROM` clause and does not count `monthly_usage_history`. Use `SELECT COUNT(*) AS total_records FROM monthly_usage_history;`.
2. **Potential churn reason type mismatch:** in the `churn_flags` insert, `churn_reason` is text but the `ELSE` branch uses numeric `0`. Prefer a text value such as `NULL` or `'Not Churned'` if your intent is a text reason.
3. **Summary table spelling:** names such as `churn_symmary`, `plan_symmary`, `chured_symmary`, `payment_symmary`, `usage_symmary`, `risk_symmary`, `cohort_symmary`, `leadlag_symmary`, and `retined_symmary` contain spelling variations. They are valid identifiers if used consistently, but can be renamed in a clean version.
4. **Table creation reruns:** `CREATE TABLE` will fail if the table already exists. For repeat runs, use a fresh schema, drop tables in dependency order, or create an idempotent setup script carefully.
5. **Cohort size:** `COUNT(*) OVER (PARTITION BY signup month)` is calculated on the customer-level subquery; because each customer appears once in `customers`, it should represent customers per signup month.
6. **Monthly history:** the source creates at most six months of synthetic history per customer and assigns usage using a deterministic modulo rule. Treat retention results as illustrative.
7. **Risk rules:** the risk-level CASE gives 'Already Churned' priority, then 'High Risk' only when payment failed and usage is low, then 'Medium Risk' if any one of several warning signals is present. Check whether that matches your intended definition.
8. **Join duplication:** the source's one-row-per-customer assumptions are true for the supplied generated rows, but if you later use multiple payments, events, or tickets per customer, joining them together can multiply rows and inflate counts. Aggregate each fact table before joining or use DISTINCT customer counts.
9. **Revenue definitions:** `SUM(customers.monthly_fee)` for churned customers is the monthly fee associated with churned accounts, not necessarily recognized revenue or lifetime revenue. Label it clearly.
10. **Check exact source text:** run statements in smaller sections and stop at the first error; do not assume all following tables were created.
