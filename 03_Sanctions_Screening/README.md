# Project 3: Sanctions List Screening Simulation

**Objective:** Perform a basic screening of a customer list against a mock sanctions list to identify potential matches. This is a critical function in AML/CFT (Combating the Financing of Terrorism) compliance.

**KYC/AML Concepts Demonstrated:**
*   **Sanctions Screening:** The process of checking customers, vendors, or transactions against official lists of sanctioned individuals, entities, or countries.
*   **Fuzzy Matching:** Understanding that names may not match exactly and require more advanced comparison techniques (though this project starts with exact matches).
*   **Alert Generation:** The process of creating an alert when a potential match is found.

---

### Your Tasks:

**1. Python & Pandas Analysis:**
*   Load both `customer_names.csv` and `sanctions_list.csv` into two separate Pandas DataFrames.
*   Compare the `Name` column from the customer list against the `Name` column from the sanctions list.
*   Create a new DataFrame containing only the customers who appear on the sanctions list.
*   **(Advanced):** Try using a library like `thefuzz` to find near-matches (e.g., "Jon Smith" vs. "John Smith").

**2. SQL Analysis:**
*   Import both CSV files into two separate tables in a database.
*   Use a `JOIN` (or `INNER JOIN`) to find exact matches between the `customer_names` table and the `sanctions_list` table.
*   Write a query that returns all information for the customers who are on the sanctions list.
*   **SQL Query Questions:**
    1.  How many customers are on the sanctions list?
    2.  List all unique reasons for sanctioning.
    3.  Count the number of sanctioned customers for each reason.
    4.  Find the `CustomerID` and `Name` of all customers who are sanctioned for 'Money Laundering'.
    5.  Identify any customers who appear on the sanctions list more than once, and list their `Name` and the count of their appearances.

**3. Power BI Visualization:**
*   Load both tables into Power BI.
*   Create a relationship between the two tables based on the `Name` column.
*   Build a report that:
    *   Lists all customers.
    *   Include a calculated column or measure that flags them as "Sanctioned" or "Clear".
    *   Features a card visual showing the total number of sanctioned customers.

**4. Visualizations with Seaborn:**
*   Using the Pandas DataFrames, create visualizations to explore the data.
*   **Distribution of Sanctioned Reasons:** Generate a bar plot showing the count of each 'Reason' for sanctioning from the `sanctions_list.csv`.
*   **Customer Name Lengths:** Create a histogram or distribution plot of the lengths of customer names from `customer_names.csv`.
*   **Sanctioned vs. Non-Sanctioned Customer Analysis:** If you've identified sanctioned customers, visualize any differences in their characteristics (e.g., name length distribution) compared to non-sanctioned customers.