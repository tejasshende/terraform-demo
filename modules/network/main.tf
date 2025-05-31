
resource "google_compute_network" "vpc" {
  name                    = "demo-vpc"
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "subnet" {
  name          = "demo-subnet"
  ip_cidr_range = "10.156.0.0/20"
  region        = var.region
  network       = google_compute_network.vpc.id
}


