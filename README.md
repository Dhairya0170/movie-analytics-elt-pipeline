# 🎬 Movie Analytics ELT Pipeline

A modern **end-to-end ELT (Extract-Load-Transform)** data pipeline built for movie dataset analytics. This project demonstrates core data engineering skills including data ingestion, dimensional modeling, and analytics-ready data warehouse design.

## 🏗️ Project Architecture

- **Orchestration Layer**: Docker & Docker Compose
- **Data Warehouse**: PostgreSQL
- **Ingestion**: Python (Pandas + SQLAlchemy)
- **Transformation**: dbt Core (Data Build Tool)
- **Modeling**: Star Schema (Fact + Dimension tables)

## ✨ Key Features

- **Raw → Staging → Marts** layered architecture
- **Star Schema** implementation:
  - `fact_movies` (core metrics + profit calculation)
  - `dim_date` (time intelligence)
  - `dim_genres` (conformed dimension)
- Automated data type casting and cleaning
- Production-grade folder structure using dbt best practices

## 🛠️ Tech Stack

- **Python** (Pandas, SQLAlchemy)
- **dbt Core**
- **PostgreSQL**
- **Docker & Docker Compose**

## 🚀 How to Run

1. Clone the repository
   ```bash
   git clone https://github.com/Dhairya0170/movie-analytics-elt-pipeline.git
   cd movie-analytics-elt-pipeline
