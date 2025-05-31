
variable "project_id" {}
variable "region" { default = "europe-west3" }
variable "gcp_sa_key_path" {}

variable "vpc_name" { default = "gke-vpc" }
variable "subnet_name" { default = "gke-subnet" }
variable "subnet_cidr" { default = "10.156.0.0/20" }

variable "gke_cluster_name" { default = "gke-cluster" }
variable "node_machine_type" { default = "e2-medium" }
variable "node_count" { default = 2 }
