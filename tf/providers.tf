# --- root/providers.tf ---

terraform {
  required_version = ">= 1.14.1"
  required_providers {
    google-beta = {
      source  = "hashicorp/google-beta"
      version = ">= 5.39.0"
    }
  }
}

provider "google-beta" {
  credentials = file("tf-sa-key/${var.gcp-project-id}.json")
  project     = var.gcp-project-id
  region      = var.gcp-region
}