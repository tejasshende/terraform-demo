
resource "google_container_cluster" "primary" {
  name     = "demo-gke-cluster"
  location = var.region

  remove_default_node_pool = true
  initial_node_count       = 1

  network    = var.network
  subnetwork = var.subnetwork

  release_channel {
    channel = "REGULAR"
  }

}

resource "google_container_node_pool" "primary_nodes" {
  cluster    = google_container_cluster.primary.name
  location   = var.region
  node_count = 2

  node_config {
    machine_type = "e2-medium"
    disk_size_gb = 50
    disk_type    = "pd-ssd"
    oauth_scopes = [
      "https://www.googleapis.com/auth/cloud-platform"
    ]
  }

  lifecycle {
    ignore_changes = [initial_node_count]
  }
}


