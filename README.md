# 📘 SQL 7-Day Preparation Plan

A structured, 7-day SQL learning roadmap (2–3 hrs/day) covering everything from database fundamentals to views, triggers, and window functions — complete with practice sheets, sample datasets, and answer keys for every day.

Built for self-paced revision, interview prep, or exam prep using MySQL.

---

## 📂 Repository Structure

```
├── Day1_DB_Foundations_RDBMS_Normalization_Keys.md
├── Day2_DDL_Constraints_Keys.md
├── Day3_DML_Clauses_Operators.md
├── Day4_OrderBy_Limit_Aggregates_GroupBy_Having.md
├── Day5_Joins_SetOperators.md
├── Day6_Case_NullHandling_CTE_WindowFunctions_Subqueries.md
├── Day7_UDF_StoredProcedures_Views_Triggers_Index.md
├── master_dataset.sql
└── README.md
```

> Adjust the file names above to match however you've actually named/organized your files in the repo.

---

## 🗺️ 7-Day Roadmap

| Day | Topics | Practice Qs |
|---|---|---|
| **1** | Database Foundations, RDBMS, Normalization (1NF–5NF), SQL vs MySQL, DDL/DML/DCL/TCL, Datatypes, Keys (theory) | 25 |
| **2** | DDL hands-on (CREATE, ALTER, RENAME, TRUNCATE, DROP), Constraints (NOT NULL, UNIQUE, CHECK, DEFAULT, AUTO_INCREMENT), Keys applied with parent-child tables | 24 |
| **3** | DML (INSERT, SELECT, UPDATE, DELETE), DELETE vs TRUNCATE vs DROP, DISTINCT, AS, WHERE, Operators, IS NULL, IN, BETWEEN | 26 |
| **4** | ORDER BY, LIMIT, Aggregate Functions (COUNT/SUM/AVG/MIN/MAX), GROUP BY, HAVING | 24 |
| **5** | JOINS (INNER, LEFT, RIGHT, FULL, CROSS, SELF), SET Operators (UNION, UNION ALL, INTERSECT, EXCEPT) | 26 |
| **6** | CASE, NULL Handling (IFNULL/ISNULL/COALESCE), CTEs, Window Functions (ROW_NUMBER, RANK, DENSE_RANK, PARTITION BY, LEAD, LAG), Subqueries (single-row, multi-row, correlated) | 28 |
| **7** | UDFs, Stored Procedures, Views (simple & complex), Triggers, Index, Built-in Functions, Final Mixed Mock | 26 |

**Total: 179 practice questions, all with worked answers.**

---

## 🗄️ Getting Started

1. Clone this repo:
   ```bash
   git clone <your-repo-url>
   cd <repo-folder>
   ```
2. Open **MySQL Workbench** (or any MySQL-compatible client / online sandbox).
3. Run `master_dataset.sql` **once** — this creates the shared practice database (`SQLPracticeDB`) with all the tables (`Employees`, `Students`, `Courses`, `Departments`, `Sales`) used across every day's questions.
4. Work through each day's `.md` file in order:
   - Read the **Topics to study** section first.
   - Attempt the **Practice Sheet** questions yourself before checking answers.
   - Compare with the **Answer Key** at the bottom of each file.
5. Actually **run every query** against the dataset — don't just read the answers. That's what makes it stick.

---

## ✅ Topics Covered (Full Checklist)

- [x] Database & RDBMS basics
- [x] Normalization (1NF, 2NF, 3NF, BCNF, 4NF, 5NF)
- [x] Datatypes (Numeric, Date/Time, String, Spatial, JSON)
- [x] DDL: CREATE, ALTER, RENAME, TRUNCATE, DROP
- [x] Constraints: NOT NULL, UNIQUE, CHECK, DEFAULT, AUTO_INCREMENT
- [x] Keys: Super Key, Candidate Key, Primary Key, Composite Key, Foreign Key
- [x] DML: INSERT, SELECT, UPDATE, DELETE
- [x] Clauses & Operators: DISTINCT, AS, WHERE, Arithmetic/Comparison/Logical Operators, IS NULL, IN, BETWEEN
- [x] ORDER BY, LIMIT
- [x] Aggregate Functions: COUNT, SUM, AVG, MIN, MAX
- [x] GROUP BY, HAVING
- [x] JOINS: INNER, LEFT, RIGHT, FULL, CROSS, SELF
- [x] SET Operators: UNION, UNION ALL, INTERSECT, EXCEPT
- [x] CASE statement
- [x] NULL Handling: IFNULL, ISNULL, COALESCE
- [x] CTEs (including CTE + UPDATE/DELETE)
- [x] Window Functions: ROW_NUMBER, RANK, DENSE_RANK, PARTITION BY, LEAD, LAG
- [x] Subqueries: single-row, multi-row (IN/ANY/ALL), correlated
- [x] User-Defined Functions (UDF)
- [x] Stored Procedures (with/without parameters)
- [x] Views: simple and complex
- [x] Triggers: BEFORE/AFTER INSERT/UPDATE/DELETE
- [x] Index: purpose and trade-offs
- [x] Built-in Functions: Math, String, Date

---

## 🧰 Tech Used

- **Database:** MySQL 8.0+ (some features like recursive CTEs require 8.0+)
- **Client:** MySQL Workbench (or any MySQL-compatible tool/online sandbox)

---

## 📌 Notes

- All practice questions use a **single shared dataset** so results stay consistent across every day's exercises.
- Answer keys are provided, but the goal is to **write the query yourself first** — treat the answer key as a way to check, not as the starting point.
- Day 7's final "Mixed" questions combine multiple concepts (JOIN + GROUP BY + HAVING, CTE + Window Functions, CASE + Subquery) — a good way to simulate exam/interview-style questions.

---

## 🙌 About

Personal SQL revision notes and practice material, organized into a 7-day study plan. Feel free to fork and adapt the dataset or questions for your own practice.
