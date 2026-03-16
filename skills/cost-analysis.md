Analyze Snowflake costs and produce a savings plan for $ARGUMENTS.

CREDIT CONSUMPTION AUDIT:

Query history analysis:
- Write SQL to identify top 10 most expensive queries (by credits consumed)
- Write SQL to find warehouses with low utilization (auto-suspend too slow)
- Write SQL to find tables with expensive full scans (need clustering)
- Write SQL to find repeated identical queries (result cache not being hit)

Warehouse audit:
- Are warehouse sizes appropriate for workload type? (ETL vs BI vs ad-hoc)
- Is multi-cluster auto-scaling configured correctly?
- Are auto-suspend times optimized? (60s for ETL, 5min for BI)

Storage audit:
- Write SQL to find tables with excessive time travel (default 90 days)
- Identify large tables that could use zero-copy clones for dev/test
- Find tables not accessed in 90+ days (archive candidates)

SAVINGS RECOMMENDATIONS:

For each finding, provide:
1. Current estimated monthly cost (in credits)
2. Recommended fix (with exact SQL or config change)
3. Estimated savings (credits and USD at $3/credit)
4. Implementation effort (low/medium/high)

PRIORITIZED ACTION PLAN:
- Quick wins (< 1 day effort, immediate savings)
- Medium term (1 week effort)
- Strategic (1 month effort, largest savings)

Target: identify at least 20% cost reduction opportunities.
