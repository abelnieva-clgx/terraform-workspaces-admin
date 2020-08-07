resource "tfe_workspace" "demo_app-prod" {
  name              = "demo_app-prod"
  organization      = tfe_organization.exampleOrg.id
  terraform_version = var.tfe12_version
  working_directory = "demo_app-prod"
  vcs_repo {
    identifier     = "abelnieva-clgx/terraform-demo-apps"
    oauth_token_id = tfe_oauth_client.github.oauth_token_id 
  }
}