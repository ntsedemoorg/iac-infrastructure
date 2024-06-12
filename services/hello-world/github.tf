module "github_application" {
  source                  = "https://github.com/ntsedemoorg/terraform-github-repo.git"

  name = "hello-world"
  description = "hello-world service application code"
}

module "github_infrastructure" {
  source                  = "https://github.com/ntsedemoorg/terraform-github-repo.git"

  name = "hello-world-infra"
  description = "hello-world service infrastructure code"
}