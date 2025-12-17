# --- root/outputs.tf ---


output "service-account-email" {
  value       = google_service_account.this.email
  description = "The email address of the Composer service account"
}

output "service-account-name" {
  value       = google_service_account.this.name
  description = "The fully-qualified name of the service account"
}

output "service-account-display-name" {
  value       = google_service_account.this.display_name
  description = "The display name of the service account"
}


output "service-account-id" {
  value       = google_service_account.this.account_id
  description = "The account ID of the service account"
}

output "service-account-unique-id" {
  value       = google_service_account.this.unique_id
  description = "The unique ID of the service account"
}

output "composer-environment-name" {
  value       = google_composer_environment.this.name
  description = "The name of the Composer environment"
}
output "composer-environment-region" {
  value       = google_composer_environment.this.region
  description = "The region of the Composer environment"
}
output "composer-environment-project" {
  value       = google_composer_environment.this.project
  description = "The GCP Project ID where the Composer environment is created"
}

output "composer-environment-dag-gcs-prefix" {
  value       = google_composer_environment.this.config[0].dag_gcs_prefix
  description = "The GCS prefix for DAGs in the Composer environment"
}