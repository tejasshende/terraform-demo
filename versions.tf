
terraform {
  required_version = ">= 1.0.0"

  backend "gcs" {
    bucket = "terraform-bcknd"
    prefix = "gke-cluster/terraform.tfstate"
  }
}


provider "google" {
  credentials = file(var.gcp_sa_key_path)
  project     = var.project_id
  region      = var.region
}

variable "gcp_sa_key_path" {
  description = "Path to the GCP service account JSON key file"
  type        = string
}

/*
provider "google": This block configures the Google Cloud provider for Terraform. The provider is responsible for managing resources in Google Cloud Platform (GCP).

credentials = file(var.gcp_sa_key_path):

This tells Terraform to load the service account credentials from a JSON file located at the path specified by the variable gcp_sa_key_path.

The file() function reads the contents of the file as a string, and the provider uses it to authenticate API calls to GCP.

This key file contains the necessary permissions for Terraform to create and manage GCP resources.

project = var.project_id:

Specifies the GCP project ID where resources will be created.

var.project_id is a Terraform variable that should be set with the target project name or ID.

region = var.region:

Specifies the default region to operate in when creating regional resources.

var.region is a Terraform variable representing the desired GCP region, such as "us-central1" or "europe-west1".
*/

