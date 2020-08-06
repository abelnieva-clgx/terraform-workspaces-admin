resource "tfe_organization" "exampleOrg" {
  name  = "Demo_abel"
  email = "exampleOrg@gmail.com"

  collaborator_auth_policy = "two_factor_mandatory"
}

resource "tfe_oauth_client" "github" {
  organization     = tfe_organization.exampleOrg.id
  api_url          = "https://api.github.com"
  http_url         = "https://github.com"
  oauth_token      = var.oauth_token_id
  service_provider = "github"
}