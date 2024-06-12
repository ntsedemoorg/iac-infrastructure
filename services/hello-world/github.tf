module "github_application" {
  source                  = "https://github.com/ntsedemoorg/terraform-github-repo.git"

  name = "hello-world"
  description = "application code for the hello-world service"
}

module "github_infrastructure" {
  source                  = "https://github.com/ntsedemoorg/terraform-github-repo.git"

  name = "hello-world-infra"
  description = "infrastructure code for the hello-world service"
}