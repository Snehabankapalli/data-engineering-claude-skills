Generate a complete dbt test suite for $ARGUMENTS.

Read the model file and schema, then produce:

Generic tests (in schema.yml):
- not_null on all NOT NULL columns
- unique on primary keys and surrogate keys
- accepted_values on status/type/enum columns
- relationships for all foreign keys

Singular tests (in tests/ folder):
- Row count anomaly test: flag if today's count deviates > 20% from 7-day average
- No-future-dates test: assert no timestamps are in the future
- Referential integrity test: all IDs exist in parent tables
- Financial accuracy test: SUM of fact amounts matches source system total (if applicable)

Custom macros to use: generate_surrogate_key, get_incremental_predicate

Output both the schema.yml additions AND any .sql singular test files needed.
Include a comment on each test explaining what business rule it enforces.
