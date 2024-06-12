terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 6.0"
    }
  }

  backend "s3" {
    bucket = "891377327213-eu-west-1-state"    
    key    = "service/github/state.tfstate"    
    region = "eu-west-1"
  }
}

provider "github" {
    owner = "ntsedemoorg"
}