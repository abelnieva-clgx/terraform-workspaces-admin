data "tfe_workspace_ids" "all" {
  names        = ["*"]
  organization = "Demo_abel_apps"
}

output "worksapce_ids" {
  value = data.tfe_workspace_ids.all.ids
}