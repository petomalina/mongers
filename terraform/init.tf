terraform {
  backend "gcs" {
    bucket = "mongers-tf-state"
  }
}

provider "google" {
  project = "mongers"
}

provider "google-beta" {
  project = "mongers"
}

resource "google_storage_bucket" "tf-state-bucket" {
  name = "mongers-tf-state"
  location = "EUROPE-WEST3"
  force_destroy = false

  uniform_bucket_level_access = true
}

resource "google_project" "mongers-project" {
  name = "mongers"
  project_id = "mongers"
  billing_account = "01D2CA-E2D577-C7C45C"
}

module "mongers-project-services" {
  source  = "terraform-google-modules/project-factory/google//modules/project_services"
  version = "10.1.1"

  project_id = "mongers"

  activate_apis = [
    "compute.googleapis.com",
    "iam.googleapis.com",
    "artifactregistry.googleapis.com",
    "run.googleapis.com",
    "cloudbuild.googleapis.com",
    "secretmanager.googleapis.com",
    "sourcerepo.googleapis.com",
    "dns.googleapis.com",
  ]
}

resource "google_artifact_registry_repository" "artifact_repository" {
  provider = google-beta
  project = google_project.mongers-project.project_id

  format = "DOCKER"
  repository_id = "mongers"
  location = "europe-west3"
  description = "repository for mongers docker images"
}