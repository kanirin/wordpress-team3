output "database_username" {
  value = google_sql_user.users.name
}

output "google_sql_database_instance" {
  value = google_sql_database_instance.main.first_ip_address 
}