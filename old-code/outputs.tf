
output "cluster_name" {
  value = google_container_cluster.primary.name
}

output "endpoint" {
  value = google_container_cluster.primary.endpoint
}

output "subnet_self_link" {
  value = google_compute_subnetwork.subnet.self_link
}
