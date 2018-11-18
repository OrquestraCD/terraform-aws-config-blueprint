# Terraform AWS Config blueprint

Blueprint to create a minimal and secure AWS Config configuration. By default a
encrypted secure bucket is created and the Config is set to use it to store
configuration snapshots. AWS Config does not support KMS in the current moment
this blueprint was created so it uses the SSE with AES256 auto managed key to
encrypt snapshots. It also creates a config recorder per region to avoid left
an unmonitored region and aggregates rules compliance on the main region.

## Usage

You can use this module through the example bellow:

```terraform
module "name" {
  source = "github.com/pro-terraform-blueprints/terraform-aws-config-blueprint?ref=<VERSION>"

  name = "..."
  description = "..."
}
```

Where `<VERSION>` is the tag version you want to use. I do not recomend using
the branch as the source, verify the available tags and specify a given version,
this will avoid that breaking changes spread to your modules without warning.
See more details on **Versions** session on main [organization documentation](https://github.com/pro-terraform-blueprints/terraform-blueprints-documentation):

This module accepts others parameters, see the **Input** session bellow.

### Inputs

This table show the variables available for the module, parameters with no
default value are required:

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| name | A human readable label to name and tag AWS resources | string | - | yes |
| name\_separator | A separator for suffixes and preffixes on resources name and Name tags | string | `-` | no |
| common\_tags | A map of values to be merged with Name tag and associate to resources | map | `{}` | no |
| enabled | If the resources must be created | string | `true` | no |
| auto\_create\_bucket | If true, creates the bucket log bucket and KMS key for storing CloudTrail | string | `true` | no |
| custom\_bucket\_name | The custom bucket name. This is necessary if auto_create_bucket is set to false | string | `` | no |
| bucket\_prefix | A prefix to prepend on log bucket name | string | `` | no |
| bucket\_suffix | a suffix to append on log bucket name | string | `` | no |
| bucket\_force\_destroy | A boolean that indicates all objects should be deleted from the bucket so that the bucket can be destroyed without error. These objects are not recoverable. | string | `false` | no |
| bucket\_logs\_transitions | The storage areas transitions for current and versioned logs. By default stay in 30 days on standard storage, then send to Infrequent Access and after more 60 days send to Glacier | list | `[ { "days": 30, "storage_class": "STANDARD_IA" }, { "days": 90, "storage_class": "GLACIER" } ]` | no |
| bucket\_logs\_expiration | The number of days to expire current and versioned logs | string | `365` | no |
| extra\_bucket\_policy\_statements | A list of extra bucket policies to be merged with the default one | list | `[]` | no |
| cross\_accounts\_id | A list of external accounts id to allow to use the log bucket to store config snapshots | list | `[]` | no |
| delivery\_frequency | The frequency with which AWS Config recurringly delivers configuration snapshots | string | `TwentyFour_Hours` | no |
| enable\_extra\_regions | What extra regions you need to enable. Require setting providers correctly | map | `{}` | no |
| auto\_create\_iam\_role | If the IAM role and associated policies and attachments must be created | string | `true` | no |
| custom\_iam\_role\_arn | A custom IAM Role ARN to attach to the Config Recorder. This parameter is ignored auto_create_iam_role is true | string | `` | no |
| auto\_create\_aggregator | If true create an aggregator for all regions on the same account on the main region | string | `true` | no |

### Outputs

| Name | Description |
|------|-------------|
| cross\_account\_bucket\_policy\_statements | - |
| iam\_role | The IAM role attributes associate with the Config |
| log\_bucket | The S3 log bucket attributes used by Config to store logs |
| settings | The AWS Config settings for the account |

## Architecture

AWS Config have two parts, the first one is the inventory of cloud resources
with frequent snapshots of each component (on a log bucket) and Config Rules to
check the account and region compliance with a given regulatory item. This
blueprint can take care of both and provides some helpers on cross account
snapshots and rules aggregations.

You can customize the bucket name using the `bucket\_prefix` and
`bucket\_suffix` (pay attention on the `name\_separator` too and the main
documentation from Pro Terraform Templates) in combination with the `name`
parameter. Remember your bucket name must be unique across entire world.

### Bucket policies

### Custom bucket

### Custom IAM role

### Snapshots expiration and transitions

### Inventory and rules on extra regions

#### Activating AWS managed rules per region

#### Aggregations

### Cross account snapshots and aggregations
