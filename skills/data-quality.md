Run a comprehensive data quality audit on: $ARGUMENTS

If a Snowflake table name is provided, generate SQL queries to run the audit.
If a PySpark DataFrame or schema is provided, generate Python code.

Audit dimensions to cover:

1. COMPLETENESS — null rates per column, flag if >1% null on non-nullable fields
2. UNIQUENESS — duplicate check on declared grain, flag if duplicate rate >0.01%
3. FRESHNESS — time since last update vs. expected SLA (daily/hourly/real-time)
4. REFERENTIAL INTEGRITY — orphaned FK records, flag any orphan rate >0%
5. DISTRIBUTION — flag columns where >95% rows share one value, flag numeric outliers, flag impossible dates
6. SCHEMA DRIFT — flag unexpected columns, type changes, or removed columns vs. schema definition

Output format:

```
## Data Quality Report: <table_name>

### CRITICAL (fix immediately — pipeline or reporting is wrong now)
- [DIMENSION] Description of issue with exact count/percentage

### HIGH (fix this sprint — data is unreliable)
- [DIMENSION] Description with impact

### MEDIUM (monitor — watch for trends)
- [DIMENSION] Description with recommendation

### Recommended dbt Tests
[Complete schema.yml tests block to add]

### Summary
Total rows: X | Overall health: CRITICAL / WARNING / HEALTHY
```

Also provide a single "health score" from 0-100 with the formula used.
Default stack: Snowflake SQL. Switch to PySpark if a DataFrame/schema is provided.
