Generate production-ready Terraform HCL for AWS data infrastructure: $ARGUMENTS

Stack: AWS (EMR Serverless, Glue, S3, MSK/Kafka), optional Snowflake integration.

Output this exact folder structure:
```
infra/
├── main.tf           # Provider config + S3 backend
├── variables.tf      # All input variables with descriptions + defaults
├── outputs.tf        # Exported values for other modules
├── locals.tf         # Naming conventions + standard tags
├── s3.tf             # Raw, processed, archive, and logs buckets
├── iam.tf            # Execution roles (least privilege, separate per service)
├── glue.tf           # Glue jobs, crawlers, data catalog (if needed)
├── emr.tf            # EMR Serverless application (if needed)
├── kafka.tf          # MSK cluster with security groups (if needed)
└── terraform.tfvars.example
```

Standards to enforce:
- Terraform >= 1.6, AWS provider ~> 5.0
- Remote state: S3 backend + DynamoDB lock table
- All resources tagged: Project, Environment, Owner=data-engineering, ManagedBy=terraform
- S3: versioning on, AES-256 encryption, block public access, lifecycle rules (IA after 30d, Glacier after 90d)
- IAM: separate execution role per service, no wildcard resources without documented reason
- EMR Serverless: auto-stop after 15min idle, CloudWatch + S3 logging
- Glue: job bookmark enabled for incremental processing
- Cost controls: budget alerts at 80% and 100%, auto-suspend on all compute
- Variables for: environment, region, project_name, cost center

Provide complete, working HCL. Use <REPLACE_ME> only for secrets. No placeholders for structural config.
