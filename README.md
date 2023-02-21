# wordpress-team3







# Terraform Monitoring Module

### This module sets up uptime checks and alerting policies in Google Cloud Monitoring for a service running on Google Compute Engine (GCE) instances. It uses the google_monitoring_uptime_check_config and google_monitoring_alert_policy resources.

## Usage

```
module "wordpress" {
  source             = "../modules/monitoring"
  google_domain_name = var.google_domain_name
  PROJECT_ID         = var.PROJECT_ID
  service_name       = "wordpress"
}
```
google_domain_name (required) - The domain name used to access the WordPress service. This is used to set up an uptime check for the service.

PROJECT_ID (required) - The ID of the Google Cloud project to set up monitoring for.

service_name (optional, default = "default") - The name of the service to set up monitoring for.

## Inputs
google_domain_name - The domain name used to access the WordPress service. This is used to set up an uptime check for the service.

PROJECT_ID - The ID of the Google Cloud project to set up monitoring for.

service_name - The name of the service to set up monitoring for.

## License

This module is licensed under the Apache 2.0 License. See the LICENSE file for details.
