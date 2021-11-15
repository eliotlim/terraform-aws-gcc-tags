# terraform-aws-gcc-tags

Simple Terraform module that creates GCC-style tags from variables.

## Example

### Terraform Variables (.tfvars)

```terraform
Agency       = "gt"
Project-Code = "abc"
Environment  = "dev"
Zone         = "dz"
Tier         = "na"
```

### Output

```terraform
tags = {
  Environment  = "dev"
  Project-Code = "abc"
  Tier         = "web"
  Zone         = "ez"
}
desc = "abc-devezweb"
```

## Example

### Embedded Terraform Module

```terraform
module "tags" {
  source = ""

  Agency       = "gt"
  Project-Code = "abc"
  Environment  = var.Environment
}
```

### Output

```terraform
tags = {
  Environment  = "t00"
  Project-Code = "abc"
  Tier         = null
  Zone         = null
}
desc = "abc-t00"
```