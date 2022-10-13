////////////Provider////////////////

terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "3.5.0"
    }
  }
}


provider "google" {
  credentials = file(var.credentials_file)
  project     =  var.project
  region      =  var.region
  zone        =  var.zone
}
////////////Provider///////////////



////Instance/////

resource "google_compute_instance" "vm_instance" {
  name         = "terraform-instance"
  machine_type = "n1-standard-1"

  boot_disk {
    initialize_params {
      image     =  "centos-7-v20180129" 
    }
  }

  network_interface {
    network = "default"
    subnetwork = "default"
    access_config {
    }
  }
}

////Instance/////
