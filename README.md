# wordpress-team3


# Terraform Monitoring Module

### This module sets up uptime checks and alerting policies in Google Cloud Monitoring for a service running on Google Compute Engine (GCE) instances. It uses the google_monitoring_uptime_check_config and google_monitoring_alert_policy resources.

## Usage

### Step 1.
Run following command to initiate backend.tf file
```
source ../scripts/setenv.sh
```

### Step 2.
Run following command to initiate terraform
```
terraform init
```

### Step 3.
Run following command to deploy uptime check in GCP for wordpress application
```
terraform apply
```



## Inputs
google_domain_name - The domain name used to access the WordPress service. This is used to set up an uptime check for the service.

PROJECT_ID - The ID of the Google Cloud project to set up monitoring for.

service_name - The name of the service to set up monitoring for.

## License

This module is licensed under the Apache 2.0 License. See the LICENSE file for details.
