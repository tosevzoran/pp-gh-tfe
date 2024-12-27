terraform {
  cloud {

    organization = "pp-org"

    workspaces {
      name = "pp-gh-repos"
    }
  }
}

