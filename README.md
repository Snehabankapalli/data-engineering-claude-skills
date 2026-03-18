# Data Engineering Claude Skills

> 9 production-grade Claude Code skills for data engineers — built from 7+ years of fintech and healthcare pipeline experience.

Install in 30 seconds. Use with `/skill-name` in Claude Code. Get senior data engineer output instantly.

---

## Install

**Windows:**
```powershell
& ".\install.ps1"
```

**Mac / Linux:**
```bash
bash install.sh
```

That's it. All skills are now available in Claude Code.

---

## Skills

### `/dbt-model [description]`
Generate a production-ready dbt model — correct materialization, incremental merge, deduplication, clustering keys, and matching schema.yml tests.

```
/dbt-model credit card transactions fact table with daily aggregations
```

---

### `/dbt-test [model name or file]`
Generate a complete dbt test suite — generic tests, singular tests, row count anomaly detection, and financial accuracy checks.

```
/dbt-test fct_credit_card_daily
```

---

### `/snowflake-optimize [query or table]`
Full optimization audit — clustering keys, materialized views, result caching, warehouse sizing. Outputs findings ranked by impact with estimated % improvement.

```
/snowflake-optimize the queries in dashboard.sql
```

---

### `/pipeline-scaffold [description]`
Scaffold a complete pipeline from scratch — Python ingestion, Snowflake loader, dbt models, Airflow DAG, and Terraform. Production-ready, not a prototype.

```
/pipeline-scaffold Stripe webhook events to Snowflake
```

---

### `/incident-response [what's broken]`
P0/P1 incident playbook — triage, diagnostic SQL, remediation steps, stakeholder comms, and prevention. Built for speed.

```
/incident-response TRANSACTIONS table hasn't updated in 6 hours
```

---

### `/data-contract [table name]`
Generate a full data contract — YAML spec, quality rules, SLA, consumer list, and a dbt schema.yml that enforces it.

```
/data-contract fct_payments
```

---

### `/schema-design [business process]`
Design a Kimball dimensional model — fact table, dimension tables, SCD Type 2 handling, Snowflake DDL, and an ASCII ERD.

```
/schema-design credit card transaction processing
```

---

### `/cost-analysis [warehouse or database]`
Snowflake cost audit — expensive queries, warehouse utilization, storage waste, and a prioritized savings plan.

```
/cost-analysis our ANALYTICS_WH warehouse
```

---

### `/code-review [file or code]`
Senior DE code review against production fintech standards — correctness, performance, data quality, Snowflake best practices, and compliance risks.

```
/code-review the SQL in stg_transactions.sql
```

---

## Memory Template

Copy `memory/data-stack-context.md` into your project as `CLAUDE.md` and fill in your stack. Claude will read it before every command and generate stack-specific output without you having to explain your setup every time.

---

## Who This Is For

- Data engineers using Claude Code daily
- Teams standardizing on Snowflake + dbt + Airflow
- Engineers working in regulated industries (fintech, healthcare)
- Anyone who wants senior-level output without the back-and-forth

---

## 🛒 More Data Engineering Resources

| Product | What You Get | Price |
|---|---|---|
| [Data Engineering Claude Code Starter Kit](https://snehabank.gumroad.com/l/aaugjh) | This repo — packaged with install scripts and setup guide | $19 |
| [Snowflake Cost Optimization Playbook](https://snehabank.gumroad.com/l/kapqn) | 10 cost leaks + copy-paste SQL to detect and fix each one | $25 |
| [Data Engineering Interview Kit](https://snehabank.gumroad.com/l/qjfgjf) | 50 SQL questions + 10 system designs + 4 cheat sheets | $15 |

---

## Built By

**Sneha Bankapalli** — Senior Data Engineer at a fintech company.
These skills encode patterns from production pipelines processing 100M+ daily events across fintech and healthcare.

[![LinkedIn](https://img.shields.io/badge/LinkedIn-sneha2095-0077B5?style=flat&logo=linkedin)](https://www.linkedin.com/in/sneha2095/)
[![GitHub](https://img.shields.io/badge/GitHub-Snehabankapalli-181717?style=flat&logo=github)](https://github.com/Snehabankapalli)
