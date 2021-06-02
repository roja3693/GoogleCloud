resource "google_sql_database_instance" "master" {
  name             = var.instancename
  database_version = var.dbversion
  region           = var.region
  deletion_protection = false
  settings {
    tier = var.tier
  }
}
