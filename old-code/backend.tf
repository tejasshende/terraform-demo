
terraform {
  backend "gcs" {
    bucket = "terraform-bcknd" # Replace with your bucket name
    prefix = "gke-cluster/terraform.tfstate"
  }
}
