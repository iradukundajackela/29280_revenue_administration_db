# 29280_revenue_administration_db
to build database of revenue_administration_db

# Revenue Administration Database

##  Project Overview

A PostgreSQL database project designed to manage revenue administration information, including taxpayers, taxes, declarations, assessments, payments, audits, penalties, refunds, and revenue targets.

##  Technologies

- PostgreSQL
- SQL
- GitHub

##  Database Tables

The database contains 20 tables:

- TAXPAYER
- TAX_CENTRE
- TAX_TYPE
- BANK
- TAX_OFFICER
- BUSINESS
- PROPERTY
- VEHICLE
- TAX_REGISTRATION
- TAX_PERIOD
- TAX_DECLARATION
- TAX_ASSESSMENT
- TAX_PAYMENT
- PENALTY
- TAX_AUDIT
- AUDIT_FINDING
- TAX_REFUND
- TAX_OBJECTION
- ENFORCEMENT_CASE
- REVENUE_TARGET

##  Database Design

The project includes:
- Primary and foreign keys
- One-to-many relationships
- Many-to-many relationships
- Referential integrity
- Entity Relationship Diagram (ERD)

### ERD

Add your ERD screenshot here:

![ERD](screenshots/erd.png)

##  SQL Queries

The project demonstrates:

- INNER JOIN
- LEFT JOIN
- RIGHT JOIN
- GROUP BY
- HAVING
- WHERE
- COUNT()
- SUM()
- AVG()
- MIN()
- MAX()
- COALESCE()

## 📸 Query Outputs

Screenshots of the results obtained from the SQL queries are provided below.

### Query 1 

```sql
SELECT
    tp.taxpayer_tin,
    tp.taxpayer_name,
    tp.taxpayer_type,
    tt.tax_type_name,
    tt.filing_frequency,
    tc.centre_name,
    tc.district_name,
    SUM(td.declared_amount) AS total_declared,
    SUM(ta.assessed_amount) AS total_assessed,
    SUM(COALESCE(pay.payment_amount,0)) AS total_payment
FROM TAXPAYER tp
INNER JOIN TAX_REGISTRATION tr
ON tp.taxpayer_id = tr.taxpayer_id
INNER JOIN TAX_TYPE tt
ON tr.tax_type_id = tt.tax_type_id
INNER JOIN TAX_CENTRE tc
ON tr.tax_centre_id = tc.tax_centre_id
INNER JOIN TAX_DECLARATION td
ON tr.registration_id = td.registration_id
INNER JOIN TAX_ASSESSMENT ta
ON td.declaration_id = ta.declaration_id
LEFT JOIN TAX_PAYMENT pay
ON ta.assessment_id = pay.assessment_id
GROUP BY
tp.taxpayer_tin,
tp.taxpayer_name,
tp.taxpayer_type,
tt.tax_type_name,
tt.filing_frequency,
tc.centre_name,
tc.district_name
HAVING SUM(ta.assessed_amount) > 1000000;
```

![Query1](screenshoot/query_1.png)

### Query 2 Output

![Query 2](screenshoot/query_2.png)

### Query 3 Output

![Query 3](screenshots/query3.png)

> Add more screenshots following the same format for the remaining queries.

## 📁 Project Structure

```text
revenue-administration-database/
│
├── README.md
├── sql/
│   ├── create_tables.sql
│   ├── insert_data.sql
│   └── queries.sql
│
└── screenshots/
    ├── erd.png
    ├── query1.png
    ├── query2.png
    └── query3.png
