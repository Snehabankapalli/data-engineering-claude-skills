# Data Stack Context — Claude Memory Template

Copy this file to your project as `CLAUDE.md` and fill in your stack details.
Claude will read this before every command and generate stack-specific output.

---

## My Data Stack

**Warehouse:** Snowflake
**Transformation:** dbt Core / dbt Cloud
**Orchestration:** Airflow / Prefect / Dagster  ← delete what you don't use
**Cloud:** AWS / GCP / Azure                    ← delete what you don't use
**Streaming:** Kafka / Kinesis / Pub/Sub        ← delete if not applicable
**Language:** Python 3.11

## Key Databases & Schemas

```
DATABASE: YOUR_DB
  SCHEMA: RAW          ← raw ingested data
  SCHEMA: STAGING      ← dbt staging models
  SCHEMA: MARTS        ← dbt fact/dim tables
```

## Critical Tables

List your most important tables so Claude knows them by name:
- `RAW.TRANSACTIONS` — source of truth for all transactions
- `MARTS.FCT_DAILY_SUMMARY` — primary reporting table
- Add yours here...

## Team Conventions

- Incremental strategy: `merge` with `unique_key`
- Lookback window for late-arriving data: `6 hours`
- Surrogate keys: `MD5(CONCAT_WS('|', ...))`
- Timestamp columns: always `TIMESTAMP_NTZ`
- Null handling: `COALESCE` over `IFNULL`

## Domain Context

<!-- What does your data represent? -->
e.g. "Fintech credit card transactions — CFPB/FDIC regulated"
e.g. "Healthcare claims data — HIPAA compliant"
e.g. "E-commerce orders — Shopify + Stripe"

## Compliance Requirements

<!-- Delete what doesn't apply -->
- HIPAA: mask PHI columns, no PII in logs
- CFPB/FDIC: regulatory reporting SLAs
- GDPR: right-to-erasure support required
- PCI-DSS: no full card numbers in data warehouse

## Rules for Claude

1. Always use this stack — never suggest tools outside it
2. All SQL must be Snowflake-compatible
3. All Python must have docstrings and error handling
4. Default materialization: incremental for facts, view for staging
5. Flag any HIPAA/PII risks before generating code
