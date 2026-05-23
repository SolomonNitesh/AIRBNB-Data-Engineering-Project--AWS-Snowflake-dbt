# Airbnb Data Engineering Project using dbt & Snowflake

This project is an end-to-end Airbnb data transformation pipeline built using dbt and Snowflake. The objective of the project is to transform raw Airbnb datasets into clean, analytics-ready dimensional models for reporting and business analysis.

The project follows a modern data engineering workflow using layered architecture:

* Bronze Layer – Raw ingested Airbnb data
* Silver Layer – Cleaned and standardized datasets
* Gold Layer – Business-ready fact and dimension tables

Key transformations include:

* Data cleaning and standardization
* Building dimension tables for listings and hosts
* Creating an Operational Business Table (OBT)
* Implementing joins and reusable Jinja-based dynamic SQL logic
* Applying dbt models, snapshots, and materializations
* Testing and validating transformed datasets

Technologies Used:

* dbt (Data Build Tool)
* Snowflake
* SQL
* Jinja Templating
* Git & GitHub
* VS Code

Project Highlights:

* Modular and scalable dbt architecture
* Reusable dynamic SQL configurations
* Snapshot implementation for historical tracking
* Version control integration using GitHub
* Analytics-ready data models for BI reporting

This project demonstrates practical implementation of modern data transformation, data modeling, and analytics engineering concepts using industry-standard tools.
