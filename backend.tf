terraform {
  cloud {
    organization = "merci"
    workspaces {
      name = "merci-tfe"
    }
  }
}
