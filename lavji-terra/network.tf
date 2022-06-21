resource "google_compute_network" "vpc" {
  name = "${var.project}-vpc"
  auto_create_subnetworks = "false"
}

resource "google_compute_subnetwork" "public_subnet_1" {
  name          = "${var.project}-public-subnet-1"
  ip_cidr_range = var.public_subnet_cidr_1
  network       = google_compute_network.vpc.name
  region        = var.region
}
