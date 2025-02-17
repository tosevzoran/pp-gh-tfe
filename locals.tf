locals {
  projects = {
    "pp-gh" = {
      description = "Personal projects on Github"
    }
  }

  workspaces = {
    "pp-gh-tfe" = {
      description         = "TFE workspace for GH personal projects"
      project_id          = tfe_project.self["pp-gh"].id
      vcs_repo_identifier = "${var.github_organization_name}/pp-gh-tfe"
    }
    "pp-gh-repos" = {
      description         = "Workspace for managing repos"
      project_id          = tfe_project.self["pp-gh"].id
      vcs_repo_identifier = "${var.github_organization_name}/pp-gh-repos"
    }
    "pp-gh-do-droplets" = {
      description         = "Workspace for managing DigitalOcean droplets"
      project_id          = tfe_project.self["pp-gh"].id
      vcs_repo_identifier = "${var.github_organization_name}/pp-gh-do-droplets"
    }
    "pp-gh-dummy-ws" = {
      description         = "Workspace for managing DigitalOcean droplets"
      project_id          = tfe_project.self["pp-gh"].id
      vcs_repo_identifier = "${var.github_organization_name}/pp-gh-do-droplets"
    }
  }
}
