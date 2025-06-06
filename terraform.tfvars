
project_id      = "devops-labs-461715"
gcp_sa_key_path = "GCP_SA_KEY.json"
zone            = "europe-west3-a"

/*
The terraform.tfvars file is used to set variable values that your Terraform configuration expects.

Provides a convenient way to pass in variable values without manually specifying them on the command line.

Keeps your variable values organized and separated from your Terraform code.

Can be excluded from version control (e.g., .gitignore) if it contains sensitive or environment-specific data.

Supports multiple environment configurations by maintaining different .tfvars files (e.g., dev.tfvars, prod.tfvars).
*/
