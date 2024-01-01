locals {
  project = {
    "merci" = {
      description = "Project for Merci"
    }
  }

  workspace = {
    "merci-tfe" = {
      description         = "Automation for TF cloud workspaces"
      execution_mode      = "remote"
      project_id          = module.project["merci"].id
      vcs_repo_identifier = "${var.github_organization_name}/merci-terraform-tfe"
    }

    # "merci-github-tfe" = {
    #   description         = "Example automation workspace for GitHub resources."
    #   execution_mode      = "local"
    #   project_id          = module.project["merci"].id
    #   vcs_repo_identifier = "${var.github_organization_name}/merci-terraform-github"
    # }
  }
}
