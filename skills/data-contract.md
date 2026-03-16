Generate a complete data contract for $ARGUMENTS.

A data contract is a formal agreement between data producers and consumers.

Produce a YAML data contract file covering:

metadata:
  - name, version, owner, domain, status (draft/active/deprecated)
  - SLA: freshness guarantee, uptime %, support contact

schema:
  - All columns with: name, type, description, nullable, pii_flag
  - Primary key definition
  - Partition and clustering keys

quality:
  - Freshness SLA (max hours since last load)
  - Completeness rules (max null % per column)
  - Uniqueness constraints
  - Value range rules (min/max for numeric columns)
  - Referential integrity rules

semantics:
  - Business definition of each key metric column
  - Known edge cases or gotchas
  - Related tables and join keys

consumers:
  - List of known downstream consumers (dashboards, ML models, reports)
  - Deprecation notice period required (default: 30 days)

changelog:
  - Initial version entry

Also generate:
- A dbt schema.yml that enforces the contract's quality rules as tests
- A Python validator script that checks the contract against a live Snowflake table
