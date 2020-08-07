resource "tfe_workspace" "demo_app-dev" {
  name              = "demo_app-dev"
  organization      = tfe_organization.exampleOrg.id
  terraform_version = var.tfe12_version
  working_directory = "demo_app-dev"
  vcs_repo {
    identifier     = "abelnieva-clgx/terraform-demo-apps"
    oauth_token_id = tfe_oauth_client.github.oauth_token_id 
  }
}