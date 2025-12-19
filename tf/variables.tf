# --- root/variables.tf ---

variable "gcp-project-id" {
  type    = string
  default = "gcc-etl-pipeline-06902"
}

variable "gcp-region" {
  type    = string
  default = "us-central1"
}

variable "env-name" {
  type    = string
  default = "devl"
}