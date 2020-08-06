resource "tfe_workspace" "iam" {
  name              = "iam"
  organization      = tfe_organization.exampleOrg.id
  terraform_version = var.tfe12_version

  vcs_repo {
    identifier     = "exampleOrg/terraform-iam-abel-workspace"
    oauth_token_id = tfe_oauth_client.github.oauth_token_id 
  }
}