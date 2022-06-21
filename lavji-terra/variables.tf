variable "project" { }

variable "credentials_file" {}

variable "region" {
  default = "us-central1"
}

variable "zone" {
  default = "us-central1-c"
}

variable "public_subnet_cidr_1" {
  type        = string
  description = "Public subnet CIDR 1"
}
