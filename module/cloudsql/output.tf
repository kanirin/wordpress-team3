output "username" {
  value = google_sql_user.users.name
}

output "ip" {
  value = google_sql_database_instance.main.first_ip_address 
}
output "password" {
  value = random_password.password.result
  sensitive = true
}
output "db_name" {
  value = google_sql_database.database.name
}
