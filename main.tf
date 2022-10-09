terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 4.31.0"
    }
  }
}

data "github_repository" "repo" {
  full_name = var.repo
}

resource "github_actions_secret" "default" {
  for_each        = var.secrets
  repository      = data.github_repository.repo.id
  secret_name     = each.key
  plaintext_value = each.value
}
