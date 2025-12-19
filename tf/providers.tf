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
  credentials = file("tf-sa-key/terraform-sa-key.json")
  project     = "gcc-etl-pipeline-06902"
  region      = "us-central1"
}