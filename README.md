
<div align="center">
    <h1>Crowdfunding ETL</h1>
</div>

---

<div align="center">
    <img src="https://github.com/MarkBish24/Crowdfunding_ETL/blob/main/Images/crowdfunding_image.jpg" alt="crowdfunding_image" width="500"/>
</div>

<div align="center">
    <h3>Team Members</h3>
    <p>Mark Bishoff</p>
    <p>Tai Reagan</p>
</div>

---


## Overview
You and your partner will collaborate to build an ETL pipeline using Python, Pandas, and either Python dictionary methods or regular expressions. The goal is to extract and transform data, create four CSV files, and use the data to design an ERD and a table schema. Finally, you'll upload the CSV data into a Postgres database. This project emphasizes the importance of collaboration and communication while working on different parts of the project.

## Resources
**Software/Languages:** Python, Pandas, PostgreSQL, Jupyter Notebook, Excel, and CSV files

## Part 1: Create the Category and Subcategory DataFrames


1. Extract and transform the **crowdfunding.xlsx** Excel data to create a category DataFrame with the following columns:
   - **category_id**: Entries sequentially labeled from "cat1" to "catn", where n is the number of unique categories.
   - **category**: Contains only the category titles.
   
   ![category_df_image](https://github.com/MarkBish24/Crowdfunding_ETL/blob/main/Images/category_df_image.png)

2. Export the category DataFrame as **category.csv** and save it to your GitHub repository.

3. Extract and transform the **crowdfunding.xlsx** Excel data to create a subcategory DataFrame with the following columns:
   - **subcategory_id**: Entries sequentially labeled from "subcat1" to "subcatn", where n is the number of unique subcategories.
   - **subcategory**: Contains only the subcategory titles.
   
   ![subcategory_df_image](https://github.com/MarkBish24/Crowdfunding_ETL/blob/main/Images/subcategory_df_image.png)

5. Export the subcategory DataFrame as **subcategory.csv** and save it to your GitHub repository.

## Part 2: Create the Campaign DataFrame

1. Extract and transform the **crowdfunding.xlsx** Excel data to create a campaign DataFrame with the following columns:
   - **cf_id**
   - **contact_id**
   - **company_name**
   - **description** (previously "blurb")
   - **goal** (converted to **float** data type)
   - **pledged** (converted to **float** data type)
   - **outcome**
   - **backers_count**
   - **country**
   - **currency**
   - **launched_date** (previously "launched_at", with UTC times converted to **datetime** format)
   - **end_date** (previously "deadline", with UTC times converted to **datetime** format)
   - **category_id** (matching the unique IDs in the "category_id" column of the category DataFrame)
   - **subcategory_id** (matching the unique IDs in the "subcategory_id" column of the subcategory DataFrame)
   
   ![campaign_table](https://github.com/MarkBish24/Crowdfunding_ETL/blob/main/Images/campaign_table.png)

2. Export the campaign DataFrame as **campaign.csv** and save it to your GitHub repository.

## Part 3: Create the Contacts DataFrame

1. Choose one of the following options for extracting and transforming the data from the **contacts.xlsx** Excel file:
   - **Option 1:** Use Python dictionary methods.
   - **Option 2:** Use regular expressions.

## Part 4: Create the Crowdfunding Database

1. Inspect the four CSV files, then sketch an ERD of the tables using [QuickDBD](https://www.quickdatabasediagrams.com/).
   
   ![ERD_File](https://github.com/MarkBish24/Crowdfunding_ETL/blob/main/Schema/ERD_File.png)

2. Use the ERD to create a table schema for each CSV file.

3. Save the database schema as **crowdfunding_db_schema.sql** and save it to your GitHub repository.

4. Create a new Postgres database named **crowdfunding_db**.

5. Using the database schema, create the tables in the correct order to handle foreign keys.

6. Verify the table creation by running a **SELECT** statement for each table.

7. Import each CSV file into its corresponding SQL table.

8. Verify that each table has the correct data by running a **SELECT** statement for each.