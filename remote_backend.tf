terraform {
  backend "remote" {
    organization = "Demo_abel"

    workspaces {
      name = "terraform-workspaces-admin"
    }
  }
}