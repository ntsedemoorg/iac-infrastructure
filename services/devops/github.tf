module "bootstrap_s3_backend" {
  source                  = "git::https://github.com/ntsedemoorg/terraform-github-repo.git"

  name = "bootstrap-s3-backend"
  description = "Terraform module used to bootstrap an S3 backend in AWS"
}

import {  
  to = module.bootstrap_s3_backend.github_repository.repository
  id = "bootstrap-s3-backend"
}

module "terraform_github_repo" {
  source                  = "git::https://github.com/ntsedemoorg/terraform-github-repo.git"

  name = "terraform-github-repo"
  description = "Terraform module used to create and configure Github repositories"
}

import {  
  to = module.terraform_github_repo.github_repository.repository
  id = "terraform-github-repo"
}

module "iac_infrastructure" {
  source                  = "git::https://github.com/ntsedemoorg/terraform-github-repo.git"

  name = "iac-infrastructure"
  description = "Terraform configuration to provision and configure AWS / Azure accounts and Github repos"
}

import {  
  to = module.iac_infrastructure.github_repository.repository
  id = "iac-infrastructure"
}

module "github_repo_template" {
  source                  = "git::https://github.com/ntsedemoorg/terraform-github-repo.git"

  name = "github-repo-template"
  description = "Github repo used as a template for other Github repos"
  is_template = true
}