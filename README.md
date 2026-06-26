# 🎬 Movie Analytics ELT Pipeline

## 📖 Overview
This project is an end-to-end Data Engineering pipeline that extracts raw movie dataset files, loads them into a local data warehouse, and transforms the data into an analytics-ready Star Schema. 

## 🛠️ Architecture & Tools
* **Infrastructure:** Docker & Docker Compose
* **Database:** PostgreSQL (Headless containerized instance)
* **Extract & Load:** Python (Pandas, SQLAlchemy)
* **Transformation:** dbt Core (Data Build Tool)
* **Orchestration:** Apache Airflow

## ⚙️ Pipeline Flow
1. **Ingestion:** A Python script connects to a Dockerized PostgreSQL instance and loads raw CSV data into a `raw` schema.
2. **Staging:** dbt standardizes data types, renames columns, and filters null records into a clean `stg_movies` view.
3. **Data Mart (Star Schema):** dbt models generate a Fact table (`fact_movies`) and Dimension tables (`dim_date`, `dim_genres`) for downstream BI analysis.

## 🚀 How to Run
1. Clone this repository.
2. Run `docker compose up -d` to spin up the PostgreSQL warehouse.
3. Run `python scripts/ingest_movies.py` to populate the raw data.
4. Navigate to the dbt directory and run `dbt run` to build the Star Schema.
