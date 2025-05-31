
variable "project_id" {
  description = "The ID of the project in which resources will be created"
  type        = string
}

variable "region" {
  description = "The region to deploy resources"
  type        = string
  default     = "europe-west3"
}

variable "zone" {
  description = "The GCP zone to deploy resources into"
  type        = string
}

