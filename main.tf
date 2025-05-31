
module "network" {
  source     = "./modules/network"
  project_id = var.project_id
  region     = var.region
  labels     = local.common_labels
}

module "gke" {
  source     = "./modules/gke"
  project_id = var.project_id
  zone       = var.zone
  network    = module.network.vpc_name
  subnetwork = module.network.subnet_name
  labels     = local.common_labels
}
