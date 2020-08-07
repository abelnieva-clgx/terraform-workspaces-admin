data "tfe_workspace_ids" "all" {
  names        = ["*"]
  organization = tfe_organization.exampleOrg.id
}

output "worksapce_ids" {
  value = data.tfe_workspace_ids.all.ids
}