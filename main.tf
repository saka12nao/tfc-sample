variable "project" {}

provider "google" {
  project = var.project
}

resource "google_compute_instance" "default" {
  name         = "tfc-sample"
  machine_type = "e2-medium"
  zone         = "asia-northeast1-a"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    network = "default"
  }
}
