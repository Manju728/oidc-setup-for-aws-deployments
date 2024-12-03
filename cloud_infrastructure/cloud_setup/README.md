# Deployment steps
cd cloud_infrastructure/cloud_setup

rm -rf .terraform

rm terraform.lock.hcl

terraform init -backend-config=backend.hcl

terraform workspace select {work_spacename}

terraform plan --var-file="tfvars/dev.tfvars" -lock=false
<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | = 1.6.6 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | = 5.32.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 5.32.1 |
| <a name="provider_tls"></a> [tls](#provider\_tls) | 4.0.6 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_iam_openid_connect_provider.github](https://registry.terraform.io/providers/hashicorp/aws/5.32.1/docs/resources/iam_openid_connect_provider) | resource |
| [aws_iam_role.deployment_role](https://registry.terraform.io/providers/hashicorp/aws/5.32.1/docs/resources/iam_role) | resource |
| [aws_iam_role_policy_attachment.deployment_role_policy_attachment](https://registry.terraform.io/providers/hashicorp/aws/5.32.1/docs/resources/iam_role_policy_attachment) | resource |
| [aws_caller_identity.current](https://registry.terraform.io/providers/hashicorp/aws/5.32.1/docs/data-sources/caller_identity) | data source |
| [aws_iam_policy_document.aws-github-trust-relationship](https://registry.terraform.io/providers/hashicorp/aws/5.32.1/docs/data-sources/iam_policy_document) | data source |
| [tls_certificate.github](https://registry.terraform.io/providers/hashicorp/tls/latest/docs/data-sources/certificate) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_aws_region"></a> [aws\_region](#input\_aws\_region) | AWS region | `any` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_cert_thumb_prints"></a> [cert\_thumb\_prints](#output\_cert\_thumb\_prints) | n/a |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
