variable "project" {}

variable "credentials_file" {}

variable "region" {
  default = "us-central1"
}

variable "zone" {
  default = "us-central1-c"
}

variable "public_subnet_cidr" {
  type        = string
  description = "Public subnet CIDR"
}

variable "dev_subnet" {
  type        = string
  description = "Dev subnet CIDR"
}
