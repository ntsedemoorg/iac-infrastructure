module "github_application" {
  source                  = "git::https://github.com/ntsedemoorg/terraform-github-repo.git"

  name = "hello-world"
  description = "application code for the hello-world service"
}

module "github_infrastructure" {
  source                  = "git::https://github.com/ntsedemoorg/terraform-github-repo.git"

  name = "hello-world-infra"
  description = "infrastructure code for the hello-world service"
}