# --- root/variables.tf ---

variable "gcp-project-id" {
  type    = string
  default = "gcc-etl-pipelines-06611"
}

variable "gcp-region" {
  type    = string
  default = "us-central1"
}

variable "env-name" {
  type    = string
  default = "devl"
}