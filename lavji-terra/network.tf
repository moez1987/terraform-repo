resource "google_compute_network" "vpc" {
  name                    = "${var.project}-vpc"
  auto_create_subnetworks = "false"
}

resource "google_compute_subnetwork" "public_subnet" {
  name          = "${var.project}-public-subnet"
  ip_cidr_range = var.public_subnet_cidr
  network       = google_compute_network.vpc.name
  region        = var.region
}

resource "google_compute_subnetwork" "Dev_subnet" {
  name          = "${var.project}-dev-subnet"
  ip_cidr_range = var.dev_subnet
  network       = google_compute_network.vpc.name
  region        = var.region
}
