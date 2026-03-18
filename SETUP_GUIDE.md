# Data Engineering Claude Code Starter Kit
## Setup Guide

**By Sneha Bankapalli** — Senior Data Engineer at a fintech company
7+ years building production pipelines in fintech and healthcare.

---

## What You Got

This kit gives you 9 Claude Code slash commands built specifically for data engineers
working with Snowflake, dbt, and Airflow. Instead of explaining your stack every time,
Claude knows it upfront and generates production-grade output instantly.

| Command | What It Does |
|---------|-------------|
| `/dbt-model` | Generate a production dbt model — incremental merge, clustering, schema.yml |
| `/dbt-test` | Generate a complete test suite — generic tests, singular tests, anomaly detection |
| `/snowflake-optimize` | Full query + cost optimization audit with ranked findings |
| `/pipeline-scaffold` | Scaffold a complete pipeline — Python + dbt + Airflow + Terraform |
| `/incident-response` | P0/P1 playbook — triage, diagnostic SQL, stakeholder comms |
| `/data-contract` | YAML data contract + dbt schema.yml + Python validator |
| `/schema-design` | Kimball dimensional model with DDL and ASCII ERD |
| `/cost-analysis` | Snowflake cost audit with prioritized savings plan |
| `/code-review` | Senior DE code review against fintech production standards |

---

## Install in 30 Seconds

**Windows:**
```powershell
& ".\install.ps1"
```

**Mac / Linux:**
```bash
bash install.sh
```

That's it. All 9 commands are now available in Claude Code.

---

## Set Up Your Stack Context (Important)

This is what makes the kit 10x more useful. Copy the memory template into your
project so Claude knows your exact stack before every command.

1. Open `memory/data-stack-context.md`
2. Copy it to your project root as `CLAUDE.md`
3. Fill in your details:

```markdown
## My Data Stack

**Warehouse:** Snowflake
**Transformation:** dbt Core          ← your version
**Orchestration:** Airflow            ← delete what you don't use
**Cloud:** AWS                        ← delete what you don't use
**Language:** Python 3.11

## Key Databases & Schemas

DATABASE: YOUR_DB
  SCHEMA: RAW        ← raw ingested data
  SCHEMA: STAGING    ← dbt staging models
  SCHEMA: MARTS      ← dbt fact/dim tables

## Critical Tables

- `RAW.TRANSACTIONS` — source of truth
- `MARTS.FCT_DAILY_SUMMARY` — primary reporting table
```

Once this file exists, Claude reads it before every command and generates
output specific to your stack — no more explaining your setup every time.

---

## Usage Examples

### Generate a dbt model
```
/dbt-model credit card transactions fact table with daily aggregations
```

Claude outputs:
- Complete SQL with incremental merge strategy
- Correct clustering keys for Snowflake
- Surrogate key generation
- Matching schema.yml with tests

---

### Run a code review
```
/code-review the SQL in stg_transactions.sql
```

Claude checks against production fintech standards:
- Correctness (nulls, duplicates, join types)
- Performance (partition pruning, cartesian products)
- Data quality (implicit casting, hardcoded values)
- Snowflake best practices (QUALIFY, TRY_CAST, COUNT(*))
- Security (PII exposure, hardcoded credentials)

Returns: severity ratings + exact fix for each finding + overall score.

---

### Handle a pipeline incident
```
/incident-response TRANSACTIONS table hasn't updated in 6 hours
```

Claude generates:
- Triage checklist with diagnostic SQL
- Root cause analysis steps
- Remediation commands
- Stakeholder communication template
- Prevention checklist

---

### Scaffold a full pipeline
```
/pipeline-scaffold Stripe webhook events to Snowflake
```

Claude outputs:
- Python ingestion script (API → S3)
- Snowflake loader with COPY INTO
- dbt staging + mart models
- Airflow DAG with dependencies
- Terraform for AWS infrastructure

---

## Tips

**Be specific in your prompts.** The more context you give, the better the output.

```
# Less specific
/dbt-model transactions table

# More specific — much better output
/dbt-model Fiserv credit card transactions fact table,
incremental by event_date, needs merchant dimension join,
includes fraud_flag column, CFPB regulated
```

**Use `/code-review` before every PR.** It catches things that slip through
human review — implicit type casting, missing null handling, PII exposure.

**Use `/incident-response` as your first step in any P0/P1.** It generates
the diagnostic SQL you'd write anyway, but in 10 seconds instead of 20 minutes.

---

## Requirements

- Claude Code (claude.ai/claude-code)
- Anthropic API key
- A Snowflake + dbt + Airflow stack (commands work best with this stack)

---

## Questions?

LinkedIn: https://www.linkedin.com/in/sneha2095/
GitHub: https://github.com/Snehabankapalli

---

*Built from 7+ years of production fintech pipeline experience.*
*These aren't generic prompts — they encode patterns from real pipelines
processing 100M+ daily events.*
