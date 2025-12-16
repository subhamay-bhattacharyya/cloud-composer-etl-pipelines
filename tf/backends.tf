# --- root/backend.tf ---

terraform {
  cloud {

    organization = "subhamay-bhattacharyya-projects"

    workspaces {
      name = "cloud-composer-etl-pipelines"
    }
  }
}