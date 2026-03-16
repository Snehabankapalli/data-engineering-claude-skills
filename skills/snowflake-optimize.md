Analyze and optimize this Snowflake SQL or table for $ARGUMENTS.

Perform a full optimization audit covering:

Query optimization:
- Identify full table scans and suggest clustering keys or search optimization
- Replace correlated subqueries with window functions or CTEs
- Suggest partition pruning improvements using date filters
- Flag cartesian joins or missing join conditions
- Recommend result caching opportunities (repeated identical queries)

Cost reduction:
- Estimate warehouse credit consumption and suggest right-sizing
- Identify candidates for materialized views (expensive repeated aggregations)
- Suggest zero-copy clone usage for dev/test environments
- Flag COPY INTO patterns that could use Snowpipe instead

Schema improvements:
- Suggest clustering keys based on filter patterns
- Recommend data types (VARCHAR vs TEXT, NUMBER precision)
- Identify columns suitable for search optimization service

Output: a numbered list of findings, each with:
- Current cost/problem
- Recommended fix with example SQL
- Estimated % improvement

Format findings from highest to lowest impact.
