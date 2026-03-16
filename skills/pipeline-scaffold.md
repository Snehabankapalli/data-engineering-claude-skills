Scaffold a complete production data pipeline for $ARGUMENTS.

Generate all files needed to ship a pipeline from scratch:

1. Python ingestion script (src/ingest.py)
   - Source connector with retry logic (tenacity)
   - Batch pagination support
   - Structured logging (structlog)
   - Error handling with dead-letter queue pattern
   - Docstrings on every function

2. Snowflake loader (src/loader.py)
   - COPY INTO with external stage
   - Idempotent loads (skip already-loaded files)
   - Row count validation post-load

3. dbt models
   - staging/ view with JSON parsing and deduplication
   - marts/ incremental fact table with merge strategy

4. Airflow DAG (dags/pipeline_dag.py)
   - Hourly schedule
   - Task dependencies: extract >> load >> dbt_run >> dbt_test
   - SLA miss callbacks
   - Retry logic (2 retries, 5min delay)

5. Terraform snippet (terraform/main.tf)
   - S3 bucket for landing zone
   - IAM role for pipeline execution
   - Snowflake stage and pipe

6. README with architecture ASCII diagram and setup instructions

Default stack: Python + AWS S3 + Snowflake + dbt + Airflow + Terraform.
Every file must be production-ready, not a prototype.
