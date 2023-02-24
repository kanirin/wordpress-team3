module "wordpress" {
  source               = "./terraform-helm-local"
  deployment_name      = "wordpress"
  deployment_namespace = "team-3"
  deployment_path      = "./application"
  values_yaml          = <<EOF
    EOF
}