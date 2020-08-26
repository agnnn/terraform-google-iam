# Module audit_config

This optional module is used to configure audit log configs for a project.

audit_log_config = [
  {
    "service" = "storage.googleapis.com"
    "log_config" = [
      {
        "exempted_members" = [
          "user:ravindran@pythian.com",
        ]
        "log_type" = "DATA_READ"
      },
      {
        "exempted_members" = []
        "log_type" = "DATA_WRITE"
      },
      {
        "exempted_members" = [
          "user:ravindran@pythian.com",
        ]
        "log_type" = "ADMIN_READ"
      },
    ]
  },
  {
    "service" = "pubsub.googleapis.com"
    "log_config" = [
      {
        "log_type" = "DATA_READ"
        "exempted_members" = [
          "user:ravindran@pythian.com",
        ]
      },
      {
        "log_type" = "DATA_WRITE"
        "exempted_members" = []
      },
      {
        "log_type" = "ADMIN_READ"
        "exempted_members" = [
          "user:ravindran@pythian.com",
        ]
      }
    ]
  }
]
## Example Usage
```
module "audit_log_config" {
  source           = "terraform-google-modules/iam/google//modules/audit_config"

  project          = my-project
  
  audit_log_config = [
    {
      service    = "pubsub.googleapis.com"      
      log_config = [
        {
          log_type = DATA_READ
          exempted_members = [
            "group:my-group@my-org.com",
            "serviceAccount:my-sa@my-project.iam.gserviceaccount.com",
            "user:my-user@my-org.com"
          ]
        },
        {
          log_type = DATA_WRITE
          exempted_members = [
            "group:my-group@my-org.com",
            "serviceAccount:my-sa@my-project.iam.gserviceaccount.com",
            "user:my-user@my-org.com"
          ]
        }
      ]
    },
    {
      service    = "storage.googleapis.com"       
      log_config = [
        {
          log_type = DATA_READ
          exempted_members = [
            "group:my-group@my-org.com",
            "serviceAccount:my-sa@my-project.iam.gserviceaccount.com",
            "user:my-user@my-org.com"
          ]
        },
        {
          log_type = DATA_WRITE
          exempted_members = [
            "group:my-group@my-org.com",
            "serviceAccount:my-sa@my-project.iam.gserviceaccount.com",
            "user:my-user@my-org.com"
          ]    
        }
      ]
    }
  ]

```

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| audit_log_config | List of objects to be added to audit log config | list(object({service = string, log_config = list(object({ log_type = string, exempted_members = list(string) })) })) | n/a | yes |
| project | GCP Project ID | string | n/a | yes |


## Outputs

| Name | Description |
|------|-------------|
| audit_log_config | Map of log type and exempted members added to service |


<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
