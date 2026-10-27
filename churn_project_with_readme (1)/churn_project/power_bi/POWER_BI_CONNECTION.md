# Connect MySQL Workbench database to Power BI Desktop

## Before you start
- MySQL Server must be running.
- Confirm the schema name is `churn_project`.
- Keep your MySQL username/password private. Do not put them in GitHub files.
- Power BI Desktop and the required MySQL connector/driver must be installed. If Power BI reports a missing provider/driver, install the supported MySQL connector for your Power BI version and restart Power BI.

## Connection steps
1. Open **Power BI Desktop**.
2. Select **Home → Get data → More…**.
3. Search for **MySQL database** and select it. If it is not listed, install/enable the required MySQL connector/driver first.
4. In **Server**, enter your local server address, commonly `localhost` or `127.0.0.1`. Enter your configured port if requested (MySQL commonly uses `3306`).
5. In **Database**, enter `churn_project`.
6. Choose **Import** for a beginner dashboard (recommended for this portfolio project). Choose DirectQuery only if you understand its limitations and need live queries.
7. Select **OK**, then enter your MySQL credentials when prompted.
8. In Navigator, select the tables/views you need, such as `customers`, `churn_flags`, `payments`, `usage_events`, `support_tickets`, `monthly_usage_history`, and derived summary tables that successfully exist.
9. Select **Load**. If you need to rename or clean columns first, choose **Transform Data**.
10. Go to **Model view** and inspect relationships. Typical one-to-many relationships use `customers[customer_id]` on the one side and the matching table's `customer_id` on the many side. Avoid creating duplicate relationships if Power BI already detected them.
11. Save the Power BI file as `power_bi/Churn_Retention_Dashboard.pbix`.

## Troubleshooting
- **Cannot connect**: confirm MySQL Server is running; test the same credentials in MySQL Workbench; verify host/port.
- **Missing MySQL option/provider**: install the MySQL connector/driver compatible with your Power BI Desktop installation, then restart Power BI.
- **Table not listed**: run `USE churn_project; SHOW TABLES;` in Workbench and refresh Navigator.
- **Duplicate customer rows in a visual**: check relationships and whether a table has multiple records per customer.
- **Credentials error**: re-enter credentials in Power BI's data-source settings; never paste a password into this repository.
- **Import succeeded but a table is blank**: check the SQL table actually contains rows and that you selected the correct schema.
