module "github_application_front" {
  source                  = "git::https://github.com/ntsedemoorg/terraform-github-repo.git"

  name = "hello-world-front"
  description = "Application code for hello-world-front in the hello-world project"
}

module "github_application_api" {
  source                  = "git::https://github.com/ntsedemoorg/terraform-github-repo.git"

  name = "hello-world-api"
  description = "Application code for hello-world-api in the hello-world project"
}


module "github_infrastructure" {
  source                  = "git::https://github.com/ntsedemoorg/terraform-github-repo.git"

  name = "hello-world-infra"
  description = "Infrastructure code for the hello-world project"
}

moved {  
  from = module.github_application
  to = module.github_application_front
}

import {  
  to = module.github_infrastructure.github_repository.repository
  id = "hello-world-infra"
}
