# Terraform AWS Config blueprint

Blueprint to create a minimal and secure AWS Config configuration.

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

| Name                    | Type           | Default         | Description |
| ----------------------- | -------------- | --------------- | --------------------------- |
| name                    | string         |                 | A human readable label to name and tag AWS resources |
| common_tags             | map            | {}              | A map of values to be merged with Name tag and associate to resources |
| enabled                 | boolean        | true            | If the resources must be created |

### Outputs

| Name             | Type   | Description |
| ----             | ----   | ----------- |

## Architecture
