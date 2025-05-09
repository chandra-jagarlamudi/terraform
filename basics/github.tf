terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 6.0"
    }
  }
}

# Configure the GitHub Provider
provider "github" {
  token = ""
}

resource "github_repository" "terraform" {
  name        = "terraform"
  description = "Repo for my terraform learning towards certification"

  visibility = "public"

}