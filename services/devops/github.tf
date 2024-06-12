module "bootstrap_s3_backend" {
  source                  = "git::https://github.com/ntsedemoorg/terraform-github-repo.git"

  name = "bootstrap-s3-backend"
  description = "Terraform module used to bootstrap an S3 backend in AWS"
}

import {  
  to = module.github_infrastructure.bootstrap_s3_backend.repository
  id = "bootstrap-s3-backend"
}

module "terraform_github_repo" {
  source                  = "git::https://github.com/ntsedemoorg/terraform-github-repo.git"

  name = "terraform-github-repo"
  description = "Terraform module used to create and configure Github repositories"
}

import {  
  to = module.github_infrastructure.terraform_github_repo.repository
  id = "terraform-github-repo"
}

module "iac_infrastructure" {
  source                  = "git::https://github.com/ntsedemoorg/terraform-github-repo.git"

  name = "iac-infrastructure"
  description = "Terraform configuration to provision and configure AWS / Azure accounts and Github repos"
}

import {  
  to = module.github_infrastructure.iac_infrastructure.repository
  id = "iac-infrastructure"
}