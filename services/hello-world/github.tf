module "github_application" {
  source                  = "git::https://github.com/ntsedemoorg/terraform-github-repo.git"

  name = "hello-world"
  description = "Application code for the hello-world service"
}

module "github_infrastructure" {
  source                  = "git::https://github.com/ntsedemoorg/terraform-github-repo.git"

  name = "hello-world-infra"
  description = "Infrastructure code for the hello-world service"
}