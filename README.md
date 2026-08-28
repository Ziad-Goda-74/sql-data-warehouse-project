SQL Data Warehouse Project

A hands-on Data Engineering portfolio project: building a modern data warehouse with SQL Server, from raw source files all the way to analytics-ready data — using the Medallion Architecture (Bronze → Silver → Gold).

This project simulates a real-world scenario: consolidating sales data from two separate source systems (ERP and CRM) into a single, clean, business-ready data warehouse.

Overview

A data warehouse is like a restaurant kitchen: raw ingredients (data) arrive from different suppliers (source systems), and the kitchen staff (ETL pipelines) clean, prep, and organize them before they reach the customer (the business user / analyst).

This project covers:

Data Architecture — designing a modern warehouse using Bronze, Silver, and Gold layers
ETL Pipelines — extracting, transforming, and loading data from source systems into the warehouse
Data Modeling — building fact and dimension tables optimized for analytical queries (Star Schema)
Analytics & Reporting — SQL-based reports that turn raw data into business insights
 Data Architecture

The project follows the Medallion Architecture:

Layer	Purpose
 Bronze	Raw data ingested as-is from source CSV files (ERP + CRM) into SQL Server, with no transformations
 Silver	Data is cleaned, standardized, deduplicated, and normalized for analysis
 Gold	Business-ready data modeled into a Star Schema (fact + dimension tables) for reporting and analytics
 Repository Structure
sql-data-warehouse-project/
│
├── datasets/                  # Raw source datasets (ERP and CRM CSV files)
│
├── docs/                      # Project documentation & diagrams
│   ├── data_architecture.drawio   # High-level architecture diagram
│   ├── data_flow.drawio           # Data flow / lineage diagram
│   ├── data_models.drawio         # Star schema diagram
│   ├── data_catalog.md            # Field-level catalog of Gold layer tables
│   └── naming-conventions.md      # Naming standards for tables, columns & files
│
├── scripts/                   # SQL scripts for the ETL pipeline
│   ├── bronze/                    # Extract & load raw data
│   ├── silver/                    # Clean, transform & standardize data
│   └── gold/                      # Build fact/dimension views for reporting
│
├── tests/                     # Data quality & validation SQL scripts
│
├── README.md                  # Project overview (this file)
└── LICENSE                    # License information
🚀 Getting Started
Clone the repository:
bash
   git clone https://github.com/Ziad-Goda-74/sql-data-warehouse-project.git
Set up a SQL Server instance (SQL Server Express + SSMS work fine).
Run the scripts in order: scripts/bronze → scripts/silver → scripts/gold.
Explore the Gold layer views to run your own analytical queries.
 Tools & Technologies
SQL Server Express — database engine
SQL Server Management Studio (SSMS) — database management & querying
Draw.io — architecture, data flow, and data model diagrams
Git & GitHub — version control and project hosting
 What You'll Find Here
End-to-end SQL scripts for a full ETL pipeline (Bronze → Silver → Gold)
A documented Star Schema data model with fact and dimension tables
Data quality checks to validate the pipeline at each layer
A data catalog describing every Gold layer table/view
 Author

Ziad Goda — Computer Science & AI student | IS Department | Data Engineering track.

 License

This project is licensed under the MIT License — feel free to explore, learn from, and build on it.
