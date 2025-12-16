# --- root/outputs.tf ---

output "google-project" {
  value       = google_project_service.this.project
  description = "The GCP Project ID where Composer is enabled"
}

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