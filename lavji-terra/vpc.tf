resource "google_compute_network" "vpc" {
  name                    = "terra-vpc"
  auto_create_subnetworks = false
}