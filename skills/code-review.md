Perform a senior data engineer code review of $ARGUMENTS.

Review against production fintech standards (FAANG-grade).

CORRECTNESS:
- Logic errors or off-by-one errors in date filters
- Missing edge cases (nulls, duplicates, empty datasets)
- Incorrect join types (LEFT vs INNER — will rows be lost?)
- Window function frame errors (ROWS vs RANGE, missing ORDER BY)

PERFORMANCE:
- Full table scans that could be avoided with partition pruning
- Cartesian products or accidental fan-out in joins
- Missing LIMIT on exploratory queries
- Inefficient subqueries that should be CTEs or window functions

DATA QUALITY:
- Missing null handling on critical columns
- Implicit type casting that could fail in production
- Hardcoded dates or values that should be parameters
- Missing deduplication logic

SNOWFLAKE BEST PRACTICES:
- Using COUNT(1) vs COUNT(*) — use COUNT(*)
- Using ILIKE vs LIKE for case-insensitive search
- Correct use of QUALIFY instead of nested WHERE on window functions
- Using TRY_CAST instead of CAST to avoid runtime errors

SECURITY & COMPLIANCE:
- PII columns exposed without masking
- Hardcoded credentials or connection strings
- Missing row-level security for sensitive data

OUTPUT FORMAT:
For each finding:
- Severity: CRITICAL / HIGH / MEDIUM / LOW
- Location: line number or code snippet
- Issue: what's wrong
- Fix: corrected code

End with: overall score (1-10) and top 3 priorities to fix before merging.
