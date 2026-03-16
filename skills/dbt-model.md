Build a production-ready dbt model for $ARGUMENTS.

Include:
- Correct materialization strategy (incremental with merge for facts, view for staging)
- Incremental predicate using DATEADD with a lookback window for late-arriving data
- Deduplication using ROW_NUMBER() window function
- Surrogate key generation using MD5(CONCAT_WS())
- Clustering keys for Snowflake query optimization
- Jinja config block with tags, schema, and on_schema_change
- Inline SQL comments explaining business logic
- A matching schema.yml with column descriptions and dbt tests (not_null, unique, accepted_values)

Default stack: Snowflake + dbt Core. Use CTEs for readability. No subqueries.
