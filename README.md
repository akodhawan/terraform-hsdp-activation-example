<img src="https://cdn.rawgit.com/hashicorp/terraform-website/master/content/source/assets/images/logo-hashicorp.svg" width="500px">

# Terraform-HSDP-ACTIVATION-EXAMPLE

Example for activation email

run `terraform apply` 3 consequetive times to 
generate the tracking state

## Requirements

| Name | Version |
|------|---------|
| hsdp | >= 0.26.0 |

## Providers

| Name | Version |
|------|---------|
| hsdp | >= 0.26.0 |


## How To

** Current State files are stored locally and preferred to have them stored in S3.
Check Store terraform state in S3
https://registry.terraform.io/providers/philips-software/hsdp/latest/docs/guides/state

Preparation:

Based on `config/template.tfvars` create the local config file - example: `dev.tfvars`

Execute (from tf level):

```sh
terraform init
terraform plan --var-file=config/dev.tfvars
terraform apply --var-file=config/dev.tfvars
```


To Destroy reources:
```sh
terraform destroy --var-file=config/dev.tfvar
```

## Modules

No Modules.

## Resources

| Name |
|------|
| [iam_activation_email](https://registry.terraform.io/providers/philips-software/hsdp/latest/docs/resources/iam_activation_email) |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|


## Outputs

No output.


# Contact / Getting help

Post your questions on the `#terraform` HSDP Slack channel

# License

License is MIT