module "github_application" {
  source                  = "git::https://github.com/ntsedemoorg/terraform-github-repo.git"

  name = "hello-world-front"
  description = "Application code for hello-world-front in the hello-world project"
}

module "github_application" {
  source                  = "git::https://github.com/ntsedemoorg/terraform-github-repo.git"

  name = "hello-world-api"
  description = "Application code for hello-world-api in the hello-world project"
}


module "github_infrastructure" {
  source                  = "git::https://github.com/ntsedemoorg/terraform-github-repo.git"

  name = "hello-world-infra"
  description = "Infrastructure code for the hello-world project"
}

import {  
  to = module.github_application.github_repository.repository
  id = "hello-world"
}

import {  
  to = module.github_infrastructure.github_repository.repository
  id = "hello-world-infra"
}
