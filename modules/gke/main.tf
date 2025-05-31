
resource "google_container_cluster" "primary" {
  name     = "demo-gke-cluster"
  location = var.zone

  deletion_protection      = false
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
  location   = var.zone
  node_count = 1

  node_config {
    machine_type = "e2-medium"
    disk_size_gb = 50
    disk_type    = "pd-ssd"
    oauth_scopes = [
      "https://www.googleapis.com/auth/cloud-platform" ##This block defines the OAuth 2.0 scopes that are granted to the GKE nodes (VMs) via their Compute Engine default service account (or a custom one you attach).
    ]
  }

  lifecycle {
    ignore_changes = [initial_node_count] #This tells Terraform: "If someone outside of Terraform (like the GCP Console) changes initial_node_count, ignore it."
  }
}


