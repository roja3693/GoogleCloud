resource "google_container_cluster" "primary" {
  name     = var.name
  location = var.location
  remove_default_node_pool = true
  initial_node_count       = 1
}

resource "google_service_account" "default" {
  account_id   = var.account_id
  display_name = var.display_name
}

resource "google_container_node_pool" "primary_preemptible_nodes" {
  name       = var.nodepoolname
  location   = google_container_cluster.primary.location
  cluster    = google_container_cluster.primary.name
  node_count = 1

  node_config {
    preemptible  = true
    machine_type = var.machine_type

    service_account = google_service_account.default.email
    oauth_scopes    = [
      "https://www.googleapis.com/auth/cloud-platform"
    ]
  }
}