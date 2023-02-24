module "wordpress_db" {

  source = "./module/cloudsql"

}
resource "kubernetes_config_map" "example" {
  metadata {
    namespace = "team-3"
    name      = "db-config"
  }

  data = {
    ip       = module.wordpress_db.ip
    username = module.wordpress_db.username
    password = module.wordpress_db.password
    db_name  = module.wordpress_db.db_name

  }

}
output "ip" {
  value = module.wordpress_db.ip
}
output "username" {
  value = module.wordpress_db.username
}

output "password" {
  value     = module.wordpress_db.password
  sensitive = true
}

output "db_name" {
  value = module.wordpress_db.db_name
}