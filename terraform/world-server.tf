resource "google_cloudbuild_trigger" "mongers-world-server" {
  github {
    owner = "petomalina"
    name = "mongers"
    push {
      branch = "master"
    }
  }

  included_files = ["services/world/**"]

  filename = "services/world/ci/cloudbuild.yaml"
}

resource "google_cloud_run_service" "mongers-world" {
  name     = "mongers-world-server"
  location = "europe-west3"

  template {
    spec {
      containers {
        image = "us-docker.pkg.dev/cloudrun/container/hello"
      }
    }
  }

  traffic {
    percent         = 100
    latest_revision = true
  }
}
