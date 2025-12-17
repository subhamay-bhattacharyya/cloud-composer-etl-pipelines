# --- root/main.tf ---

# Enable Composer API
resource "google_project_service" "this" {
  provider = google-beta
  project  = local.tfvars-filename["gcp-project-id"]
  for_each = toset(local.tfvars-filename["required-apis"])
  service  = each.value

  disable_on_destroy = true
}

# User-managed service account for the Composer environment
resource "google_service_account" "this" {
  provider   = google-beta
  account_id = local.tfvars-filename["gcp-project-id"]
  # name         = local.tfvars-filename["gcp-sa-name"]
  display_name = "service account for project - ${local.tfvars-filename["gcp-project-name"]}"
}

# Minimum required role for a public IP Composer environment (fixes the classic worker-role error)
resource "google_project_iam_member" "this" {
  provider = google-beta
  project  = local.tfvars-filename["gcp-project-id"]
  member   = "serviceAccount:${google_service_account.this.email}"
  for_each = toset(local.tfvars-filename["gcp-sa-roles"])
  role     = each.value
}

# # Create the Composer environment (Composer 3)
resource "google_composer_environment" "this" {
  provider = google-beta
  name     = local.tfvars-filename["cluster-name"]
  region   = local.tfvars-filename["gcp-region"]
  project  = local.tfvars-filename["gcp-project-id"]

  config {
    software_config {
      # Pin a specific version to avoid surprise upgrades, as Google cautions. :contentReference[oaicite:1]{index=1}
      image_version = local.tfvars-filename["composer-image-version"]
    }

    node_config {
      service_account = google_service_account.this.email
    }
  }

  # depends_on = [google_project_service.this]
}