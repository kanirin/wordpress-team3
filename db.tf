module "wordpress_db" {
  source = "./module/cloudsql"
  # db_name         = "wordpress1"
  # dbinstance_name = "wordpress"
  # db_username     = "diana"
  # db_password     = "Pass5678"
  # db_host         = "application.rindevops.com"
}
output URL {
  value   = module.wordpress_db.google_sql_database_instance
}