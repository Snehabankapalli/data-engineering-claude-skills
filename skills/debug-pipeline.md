Debug this pipeline failure: $ARGUMENTS

Follow this structured protocol:

PHASE 1 — IDENTIFY
- Extract exact error message, exception type, stack trace, and job run ID from what was provided
- Classify: is this OOM, timeout, data issue, permissions, schema mismatch, or logic error?
- Is this new or a regression?

PHASE 2 — ISOLATE (check these in order)

For PySpark / EMR Serverless:
- OOM: check executor memory, data skew (uneven partition sizes), collect() on large frames
- Join issues: check for null keys, Cartesian products, missing broadcast hints
- S3 errors: verify paths exist, check IAM role permissions, check for eventual consistency issues
- Performance: check for UDFs replacing built-in functions, missing partition pruning

For AWS Glue:
- Bookmark state: may be skipping or reprocessing — check bookmark reset
- DynamicFrame schema issues: type mismatches silently drop rows
- Check job metrics: records read vs. records written (if different, data is being dropped)

For Airflow DAG:
- Check the specific failing task's logs (not the DAG-level logs)
- Verify XCom values, connection IDs, Secrets Manager config
- Check trigger_rule on downstream tasks

For Kafka Consumer:
- Consumer group lag and partition assignment stability
- Deserialization errors (schema registry mismatch)
- Offset commit failures or duplicate processing

PHASE 3 — FIX
Provide:
1. Root cause (one sentence, no hedging)
2. Complete corrective code (production-ready, not pseudocode)
3. Verification step (how to confirm fix worked)
4. Prevention (one test or monitor to add so this never silently breaks again)

If you need more information to diagnose, ask for exactly: [log file, config value, or error line] — nothing vague.
