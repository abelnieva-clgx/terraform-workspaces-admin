data "tfe_workspace_ids" "all" {
  names        = ["*"]
  organization = "exampleOrg"
}

output "worksapce_ids" {
  value = data.tfe_workspace_ids.all.ids
}