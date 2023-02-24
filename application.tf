module "wordpress" {
  depends_on = [
    kubernetes_config_map.example
  ]
  source               = "./terraform-helm-local"
  deployment_name      = "wordpress"
  deployment_namespace = "team-3"
  deployment_path      = "./application"
  values_yaml          = <<EOF
ingress:
  enabled: true
  className: "nginx"
  annotations: 
    cert-manager.io/cluster-issuer: letsencrypt-prod
    nginx.ingress.kubernetes.io/proxy-body-size: "0"
    ingress.kubernetes.io/ssl-redirect: "false"
    acme.cert-manager.io/http01-edit-in-place: "true"
  hosts:
    - host: application.rindevops.com
      paths:
        - path: /
          pathType: ImplementationSpecific
  tls: 
  - secretName: chart-example-tls
    hosts:
      - application.rindevops.com
    EOF
}


