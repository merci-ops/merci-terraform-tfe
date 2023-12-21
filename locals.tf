locals {
  project = {
    "merci-eci" = {
      description = "Example description of project"
    }
  }

  workspace = {
    "merci-tfe" = {
      description    = "Example automation workspace for Terraform Cloud resources."
      execution_mode = "remote"
      project_id     = module.project["merci-eci"].id
    }
  }
}
