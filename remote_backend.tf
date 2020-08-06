terraform {
  backend "remote" {
    organization = "Demo_abel_apps"

    workspaces {
      name = "terraform-workspaces-admin"
    }
  }
}