terraform {
  backend "remote" {
    organization = "exampleOrg"

    workspaces {
      name = "workspaces-mgmt"
    }
  }
}