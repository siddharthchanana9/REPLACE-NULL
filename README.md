# 🚀 Replace NULL SQL Project

This project demonstrates how to replace `NULL` values in a SQL Server table using a **recursive CTE** to carry forward the last non-null value per group.

---

## 📊 Table Columns

- `Date` – Record date  
- `BU` – Business Unit  
- `Value` – Contains `NULL`s to be replaced

---

## 🎯 Goal

Replace each `NULL` in the `Value` column with the **most recent non-NULL value** within the same `BU`, ordered by `Date`.

---

## 📁 Files Included

| File Name                | Description                                  |
|--------------------------|----------------------------------------------|
| `HZL_Table_Data.sql`     | Creates the table and inserts sample data    |
| `Replace_Nulls_Query.sql`| SQL query using recursive CTE                |
| `Output_Explanation.md`  | Shows expected final result after execution  |

---

## 🚀 How to Run

1. Open **Visual Studio 2022** or **SQL Server Management Studio (SSMS)**
2. Connect to SQL Server (e.g. `localhost\SQLEXPRESS`)
3. Run `HZL_Table_Data.sql` to create and populate the table
4. Run `Replace_Nulls_Query.sql` to clean the `NULL` values
5. View the expected result (see `Output_Explanation.md`)

---

## 👨‍💻 Made with 💻 by Siddharth Chanana
