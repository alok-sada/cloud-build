terraform {
  required_version = ">=0.12.6"

  required_providers {
    google = {
      version = "~> 4.0"
    }
    null = {
      version = "~> 2.1"
    }
  }
}

variable "project_id" {
  description = "The project ID to host the network in"
  default = "ess-test-187417"
}

resource "google_compute_network" "vpc_network" {
  project                 = var.project_id # Replace this with your project ID in quotes
  name                    = "${var.project_id}-vpc-network"
  auto_create_subnetworks = true
  mtu                     = 1460
}