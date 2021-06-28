# terraform-aws-cloudhsm

[![Build Status](https://github.com/JamesWoolfenden/terraform-aws-cloudhsm/workflows/Verify%20and%20Bump/badge.svg?branch=master)](https://github.com/JamesWoolfenden/terraform-aws-cloudhsm)
[![Latest Release](https://img.shields.io/github/release/JamesWoolfenden/terraform-aws-cloudhsm.svg)](https://github.com/JamesWoolfenden/terraform-aws-cloudhsm/releases/latest)
[![GitHub tag (latest SemVer)](https://img.shields.io/github/tag/JamesWoolfenden/terraform-aws-cloudhsm.svg?label=latest)](https://github.com/JamesWoolfenden/terraform-aws-cloudhsm/releases/latest)
![Terraform Version](https://img.shields.io/badge/tf-%3E%3D0.14.0-blue.svg)
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/JamesWoolfenden/terraform-aws-cloudhsm/cis_aws)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=JamesWoolfenden%2Fterraform-aws-cloudhsm&benchmark=CIS+AWS+V1.2)
[![pre-commit](https://img.shields.io/badge/pre--commit-enabled-brightgreen?logo=pre-commit&logoColor=white)](https://github.com/pre-commit/pre-commit)
[![checkov](https://img.shields.io/badge/checkov-verified-brightgreen)](https://www.checkov.io/)
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/jameswoolfenden/terraform-aws-cloudhsm/general)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=JamesWoolfenden%2Fterraform-aws-cloudhsm&benchmark=INFRASTRUCTURE+SECURITY)

Terraform module -

---

It's 100% Open Source and licensed under the [APACHE2](LICENSE).

## Usage

This is just a very basic example.

![alt text](./diagram/api.png)

Include **module.hsm.tf** this repository as a module in your existing terraform code:

```terraform
module "hsm" {
  source      = "JamesWoolfenden/cloudhsm/aws"
  version     = "0.0.4"
}
```

## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_appsync_datasource.user](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/appsync_datasource) | resource |
| [aws_appsync_graphql_api.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/appsync_graphql_api) | resource |
| [aws_appsync_resolver.user](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/appsync_resolver) | resource |
| [aws_iam_role.appsync](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_role_policy_attachment.attach](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_api_name"></a> [api\_name](#input\_api\_name) | n/a | `string` | `"hitme"` | no |
| <a name="input_appsync_rolename"></a> [appsync\_rolename](#input\_appsync\_rolename) | The name of the role to attach to appsync | `string` | `"Appsync"` | no |
| <a name="input_common_tags"></a> [common\_tags](#input\_common\_tags) | This is a map type for applying tags on resources | `map(any)` | n/a | yes |
| <a name="input_datasource_user_name"></a> [datasource\_user\_name](#input\_datasource\_user\_name) | n/a | `string` | `"hitme_user"` | no |
| <a name="input_lambda_resolver_arn"></a> [lambda\_resolver\_arn](#input\_lambda\_resolver\_arn) | n/a | `string` | n/a | yes |
| <a name="input_request_template"></a> [request\_template](#input\_request\_template) | n/a | `string` | n/a | yes |
| <a name="input_resolver_field"></a> [resolver\_field](#input\_resolver\_field) | (optional) describe your variable | `string` | n/a | yes |
| <a name="input_resolver_type"></a> [resolver\_type](#input\_resolver\_type) | (optional) describe your variable | `string` | n/a | yes |
| <a name="input_response_template"></a> [response\_template](#input\_response\_template) | n/a | `string` | n/a | yes |
| <a name="input_schema"></a> [schema](#input\_schema) | n/a | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_api"></a> [api](#output\_api) | n/a |
| <a name="output_datasource"></a> [datasource](#output\_datasource) | n/a |
| <a name="output_resolver"></a> [resolver](#output\_resolver) | n/a |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Related Projects

Check out these related projects.

- [terraform-aws-s3](https://github.com/jameswoolfenden/terraform-aws-s3) - S3 buckets

## Help

**Got a question?**

File a GitHub [issue](https://github.com/JamesWoolfenden/terraform-aws-cloudhsm/issues).

## Contributing

### Bug Reports & Feature Requests

Please use the [issue tracker](https://github.com/JamesWoolfenden/terraform-aws-cloudhsm/issues) to report any bugs or file feature requests.

## Copyrights

Copyright 2019-2021 James Woolfenden

## License

[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)

See [LICENSE](LICENSE) for full details.

Licensed to the Apache Software Foundation (ASF) under one
or more contributor license agreements. See the NOTICE file
distributed with this work for additional information
regarding copyright ownership. The ASF licenses this file
to you under the Apache License, Version 2.0 (the
"License"); you may not use this file except in compliance
with the License. You may obtain a copy of the License at

<https://www.apache.org/licenses/LICENSE-2.0>

Unless required by applicable law or agreed to in writing,
software distributed under the License is distributed on an
"AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
KIND, either express or implied. See the License for the
specific language governing permissions and limitations
under the License.

### Contributors

[![James Woolfenden][jameswoolfenden_avatar]][jameswoolfenden_homepage]<br/>[James Woolfenden][jameswoolfenden_homepage]

[jameswoolfenden_homepage]: https://github.com/jameswoolfenden
[jameswoolfenden_avatar]: https://github.com/jameswoolfenden.png?size=150
[github]: https://github.com/jameswoolfenden
[linkedin]: https://www.linkedin.com/in/jameswoolfenden/
[twitter]: https://twitter.com/JimWoolfenden
[share_twitter]: https://twitter.com/intent/tweet/?text=terraform-aws-cloudhsm&url=https://github.com/JamesWoolfenden/terraform-aws-cloudhsm
[share_linkedin]: https://www.linkedin.com/shareArticle?mini=true&title=terraform-aws-cloudhsm&url=https://github.com/JamesWoolfenden/terraform-aws-cloudhsm
[share_reddit]: https://reddit.com/submit/?url=https://github.com/JamesWoolfenden/terraform-aws-cloudhsm
[share_facebook]: https://facebook.com/sharer/sharer.php?u=https://github.com/JamesWoolfenden/terraform-aws-cloudhsm
[share_email]: mailto:?subject=terraform-aws-cloudhsm&body=https://github.com/JamesWoolfenden/terraform-aws-cloudhsm
