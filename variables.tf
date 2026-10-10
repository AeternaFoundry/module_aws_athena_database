variable "athena_databases" {
  description = <<EOT
Map of athena_databases, attributes below
Required:
    - name
Optional:
    - bucket
    - comment
    - expected_bucket_owner
    - force_destroy
    - properties
    - region
    - workgroup
    - acl_configuration (block):
        - s3_acl_option (required)
    - encryption_configuration (block):
        - encryption_option (required)
        - kms_key (optional)
EOT

  type = map(object({
    name                  = string
    bucket                = optional(string)
    comment               = optional(string)
    expected_bucket_owner = optional(string)
    force_destroy         = optional(bool)
    properties            = optional(map(string))
    region                = optional(string)
    workgroup             = optional(string)
    acl_configuration = optional(object({
      s3_acl_option = string
    }))
    encryption_configuration = optional(object({
      encryption_option = string
      kms_key           = optional(string)
    }))
  }))
  # Note: 3 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

