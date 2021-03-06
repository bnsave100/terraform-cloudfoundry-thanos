# Terraform Cloudfoundry Thanos module
Experimental setup for Prometheus + Thanos on Cloudfoundry.
A path towards unlimited metrics storage. This module provisions
a separate Cloud foundry space and deploys a number of apps and services

# TODO 
- Add persistence and authentication to Grafana
- Internalize Prometheus
- Add some sort of Service Discovery to Prometheus

## Requirements

| Name | Version |
|------|---------|
| terraform | >= 0.13.0 |
| cloudfoundry | >= 0.12.4 |
| random | >= 2.2.1 |

## Providers

| Name | Version |
|------|---------|
| cloudfoundry | >= 0.12.4 |
| random | >= 2.2.1 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| cf\_app\_domain | The Cloudfoundry regular app domain to use | `string` | `"us-east.philips-healthsuite.com"` | no |
| cf\_org\_name | Cloudfoundry ORG name to use for reverse proxy | `string` | n/a | yes |
| cf\_user | The Cloudfoundry user to assign rights to the app to | `string` | n/a | yes |
| enable\_grafana | Adds a Grafana deployment when enabled | `bool` | `false` | no |
| grafana\_image | Image to use for Grafana | `string` | `"grafana/grafana:latest"` | no |
| thanos\_image | Image to use for Thanos app | `string` | `"loafoe/cf-thanos:0.1.0"` | no |
| thanos\_query\_image | Image to use for Thanos query | `string` | `"loafoe/cf-thanos:0.1.0"` | no |
| thanos\_store\_image | Image to use for Thanos store | `string` | `"loafoe/cf-thanos:0.1.0"` | no |

## Outputs

| Name | Description |
|------|-------------|
| cluster\_id | Cluster ID of Tasy POC |
| grafana\_endpoint | URL of Grafana deployment (optional) |
| thanos\_query\_endpoint | URL of Thanos deployment |

# Contact / Getting help
andy.lo-a-foe@philips.com

# License
License is MIT
