Run a data incident response playbook for $ARGUMENTS.

This is a P0/P1 data incident. Work through the following steps:

TRIAGE (answer immediately):
- What tables/pipelines are affected?
- What is the blast radius? (dashboards down, regulatory reports delayed, customer-facing impact?)
- What is the severity? (data loss, data corruption, stale data, wrong numbers?)
- What is the SLA breach risk?

DIAGNOSIS:
- What are the top 3 most likely root causes?
- What Snowflake queries would confirm or rule out each cause?
  (Write the actual SQL for each diagnostic query)
- What logs or monitoring should be checked?

REMEDIATION:
- Step-by-step fix instructions (be specific — actual commands/SQL)
- Is a dbt backfill needed? If so, write the exact dbt command
- Is a Snowpipe resume needed? Write the SQL
- Estimated time to resolve each approach

COMMUNICATION:
- Write a Slack message to post in #data-incidents (2-3 sentences, non-technical)
- Write a stakeholder email update (for business teams)
- What needs to go in the post-mortem?

PREVENTION:
- What monitoring would have caught this earlier?
- What dbt test would prevent recurrence?

Be direct and specific. This is production. Speed matters.
