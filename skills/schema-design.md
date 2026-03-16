Design a dimensional data model for $ARGUMENTS.

Produce a complete Kimball-style dimensional model:

REQUIREMENTS ANALYSIS:
- Identify the business process being modeled
- List the grain of the fact table (one row = one what?)
- Identify measures (additive, semi-additive, non-additive)
- Identify dimensions (who, what, where, when, why, how)

DIMENSIONAL MODEL:

Fact table:
- Name: fct_[process]
- Grain statement
- All foreign keys to dimensions
- All measures with aggregation type
- Audit columns: _loaded_at, _dbt_updated_at

Dimension tables (one per dimension):
- Name: dim_[entity]
- Surrogate key (MD5 hash)
- Natural/business key
- All descriptive attributes
- SCD Type 2 columns if slowly changing (valid_from, valid_to, is_current)

SNOWFLAKE DDL:
- CREATE TABLE statements for all tables
- Clustering keys for the fact table
- Comments on all columns

DBT IMPLEMENTATION:
- Suggested materialization for each model
- Incremental strategy recommendation
- Which models need SCD Type 2 handling

DIAGRAM (ASCII):
- Entity-relationship diagram showing all tables and join keys
