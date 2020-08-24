# Module audit_config

This optional module is used to configure audit log configs for a project.

## Example Usage
```
module "audit_log_config" {
  source          = "terraform-google-modules/iam/google//modules/audit_config"

  project          = var.project_id
  
  audit_log_config = [{
  service          = "allServices" 
  {
    log_config = 
    [
      {
        log_type = DATA_READ
        exempted_members= ["serviceAccount:${var.member}", "user@test.com"]
      },
      {
        log_type = DATA_WRITE
        exempted_members= ["serviceAccount:${var.member}", "user@test.com"]
      }
    ]
  },

  service          = "storage.googleapis.com" 
  {
    log_config = 
    [
      {
        log_type = DATA_READ
        exempted_members= ["serviceAccount:${var.member}", "user@test.com"]
      },
      {
        log_type = DATA_WRITE
        exempted_members= ["serviceAccount:${var.member}", "user@test.com"]
      }
    ]
  }

}]

```

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| audit_log_config | List of objects to be added to audit log config | list(object({service = string log_config = list(object({ log_type = string exempted_members = list(string) })) })) | n/a | yes |
| project | GCP Project ID | string | n/a | yes |


## Outputs

| Name | Description |
|------|-------------|
| audit_log_config | Map of log type and exempted members added to service |


<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
